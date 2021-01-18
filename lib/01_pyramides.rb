def pyramide_descendante(taille)
    taille.to_i
    while taille <1 && taille>25
        puts"veuillez entrez un nombre entre 1 et 25"
    end
    for n in 0..taille
        puts"#"*n
    end
end

def pyramide_montante(taille)
    taille.to_i
    while taille <1 && taille>25
        puts"veuillez entrez un nombre entre 1 et 25"
    end
    for n in 0..taille
        puts" "*(taille-n)+"#"*n
    end
end

def pyramide_ramces(taille)
    taille.to_i
    while taille <1 || taille>25 || taille%2==0
        puts"veuillez entrez un nombre impair entre 1 et 25"
        taille=gets.to_i
    end
    for n in 0..taille-1
        puts" "*(taille-n)+"#"*n +"#"*(n+1)
    end
end

def pyramide_ramces1(taille)
    taille.to_i
    while taille <1 || taille>25 || taille%2==0
        puts"veuillez entrez un nombre impair entre 1 et 25"
        taille=gets.to_i
    end
    var=(taille/2)-1
    puts"var = #{var}"
    for n in 0..(taille/2)
        puts" "*(taille-n)+"#"*n +"#"*(n+1)
    end
    while var !=-1
        puts" "*(taille-var)+"#"*var +"#"*(var+1)
        var-=1
    end
end

pyramide_ramces1(23)
