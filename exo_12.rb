puts"quel est ton age?"
age=gets.to_i
annee_n=2021-age
age=0
while annee_n<=2021
    if (2021-annee_n==age)
        puts"il y a #{2021-annee_n} tu avais la moitié de ton age"
        annee_n+=1
        age+=1
    end
    puts"il y a #{2021-annee_n} ans tu avais #{age} ans"
    annee_n+=1
    age+=1
end