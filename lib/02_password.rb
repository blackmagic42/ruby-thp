$var 
def signup
    puts"veuillez créé un mot de passe"
    return gets.chomp
end
def login
    puts"veuillez vous connectez !"
    log=gets.chomp
    while log!=$var
        puts"vous avez rentrez le mauvais mot de passe veuillez ressayer"
        log=gets.chomp
    end
end
def welcome
    puts
    puts"bienvenue dans la secrete zone my bro"
    puts"-------------------------------------"
    puts"voici les infos du jours sur les bro:"
    puts"tu pus vraiment du cul"
    puts"je sens que ça pu vraiment ça mère"
    puts"ce programme ne sert a rien"
end

def perform
    $var=signup
    login
    welcome
end
perform
