#C'est un démineur non fini en python
#Auteur : Hugo Joly
#Verion : 5
#Date de création : 27/01/2020
#Date de la derniére version : 14/02/2020
from tkinter import * #Il me donne des fonctionnalité grapfique
from random import randrange
import numpy as np

tlenght = 6 #Donne la taille tableau
tId = numpy.zeros((tlenght,tlenght)) #Créer un tableau en double dimension avec que des 0
#le principe du tableau en 2D est qu'il contiendra des valeurs entier qui auront chacun une signification
#0=rien 1= une mine proche 2=2 mine proche 3=3mine proche 10= une mine

tIdCpy = numpy.zeros((tlenght,tlenght)) #Créer un tableau en double dimension avec que des 0
#Il me permet non seulement de me dire ou sont les drapeau mais il me permet aussi de restreindre l'accés a l'utilisateur apres avoir perdu grace a différent valeur entier qui on leur signification
#30 = il y a un drapeau
#40 = il y a pas de drapeau
#20 = ne peut plus y avoir de drapeau
#50 = bloque l'accés au case

mine = 10    #Donne le nombre de mine
mineFind=0    #Compte le nombre de mine trouvé
tailleCarré = 50  #taille du carré
#Tableau qui récupere les coordonnées de chaque case
tCoord = []
x1, y1, x2, y2 = 0, 0, tailleCarré, tailleCarré # coordonnées du 1er carré

def plan ():
    global tId,tlenght,tIdCpy,mine
    tId=tId.ravel()                      #la fonction ravel() permet de mettre le tableau 2D en 1D
    for i in range(0,mine):
        tId[i]=10
    np.random.shuffle(tId)               #Mélange le tableau
    tId = tId.reshape(tlenght,tlenght) #La fonction reshape mets le tableau 1D en 2D
    #print(tId)
    mineCpt()#Il cherchera combien il y a de mine et l'indiquera
    
