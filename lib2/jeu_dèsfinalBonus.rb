$tab=["rez de chausser",1,2,3,4,5,6,7,8,9,10]
$nbr_lancer_win=0
$partie_gagnez=0
$partie_perdu=0
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

def rolling_dice
    dices =1+rand(6)
    puts"vous avez fait #{dices}"
    return dices
end

def analyze_dès(dice)
    if dice >=5
      puts "Vous avancez!"
      return 1
    elsif dice == 1
      puts "Vous reculez!"
      return -1
    else
      puts "rien ne se passe"
      return 0
    end
  end

def actual_step(var)
    puts"tu es à létages :#{$tab[var]}"
end

def message_bienvenue
    puts"tapez sur 'entrée' pour jouer"
    gets.chomp
    puts"bienvenue dans le jeu de dès à étages"
end

def message_win
    puts"bravo vous avez fini par gagnez a ce jeu !"
    puts"félicitation my bro tu peux être fier de toi\nà bientôt enfoirax"
end

def jeu_dès
    message_bienvenue
    etages=0
    nombre_lancer=0
    while etages!=10
        puts"veuillez lancez les dés"
        #insérez "getchar" pour que le jeu ne se déroule pas tout seul ( si tu fais ça et que tu laisse le nombre de partie lancer à 100 tu vas pleurer sache que jt'ai bien troll frero)
        dice=rolling_dice
        etages+=analyze_dès(dice)
        actual_step(etages)
        if etages==-1
            puts"Oh non vous avez perdue!\nNous sommes dans l'obligation de vous faire sorti du programme"
            $partie_perdu+=1
            return 
        end
        nombre_lancer+=1
    end
    message_win
    $nbr_lancer_win+=nombre_lancer
    $partie_gagnez+=1
end

def average_finish_time(nombre)
    for n in 0..nombre-1
        jeu_dès
        puts"fin de la #{n+1}em partie"
    end
    moyenne=$nbr_lancer_win/nombre.to_f
    puts"vous avez gagnez #{$partie_gagnez}"
    puts"vous avez perdue #{$partie_perdu}"
    print"la moyenne est de "
    return moyenne
end

print average_finish_time(100)+"\n"