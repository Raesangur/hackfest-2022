#NOTE: There is no need to tamper with the code.
#Tampering with the code can result in the generation
#of an incorrect flag.

import re
import pygame
import random
import json
import hashlib
import time
import math

WIDTH, HEIGHT = 900, 500
WIN = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("BenchingInPack")
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)

OBJECT_WIDTH = 100
OBJECT_HEIGHT = 100

VEL = 10

CHARACTER = pygame.image.load("Assets/character1.png")
FLAME = pygame.image.load("Assets/flame.png")
FLAG = pygame.image.load("Assets/flag.png")

def draw_window(character, flag, b1, b1_sized, b2, b2_sized, b3, b3_sized, b4, b4_sized, b5, b5_sized, b6, b6_sized, b7, b7_sized, b8, b8_sized, b9, b9_sized, b10, b10_sized, b11, b11_sized, b12, b12_sized, b13, b13_sized, b14, b14_sized, b15, b15_sized, b16, b16_sized, b17, b17_sized, b18, b18_sized, b19, b19_sized, b20, b20_sized, b21, b21_sized, b22, b22_sized, b23, b23_sized, b24, b24_sized, b25, b25_sized):
    
    WIN.fill(WHITE)
    WIN.blit(CHARACTER, (character.x, character.y))
    WIN.blit(FLAG, (flag.x, flag.y))
    WIN.blit(b1_sized, (b1.x, b1.y))
    WIN.blit(b2_sized, (b2.x, b2.y))
    WIN.blit(b3_sized, (b3.x, b3.y))
    WIN.blit(b4_sized, (b4.x, b4.y))
    WIN.blit(b5_sized, (b5.x, b5.y))
    WIN.blit(b6_sized, (b6.x, b6.y))
    WIN.blit(b7_sized, (b7.x, b7.y))
    WIN.blit(b8_sized, (b8.x, b8.y))
    WIN.blit(b9_sized, (b9.x, b9.y))
    WIN.blit(b10_sized, (b10.x, b10.y))
    WIN.blit(b11_sized, (b11.x, b11.y))
    WIN.blit(b12_sized, (b12.x, b12.y))
    WIN.blit(b13_sized, (b13.x, b13.y))
    WIN.blit(b14_sized, (b14.x, b14.y))
    WIN.blit(b15_sized, (b15.x, b15.y))
    WIN.blit(b16_sized, (b16.x, b16.y))
    WIN.blit(b17_sized, (b17.x, b17.y))
    WIN.blit(b18_sized, (b18.x, b18.y))
    WIN.blit(b19_sized, (b19.x, b19.y))
    WIN.blit(b20_sized, (b20.x, b20.y))
    WIN.blit(b21_sized, (b21.x, b21.y))
    WIN.blit(b22_sized, (b22.x, b22.y))
    WIN.blit(b23_sized, (b23.x, b23.y))
    WIN.blit(b24_sized, (b24.x, b24.y))
    WIN.blit(b25_sized, (b25.x, b25.y))
    pygame.display.update()

