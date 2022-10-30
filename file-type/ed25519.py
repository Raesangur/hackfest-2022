"""
this code is a cleaned version of http://ed25519.cr.yp.to/python/ed25519.py
for python3

code released under the terms of the GNU Public License v3, copyleft 2015
yoochan
"""
import collections
import os
import re
import warnings
import base64
from abc import ABC
from abc import abstractmethod
from base64 import b32encode
from base64 import b64encode
from hashlib import sha1
from hashlib import sha3_256
from hashlib import sha512
from typing import BinaryIO

from Crypto.PublicKey import RSA
from Crypto.Random import get_random_bytes

Point = collections.namedtuple("Point", ["x", "y"])


class Ed25519:
    """
    Generate public key from private key secret hash
    """

    length = 256

    def __init__(self):
        self.q = 2 ** 255 - 19
        self.l = 2 ** 252 + 27742317777372353535851937790883648493
        self.d = -121665 * self.inverse(121666)

        self.i = pow(2, (self.q - 1) // 4, self.q)

        self.B = self.point(4 * self.inverse(5))

    def from_bytes(self, h):
        """ pick 32 bytes, return a 256 bit int """
        return int.from_bytes(h[0 : self.length // 8], "little", signed=False)

    def to_bytes(self, k):
        return k.to_bytes(self.length // 8, "little", signed=False)

    def public_key_from_hash(self, hash):
        c = self.outer(self.B, int.from_bytes(str.encode(hash[:32]), "little"))
        return self.point_to_bytes(c)

    def inverse(self, x):
        return pow(x, self.q - 2, self.q)

    def recover(self, y):
        """ given a value y, recover the preimage x """
        p = (y * y - 1) * self.inverse(self.d * y * y + 1)
        x = pow(p, (self.q + 3) // 8, self.q)
        if (x * x - p) % self.q != 0:
            x = (x * self.i) % self.q
        if x % 2 != 0:
            x = self.q - x
        return x

    def point(self, y):
        """ given a value y, recover x and return the corresponding P(x, y) """
        return Point(self.recover(y) % self.q, y % self.q)

    def inner(self, P, Q):
        """ inner product on the curve, between two points """
        x = (P.x * Q.y + Q.x * P.y) * self.inverse(
            1 + self.d * P.x * Q.x * P.y * Q.y
        )
        y = (P.y * Q.y + P.x * Q.x) * self.inverse(
            1 - self.d * P.x * Q.x * P.y * Q.y
        )
        return Point(x % self.q, y % self.q)

    def outer(self, P, n):
        """ outer product on the curve, between a point and a scalar """
        if n == 0:
            return Point(0, 1)
        Q = self.outer(P, n // 2)
        Q = self.inner(Q, Q)
        if n & 1:
            Q = self.inner(Q, P)
        return Q

    def point_to_bytes(self, P):
        return (P.y + ((P.x & 1) << 255)).to_bytes(self.length // 8, "little")


#flag = base64.b64encode([0x2e, 0x18, 0x89, 0x72, 0x11, 0xe1, 0x1b, 0x7d, 0x0c, 0x5f, 0x5b, 0xf3, 0x82, 0x61, 0x8c, 0xaf, 0x81, 0xcf, 0x5e, 0x1f, 0x2b, 0x71, 0xdc, 0x97, 0xf2, 0x13, 0xb6, 0xa6, 0xa7, 0x8e, 0x8a, 0x56]).decode("utf-8")
#flag = base64.b64encode(bytearray(b'2e18897211e11b7d0c5f5bf382618caf81cf5e1f2b71dc97f213b6a6a78e8a56'))
#print(flag.decode("utf-8"))
#print(b64)

#https://gist.github.com/DonnchaC/d6428881f451097f329e
def calculate_onion(pem_key):
    key = RSA.importKey(pem_key)
    if key.has_private():
        key = key.publickey()

    onion_address = hashlib.sha1(key.exportKey('DER')).digest()[:10]
    return base64.b32encode(onion_address).decode('utf-8').lower()


# https://www.rfc-editor.org/rfc/rfc8032#section-5.1.5

is_this_bytes = b'568A8EA7A6B613F297DC712B1F5ECF81AF8C6182F35B5F0C7D1BE1117289182E00003D00203D653079702074633A6C6975622D70763131393535643220653D3D'
this_is_int = int.from_bytes(is_this_bytes, "little")
print(this_is_int)          # 0x4433443335363032323334363533353339333133313336373037443232363537393643364133333634373032303739373033353644333032303044333030303045323831393832373131314542314437433046354235334632383136433846413138464345354631423231374344373932463331364236413741453841383635

x_0 = this_is_int & 1
print(x_0)

y = this_is_int ^ x_0
print(y)


maybe = Ed25519().point(y)
print(maybe)



onion = calculate_onion("2e18897211e11b7d0c5f5bf382618caf81cf5e1f2b71dc97f213b6a6a78e8a56")
print(onion)
# Point(x=55791709889950619937755922318392293073289816202130349220461782058685625038008, y=54902975903475152449888348047386233986566104578426829263274549109828562281164)


