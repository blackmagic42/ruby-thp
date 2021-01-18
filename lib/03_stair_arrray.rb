$tab=["rez de chausser",1,2,3,4,5,6,7,8,9,10]
$dès
$nbr_lancer_win=0
#une fois lancer le programme doit être exécutez jusqu'au bout à bon entendeur salut :)
def getchar
    begin
        system("stty raw -echo")
        str = STDIN.getc
      ensure
        system("stty -raw echo")
      end
      p str.chr
end      

def jeu_dès
    puts"bienvenue dans le jeu de dès à étages"
    etages=0
    nombre_lancer=0
    while etages!=10
        puts"veuillez lancez les dés ( appuyez sur une touche)"
        #insérez "getchar" pour que le jeu ne se déroule pas tout seul ( si tu fais ça sache que jt'ai bien troll frero)
        $des =1+rand(6)
        puts"vous avez fait #{$des}"
        if $des==5 || $des==6
            etages+=1
            puts"bravo vous êtes au #{$tab[etages]}"
        end
        if $des==1
            etages-=1
            if etages==-1
                puts"Oh non vous avez perdue!\nNous sommes dans l'obligation de vous faire sorti du programme"
                return 
            end
            puts"Oh Non Vous redescendez d'un étages"
        end
        if $des==2 || $des==3 || $des==4
            puts"il ne se passe rien"
        end
        nombre_lancer+=1
        puts"#{nombre_lancer}"
    end
    puts"bravo vous avez fini par gagnez a ce jeu !"
    puts"félicitation my bro tu peux être fier de toi\nà bientôt enfoirax"
    $nbr_lancer_win+=nombre_lancer
end

def average_finish_time(nombre)
    for n in 0..nombre-1
        jeu_dès
        puts"fin de la #{n+1}em partie"
    end
    moyenne=$nbr_lancer_win/nombre.to_f
    print"la moyenne est de "
    return moyenne
end
print average_finish_time(100)
puts