def mineCpt():
    for i in range(0,tlenght):
        for k in range(0,tlenght):
            if tId[i,k]!=10:
                #Pour le carré en haut a gauche du tableau a 2 dimension
                if (i==0)&(k==0):
                    cptMine = int(tId[i,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    tId[i,k] = cptMine
                #Pour la ligne du haut (sans le carré gauche et droit)du tableau a 2 dimension
                if (i==0)&(k!=0)&(k!=tlenght-1):
                    cptMine = int(tId[i,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    cptMine = cptMine + int(tId[i+1,k-1]/10)
                    cptMine = cptMine + int(tId[i,k-1]/10)
                    tId[i,k] = cptMine
                #Pour le carré en haut a droit du tableau a 2 dimension
                if (i==0)&(k==tlenght-1):
                    cptMine = int(tId[i,k-1]/10)
                    cptMine = cptMine + int(tId[i+1,k-1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    tId[i,k] = cptMine
                #Pour la ligne de droite (sans le carré haut et bas)du tableau a 2 dimension
                if (i!=0)&(k==tlenght-1)&(i!=tlenght-1):
                    cptMine = int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k-1]/10)
                    cptMine = cptMine + int(tId[i,k-1]/10)
                    cptMine = cptMine + int(tId[i+1,k-1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    tId[i,k] = cptMine
                #Pour le carré en bas a droit du tableau a 2 dimension
                if (i==tlenght-1)&(k==tlenght-1):
                    cptMine = int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k-1]/10)
                    cptMine = cptMine + int(tId[i,k-1]/10)
                    tId[i,k] = cptMine
                #Pour la ligne du bas (sans le carré gauche et droite)du tableau a 2 dimension
                if (i==tlenght-1)&(k!=0)&(k!=tlenght-1):
                    cptMine = int(tId[i,k-1]/10)
                    cptMine = cptMine + int(tId[i-1,k-1]/10)
                    cptMine = cptMine + int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k+1]/10)
                    cptMine = cptMine + int(tId[i,k+1]/10)
                    tId[i,k] = cptMine
                #Pour le carré en bas a gauche du tableau a 2 dimension
                if (i==tlenght-1)&(k==0):
                    cptMine = int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k+1]/10)
                    cptMine = cptMine + int(tId[i,k+1]/10)
                    tId[i,k] = cptMine
                #Pour la ligne de gauche (sans le carré haut et bas)du tableau a 2 dimension
                if (i!=0)&(k==0)&(i!=tlenght-1):
                    cptMine = int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k+1]/10)
                    cptMine = cptMine + int(tId[i,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    tId[i,k] = cptMine
                #Pour tout les carrées au milieu du tableau a 2 dimension
                if (i!=0)&(k!=0)&(i!=tlenght-1)&(k!=tlenght-1):
                    cptMine = int(tId[i-1,k]/10)
                    cptMine = cptMine + int(tId[i-1,k+1]/10)
                    cptMine = cptMine + int(tId[i,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k+1]/10)
                    cptMine = cptMine + int(tId[i+1,k]/10)
                    cptMine = cptMine + int(tId[i+1,k-1]/10)
                    cptMine = cptMine + int(tId[i,k-1]/10)
                    cptMine = cptMine + int(tId[i-1,k-1]/10)
                    tId[i,k] = cptMine
            tIdCpy[i,k] = 40
            
#Création du cadriage du démineur
def case ():
    global x1,x2,y1,y2,tCoord,chaine,tId,tlenght
    for i in range(0,tlenght):
        for k in range(0,tlenght):
            can1.create_rectangle(x1,y1,x2,y2,fill='darkgrey')
            #On récupére les coordonnées de chaque rectangle
            tCoord = tCoord + [[x1,y1,x2,y2]]
            x1 = x1+tailleCarré
            x2 = x2+tailleCarré   
        x1=0
        x2=tailleCarré
        y1 = y1+tailleCarré
        y2 = y2+tailleCarré
        
def clickGauche(event):
    global tIdCpy
    valretour = 0      #Il passe a 1 si il trouve le carré cliquer
    valeurX = event.x  #Coordonnée en x du clique
    valeurY = event.y  #Coordonnée en y du clique
    i=0                #Compte les carrées tester
    #Index du tableau a double dimension
    cptX=0           
    cptY=0             
    
    #Jusqu'à ce qu'on trouve le carré sur lequel on a cliqué
    while (valretour != 1):
        
        #Si on click sur le bon carré
        if (valeurX>tCoord[i][0])&(valeurX<=tCoord[i][2])&(valeurY>tCoord[i][1])&(valeurY<=tCoord[i][3]):
            valretour = 1
            #Cette condition permet de lier les 2 tableaux malgré qu'il soit pas sur la meme dimension
            if i>tlenght-1:
                cptX = i%tlenght      
                cptY=int(i/tlenght)
            else:
                cptX=i
            #On peut pas cliquer sur un drapeau et quand on perd l'accés est refusé     
            if (tIdCpy[cptY,cptX]!=30)&(tIdCpy[cptY,cptX]!=50):
                    #On affiche en gris clair un carré lors du click
                can1.create_rectangle(tCoord[i][0],tCoord[i][1],tCoord[i][2],tCoord[i][3],fill='lightgrey')
                tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                #1,2,3,4,5 signifie qu'il y a des mines proche donc on le signale
                if tId[cptY,cptX] == 1:
                    can1.create_text(tCoord[i][0]+tailleCarré/2, tCoord[i][1]+tailleCarré/2,text="1", font="Arial 20 italic", fill="blue")
                    tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                if tId[cptY,cptX] == 2:
                    can1.create_text(tCoord[i][0]+tailleCarré/2, tCoord[i][1]+tailleCarré/2,text="2", font="Arial 20 italic", fill="green")
                    tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                if tId[cptY,cptX] == 3:
                    can1.create_text(tCoord[i][0]+tailleCarré/2, tCoord[i][1]+tailleCarré/2,text="3", font="Arial 20 italic", fill="red")
                    tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                if tId[cptY,cptX] == 4:
                    can1.create_text(tCoord[i][0]+tailleCarré/2, tCoord[i][1]+tailleCarré/2,text="4", font="Arial 20 italic", fill="darkred")
                    tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                if tId[cptY,cptX] == 5:
                    can1.create_text(tCoord[i][0]+tailleCarré/2, tCoord[i][1]+tailleCarré/2,text="5", font="Arial 20 italic", fill="black")
                    tIdCpy[cptY,cptX]=20 #20 signifie qu'il ne peut pas y avoir de drapeau
                #10 est la mine qui nous dit qu'on a perdu
                if tId[cptY,cptX] == 10:
                    can1.create_rectangle(tCoord[i][0],tCoord[i][1],tCoord[i][2],tCoord[i][3],fill='black')
                    can1.create_text((tlenght*tailleCarré)/2, (tlenght*tailleCarré)/2,text="LOOSER", font="Arial 30 italic", fill="black")
                    #Toute les case sont mise a 50 pour bloquer l'accés
                    for i in range(0,tlenght):
                        for k in range(0,tlenght):
                            tIdCpy[i,k]=50
                            
                        
                    
        i=i+1

def clickDroit (event):
    global tIdCpy,mineFind
    valretour = 0      #Il passe a 1 si il trouve le carré cliquer
    valeurX = event.x  #Coordonnée en x du clique
    valeurY = event.y  #Coordonnée en y du clique
    i=0                #Compte les carrées tester
    #Index du tableau a double dimension
    cptX=0           
    cptY=0
    #Jusqu'à ce qu'on trouve le carré sur lequel on a cliqué
    while (valretour != 1):
        #Si on click sur le bon carré
        if (valeurX>tCoord[i][0])&(valeurX<=tCoord[i][2])&(valeurY>tCoord[i][1])&(valeurY<=tCoord[i][3]):
            valretour = 1
            #Cette condition permet de lier les 2 tableaux malgré qu'il soit pas sur la meme dimension
            if i>tlenght-1:
                cptX = i%tlenght
                
                cptY=int(i/tlenght)
            else:
                cptX=i
                
            if tIdCpy[cptY,cptX] != 20: #20 signifie qu'il ne peut pas y avoir de drapeau
   
                if tIdCpy[cptY,cptX] == 30: #30 signifie qu'il y a un drapeau
                    tIdCpy[cptY,cptX] = 40 #40 signifie qu'il n'a pas de drapeau
                    if tId[cptY,cptX]==10:
                        mineFind=mineFind-1
                    can1.create_rectangle(tCoord[i][0],tCoord[i][1],tCoord[i][2],tCoord[i][3],fill='darkgrey')
                elif tIdCpy[cptY,cptX] == 40:
                    tIdCpy[cptY,cptX] = 30
                    if tId[cptY,cptX]==10:
                        mineFind=mineFind+1
                    if mineFind==mine:
                        can1.create_text((tlenght*tailleCarré)/2, (tlenght*tailleCarré)/2,text="WINNER", font="Arial 30 italic", fill="black")
                    can1.create_polygon(tCoord[i][0]+tailleCarré*0.9,tCoord[i][1]+tailleCarré*0.1,tCoord[i][2]-tailleCarré*0.1,tCoord[i][3]-tailleCarré*0.1,tCoord[i][0]+tailleCarré*0.1,tCoord[i][1]+tailleCarré/2,fill='red')
        i=i+1
    
fen1=Tk()
can1=Canvas(fen1,bg="white",height=tlenght*tailleCarré,width=tlenght*tailleCarré)
can1.bind("<Button-1>", clickGauche)
can1.bind("<Button-3>", clickDroit)
can1.pack()
case()
plan()
chaine = Label(fen1)
chaine.pack()
fen1.mainloop()
fen1.destroy()    



