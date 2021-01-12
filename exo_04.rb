puts"quel est votre année de naissance"
annee=gets.to_i
annee_actuelle=2021
age=annee_actuelle-annee
while age<100
    annee_actuelle+=1
    age+=1
end
puts"#{annee_actuelle}" 