def main():

    pygame.init()
    character = pygame.Rect(400, 390, OBJECT_WIDTH, OBJECT_HEIGHT)
    flag = pygame.Rect(10, 10, OBJECT_WIDTH, OBJECT_HEIGHT)

    seed, data, warn, displayflag = SeedSelect()

    #songs = ["Assets/Music/Schroit/A Hair For A Hair.mp3",
    #        "Assets/Music/Schroit/Copper Wires - Flifmille.mp3",
    #        "Assets/Music/Schroit/CrimsonColosus - Yoyo wiggins.mp3",
    #        "Assets/Music/Schroit/Fromage_lane - Pattywack.mp3",
    #        "Assets/Music/Schroit/Inferno - Mint Miracle.mp3",
    #        "Assets/Music/Schroit/Midlife_Osmosis.mp3",
    #        "Assets/Music/Schroit/One_For_The_Road - Mint Miracle.mp3",
    #        "Assets/Music/Schroit/Siabees_Twins - Pattywack.mp3",
    #        "Assets/Music/Schroit/Stephens_Apocalypse - Yoyo wiggins.mp3",
    #        "Assets/Music/Schroit/The Futility Of Looking Both Ways - Flifmille.mp3",
    #        "Assets/Music/Pop/Spring In My Step Silent Partner.mp3"
    #]

    #pygame.mixer.music.load(random.choice(songs))
    #pygame.mixer.music.play(-1)

    if seed:

        class Seeding():

                def __init__(self, width, height, x, y):

                        width = int(seed["w"])
                        height = int(seed["h"])
                        x = int(seed["x"])
                        y = int(seed["y"])

                        spice = random.randrange(0,1)
                        
                        eXtra_spice = random.randrange(0, 450)
                        extra_spYce = random.randrange(0, 100)

                        if width < 200:
                                self.width = 200
                        else:
                                self.width = width

                        if height < 100:
                                self.height = 100
                        else:
                                self.height = height

                        if x not in range(430,470):
                                self.x = random.randrange(0, 900)
                        else:
                            if spice == 0:
                                self.x = eXtra_spice + x
                            else:
                                self.x = x - eXtra_spice
                        
                        if y not in range(180,220):
                                self.y = random.randrange(100, 200)
                        else:
                            if spice == 1:
                                self.y = extra_spYce + y
                            else: 
                                self.y = y - extra_spYce

        f = open("main.py","r")
        hfFlag = hashlib.md5(bytes(str(data)+str(f.readlines()), 'utf-8'))

        b1_seed = Seeding('width', 'height', 'x', 'y')
        b1_sized = pygame.transform.scale(FLAME,(b1_seed.width,b1_seed.height))
        b1 = b1_sized.get_rect(topright = (b1_seed.x,b1_seed.y))

        b2_seed = Seeding('width', 'height', 'x', 'y')
        b2_sized = pygame.transform.scale(FLAME,(b2_seed.width,b2_seed.height))
        b2 = b2_sized.get_rect(topright = (b2_seed.x,b2_seed.y))

        b3_seed = Seeding('width', 'height', 'x', 'y')
        b3_sized = pygame.transform.scale(FLAME,(b3_seed.width,b3_seed.height))
        b3 = b3_sized.get_rect(topright = (b3_seed.x,b3_seed.y))

        b4_seed = Seeding('width', 'height', 'x', 'y')
        b4_sized = pygame.transform.scale(FLAME,(b4_seed.width,b4_seed.height))
        b4 = b4_sized.get_rect(topright = (b4_seed.x,b4_seed.y))

        b5_seed = Seeding('width', 'height', 'x', 'y')
        b5_sized = pygame.transform.scale(FLAME,(b5_seed.width,b5_seed.height))
        b5 = b5_sized.get_rect(topright = (b5_seed.x,b5_seed.y))
        
        b6_seed = Seeding('width', 'height', 'x', 'y')
        b6_sized = pygame.transform.scale(FLAME,(b6_seed.width,b6_seed.height))
        b6 = b6_sized.get_rect(topright = (b6_seed.x,b6_seed.y))

        b7_seed = Seeding('width', 'height', 'x', 'y')
        b7_sized = pygame.transform.scale(FLAME,(b7_seed.width,b7_seed.height))
        b7 = b7_sized.get_rect(topright = (b7_seed.x,b7_seed.y))

        b8_seed = Seeding('width', 'height', 'x', 'y')
        b8_sized = pygame.transform.scale(FLAME,(b8_seed.width,b8_seed.height))
        b8 = b8_sized.get_rect(topright = (b8_seed.x, b8_seed.y))

        b9_seed = Seeding('width', 'height', 'x', 'y')
        b9_sized = pygame.transform.scale(FLAME,(b9_seed.width,b9_seed.height))
        b9 = b9_sized.get_rect(topright = (b9_seed.x,b9_seed.y))

        b10_seed = Seeding('width', 'height', 'x', 'y')
        b10_sized = pygame.transform.scale(FLAME,(b10_seed.width,b10_seed.height))
        b10 = b10_sized.get_rect(topright = (b10_seed.x, b10_seed.y))

        b11_seed = Seeding('width', 'height', 'x', 'y')
        b11_sized = pygame.transform.scale(FLAME,(b11_seed.width,b11_seed.height))
        b11 = b11_sized.get_rect(topright = (b11_seed.x,b11_seed.y))

        b12_seed = Seeding('width', 'height', 'x', 'y')
        b12_sized = pygame.transform.scale(FLAME,(b12_seed.width,b12_seed.height))
        b12 = b12_sized.get_rect(topright = (b12_seed.x,b12_seed.y))

        b13_seed = Seeding('width', 'height', 'x', 'y')
        b13_sized = pygame.transform.scale(FLAME,(b13_seed.width,b13_seed.height))
        b13 = b13_sized.get_rect(topright = (b13_seed.x,b13_seed.y))

        b14_seed = Seeding('width', 'height', 'x', 'y')
        b14_sized = pygame.transform.scale(FLAME,(b14_seed.width,b14_seed.height))
        b14 = b14_sized.get_rect(topright = (b14_seed.x,b14_seed.y))

        b15_seed = Seeding('width', 'height', 'x', 'y')
        b15_sized = pygame.transform.scale(FLAME,(b15_seed.width,b15_seed.height))
        b15 = b15_sized.get_rect(topright = (b15_seed.x,b15_seed.y))
        
        b16_seed = Seeding('width', 'height', 'x', 'y')
        b16_sized = pygame.transform.scale(FLAME,(b16_seed.width,b16_seed.height))
        b16 = b16_sized.get_rect(topright = (b16_seed.x,b16_seed.y))

        b17_seed = Seeding('width', 'height', 'x', 'y')
        b17_sized = pygame.transform.scale(FLAME,(b17_seed.width,b17_seed.height))
        b17 = b17_sized.get_rect(topright = (b17_seed.x,b17_seed.y))

        b18_seed = Seeding('width', 'height', 'x', 'y')
        b18_sized = pygame.transform.scale(FLAME,(b18_seed.width,b18_seed.height))
        b18 = b18_sized.get_rect(topright = (b18_seed.x, b18_seed.y))

        b19_seed = Seeding('width', 'height', 'x', 'y')
        b19_sized = pygame.transform.scale(FLAME,(b19_seed.width,b19_seed.height))
        b19 = b19_sized.get_rect(topright = (b19_seed.x,b19_seed.y))

        b20_seed = Seeding('width', 'height', 'x', 'y')
        b20_sized = pygame.transform.scale(FLAME,(b20_seed.width,b20_seed.height))
        b20 = b20_sized.get_rect(topright = (b20_seed.x, b20_seed.y))

        b21_seed = Seeding('width', 'height', 'x', 'y')
        b21_sized = pygame.transform.scale(FLAME,(b21_seed.width,b21_seed.height))
        b21 = b21_sized.get_rect(topright = (b21_seed.x, b21_seed.y))

        b22_seed = Seeding('width', 'height', 'x', 'y')
        b22_sized = pygame.transform.scale(FLAME,(b22_seed.width,b22_seed.height))
        b22 = b22_sized.get_rect(topright = (b22_seed.x, b22_seed.y))
        
        b23_seed = Seeding('width', 'height', 'x', 'y')
        b23_sized = pygame.transform.scale(FLAME,(b23_seed.width,b23_seed.height))
        b23 = b23_sized.get_rect(topright = (b23_seed.x, b23_seed.y))

        b24_seed = Seeding('width', 'height', 'x', 'y')
        b24_sized = pygame.transform.scale(FLAME,(b24_seed.width,b24_seed.height))
        b24 = b24_sized.get_rect(topright = (b24_seed.x, b24_seed.y))

        b25_seed = Seeding('width', 'height', 'x', 'y')
        b25_sized = pygame.transform.scale(FLAME,(b25_seed.width,b25_seed.height))
        b25 = b25_sized.get_rect(topright = (b25_seed.x, b25_seed.y))

    run = True
    while run:

        for event in pygame.event.get():

            if event.type == pygame.QUIT:
                run = False

            win = True #pygame.Rect.colliderect(character, flag)
            warn = False
            collide1 = pygame.Rect.colliderect(character, b1)
            collide2 = pygame.Rect.colliderect(character, b2)
            collide3 = pygame.Rect.colliderect(character, b3)
            collide4 = pygame.Rect.colliderect(character, b4)
            collide5 = pygame.Rect.colliderect(character, b5)
            collide6 = pygame.Rect.colliderect(character, b6)
            collide7 = pygame.Rect.colliderect(character, b7)
            collide8 = pygame.Rect.colliderect(character, b8)
            collide9 = pygame.Rect.colliderect(character, b9)
            collide10 = pygame.Rect.colliderect(character, b10)
            collide11 = pygame.Rect.colliderect(character, b11)
            collide12 = pygame.Rect.colliderect(character, b12)
            collide13 = pygame.Rect.colliderect(character, b13)
            collide14 = pygame.Rect.colliderect(character, b14)
            collide15 = pygame.Rect.colliderect(character, b15)
            collide16 = pygame.Rect.colliderect(character, b16)
            collide17 = pygame.Rect.colliderect(character, b17)
            collide18 = pygame.Rect.colliderect(character, b18)
            collide19 = pygame.Rect.colliderect(character, b19)
            collide20 = pygame.Rect.colliderect(character, b20)
            collide21 = pygame.Rect.colliderect(character, b21)
            collide22 = pygame.Rect.colliderect(character, b22)
            collide23 = pygame.Rect.colliderect(character, b23)
            collide24 = pygame.Rect.colliderect(character, b24)
            collide25 = pygame.Rect.colliderect(character, b25)

            if win:

                character.x = 400
                character.y = 390

                hfFlag = hfFlag.hexdigest()

                while warn == True:
                    msg = "Are you cheating? Try something else.."
                    text_box = pygame.Rect(250, 210, 410,40)
                    color = pygame.Color('lightskyblue3')
                    pygame.draw.rect(WIN, color, text_box)
                    text_surface = pygame.font.Font(None,32).render(msg, True,(BLACK))
                    WIN.blit(text_surface, text_box)
                    pygame.display.update()
                    time.sleep(15)
                    exit()

                while displayflag == True:
                    text_box = pygame.Rect(250, 210, 430,40)
                    color = pygame.Color('lightskyblue3')
                    pygame.draw.rect(WIN, color, text_box)
                    text_surface = pygame.font.Font(None,32).render("HF-"+hfFlag, True,(BLACK))
                    WIN.blit(text_surface, text_box)
                    pygame.display.update()
                    print("Flag: HF-"+hfFlag)
                    time.sleep(15)
                    displayflag = False

            if collide1:
                character.x = 400
                character.y = 390

            if collide2:
                character.x = 400
                character.y = 390

            if collide3:
                character.x = 400
                character.y = 390

            if collide4:
                character.x = 400
                character.y = 390

            if collide5:
                character.x = 400
                character.y = 390

            if collide6:
                character.x = 400
                character.y = 390

            if collide7:
                character.x = 400
                character.y = 390

            if collide8:
                character.x = 400
                character.y = 390

            if collide9:
                character.x = 400
                character.y = 390

            if collide10:
                character.x = 400
                character.y = 390

            if collide11:
                character.x = 400
                character.y = 390

            if collide12:
                character.x = 400
                character.y = 390

            if collide13:
                character.x = 400
                character.y = 390

            if collide14:
                character.x = 400
                character.y = 390

            if collide15:
                character.x = 400
                character.y = 390

            if collide16:
                character.x = 400
                character.y = 390

            if collide17:
                character.x = 400
                character.y = 390

            if collide18:
                character.x = 400
                character.y = 390

            if collide19:
                character.x = 400
                character.y = 390

            if collide20:
                character.x = 400
                character.y = 390

            if collide21:
                character.x = 400
                character.y = 390

            if collide22:
                character.x = 400
                character.y = 390

            if collide23:
                character.x = 400
                character.y = 390

            if collide24:
                character.x = 400
                character.y = 390

            if collide25:
                character.x = 400
                character.y = 390
            
            draw_window(character, flag, b1, b1_sized, b2, b2_sized, b3, b3_sized, b4, b4_sized, b5, b5_sized, b6, b6_sized, b7, b7_sized, b8, b8_sized, b9, b9_sized, b10, b10_sized, b11, b11_sized, b12, b12_sized, b13, b13_sized, b14, b14_sized, b15, b15_sized, b16, b16_sized, b17, b17_sized, b18, b18_sized, b19, b19_sized, b20, b20_sized, b21, b21_sized, b22, b22_sized, b23, b23_sized, b24, b24_sized, b25, b25_sized)

            keys_pressed = pygame.key.get_pressed()
            if keys_pressed[pygame.K_a] and character.x - VEL > 0: # LEFT
                character.x -= VEL

            if keys_pressed[pygame.K_d] and character.x + VEL + OBJECT_WIDTH < 900: # RIGHT
                character.x += VEL

            if keys_pressed[pygame.K_w] and character.y - VEL > 0: # UP
                character.y -= VEL

            if keys_pressed[pygame.K_s] and character.y + VEL + OBJECT_HEIGHT < 500: # DOWN
                character.y += VEL

    pygame.quit()

