print"bienvenue dans la pyramide 1.0 combien d'étages veux tu ( entre 1 et 25)?"
etages=gets.to_i
espace=etages-1
for i in 0..etages-1
    for j in 0..(espace-i)
        print" "
    end
    for k in 0..(2*i)
        print"#"
    end
    puts("")
end