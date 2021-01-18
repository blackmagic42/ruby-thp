def ask_floor
    puts"veuillez entrer un nombre d'ètages pair et entre 1 et 25"
    floor=gets.to_i
    while floor.to_i == 0 || floor < 1 || floor > 25 || floor%2==0
        while true
            if floor.to_i == 0
                puts"votre caractères est soit trop petit ou un caractères"
                puts"veuillez saisir de nouveau "
                floor=gets.to_i
                break
            end
            if floor<1
                puts"votre chiffre est trop petit pour être afficher frero abuse pas non plus"
                puts"veuillez saisir de nouveau "
                floor=gets.to_i
                break
            end
            if floor>25
                puts"votre chiffre est trop grand pour êtres afficher frero abuse pas chu pas terminator non plus"
                puts"veuillez saisir de nouveau "
                floor=gets.to_i
                break
            end
            if floor%2==0
                puts"Je Prend que les chiffre pair ! chu désoler"
                puts"veuillez saisir de nouveau "
                floor=gets.to_i
                break
            end
        end
    end
    return floor
end

def build_floor(floor_number)
    var=floor_number/2-1
    for i in 0..floor_number/2
        puts" "*(floor_number-i)+"#"*i +"#"*(i+1)
    end
    while var!=-1
        puts" "*(floor_number-var)+"#"*var +"#"*(var+1)
        var-=1
    end
end

def pyramide_build
    build_floor(ask_floor)
    puts"Et voila votre pyramide"
end

pyramide_build


