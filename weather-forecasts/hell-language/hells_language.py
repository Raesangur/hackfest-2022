import random
import requests
import re
from hashlib import sha256
from base64 import b64encode


def generate_random_seed():
    """
    Generates a random seed from the weather data.
    :return:
    """
    # get the current Québec City weather data from Weather Canada
    weather_data = requests.get("https://weather.gc.ca/city/pages/qc-133_metric_e.html").text

    Pressure = float(re.findall(r"Pressure:.*\n.*>([0-9.]*)\s<.*kPa", weather_data)[0])
    Temperature = float(re.findall(r"Temperature:.*\n.*>([0-9.]*).<.*C", weather_data)[0])
    Dew_point = float(re.findall(r"Dew point:.*\n.*>([0-9.]*).<.*C", weather_data)[0])
    Humidity = float(re.findall(r"Humidity:.*\n.*>([0-9.]*)%<", weather_data)[0])
    Wind = float(re.findall(r"Wind:.*\n.*\n.*>\s([0-9.]*)\s<.*km/h", weather_data)[0])
    Visibility = float(re.findall(r"Visibility:.*\n.*>([0-9.]*)\s<.*km", weather_data)[0])

    """
    example of the weather data variables:
    Pressure: 101.9 kPa
    Temperature: 2.0 C
    Dew point: -1.0 C
    Humidity: 81%
    Wind: 0 km/h
    Visibility: 24 km
    """

    # generate a random seed from the weather data
    random_seed = int(Pressure * Temperature * Dew_point * Humidity * Wind * Visibility)

    # hashing the random seed 1 000 000 times
    # to prevent smart hackers from brute forcing the weather data
    for i in range(1000000):
        random_seed = sha256(str(random_seed).encode()).hexdigest()

    random.seed(random_seed)

    return


def encrypt(message: bytes) -> str:
    """
    Encrypts a message using a random key generated from the weather data.
    :param message: a message in bytes to encrypt
    :return: a base64 encoded string of the encrypted message
    """

    cipher = b""

    # initiate the random seed
    generate_random_seed()

    # for every 4 characters in the message
    for i in range(0, len(message), 4):
        block = ""

        # generate a 4 character key
        key = random.randrange(0x00000000, 0xffffffff)
        # change the key to bytes
        key = key.to_bytes(4, byteorder="big")
        print(key)

        # handle the last block
        if i + 4 > len(message):
            block = message[i:]

        # handle the rest of the blocks
        else:
            block = message[i:i + 4]

        assert len(block) == len(key)

        # encrypt the block
        block = bytes([block[i] ^ key[i] for i in range(len(block))])

        # add the encrypted block to the cipher
        cipher += block

    # encode the cipher in base64
    cipher = b64encode(cipher).decode()

    return cipher


if __name__ == "__main__":
    with open("message.txt", "r", encoding="utf8") as f:
        message = f.read().encode()

    with open("encrypted.txt", "w") as f:
        encrypted_message = encrypt(message)
        f.write(encrypted_message)

    print(f"Messsage: {message}")
    print(f"Encrypted message: {encrypt(message)}")