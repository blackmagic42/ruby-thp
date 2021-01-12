puts"entre ton année de naissance"
annee=gets.to_i
annee_n=annee
until annee>2021
    print"en #{annee}"
    print" tu avais #{annee-annee_n} ans" "\n"
    annee+=1
end