puts"entre ton année de naissance"
annee=gets.to_i
var=annee
until annee>2021
    print"en #{annee}"
    print" tu avais #{annee-var} ans" "\n"
    annee+=1
end