def SeedSelect():

        warn = True
        displayFlag = False

        print("Integrating seedfile...")

        file = open("seed.txt","r")
        data = file.readline()

        decode = []
        for i in range(len(data)):
                encoded = ord(data[i])
                if encoded >= 33 and encoded <= 126:
                        decode.append(chr(33 + ((encoded + 14) % 94)))
                else:
                        decode.append(data[i])

        seed = json.loads(''.join(decode))

        try:
            if int(seed["w"]) > 0 and int(seed["h"]) > 0 and int(seed["x"]) > 0 and int(seed["y"]) > 0:

                seed_w = (float(seed["w"]))
                seed_h = (float(seed["h"]))
                seed_x = (float(seed["x"]))
                seed_y = (float(seed["y"]))

            else:
                print("Each seed value must be greater than 0")
                seed = {}
                exit()

        except ValueError:
                print("{} is not a valid seed, please try again".format(seed))
                exit()

        factor=seed["f"]

        factor = re.sub("pygame|re|base64|json|hashlib|time|math|ord|len|round|int|[0-9]|;|{|}|!|\$|~|`|'|@|#|%|\^|&|>|<|:|,|\]|\[|\|","",factor)

        try:

            factor = eval(factor)

            if 0.1 > factor >= 0.01:
                print("Factor is too small")
                factor = factor+0.1

            seed_w = (seed_w - ((factor)*seed_w) % seed_w) * 1.5
            seed_h = (seed_h - ((factor)*seed_h) % seed_h) * 1.5
            seed_x = (seed_x - ((factor)*seed_x) % seed_x) * 1.5
            seed_y = (seed_y - ((factor)*seed_y) % seed_y) * 1.5

            seed["w"] = seed_w
            seed["h"] = seed_h
            seed["x"] = seed_x
            seed["y"] = seed_y

            factor_data = re.findall("(?<=7QiQ).{30}", data)
            if factor_data:

                factor_data = str(factor_data).replace("['", "").replace("']", "")

                class nodups:
                    def __init__(self):
                        self.new_s = ""
                        self.prev = ""
                        for c in factor_data:
                            if len(self.new_s) == 0:
                                self.new_s += c
                                self.prev = c
                            if c == self.prev:
                                continue
                            else:
                                self.new_s += c
                                self.prev = c
                nd = nodups()
                f_data = nd.new_s

                check = [1,2,4,16,21,22,25]
                check1 = [0,8]
                check2 = [9,23]

                res = []
                for ele in check:
                    res.append(ord(factor_data[ele])/2)

                comp = int(sum(res))

                if factor_data != f_data:

                    res1 = []
                    for ele in check1:
                        res1.append(ord(f_data[ele]))
                            
                    check_val = int(sum(res1))

                    res2 = []
                    for ele in check2:
                        res2.append(ord(f_data[ele]))

                    extra_check = int(sum(res2))

                    comp = int(check_val/(extra_check/10)+comp)

                avg = math.ceil((seed_w+seed_h+seed_x+seed_y)/4)

                coordXfactor = []
                if avg in range(comp-10,comp+10):
                    f_data = list(f_data)
                    e =0
                    warn = False
                    displayFlag = True
                    for ele in f_data:
                        if e%2 == 0:
                            coordXfactor.append(comp*(ord(ele)))
                            e=e+1
                        else:
                            e=e+1
                    data = str(coordXfactor)

        except:
            print("Nice try but this won't eval.")
            exit()

        try:
            factor
            return seed, data, warn, displayFlag
        except:
            if seed_x in range(250,650):
                seed["x"] = random.randrange(0,900)
                return seed, data, warn, displayFlag
            else:
                return seed, data, warn, displayFlag

if __name__ == "__main__":
    main()
