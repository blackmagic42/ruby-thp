puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb_Floors = gets.to_i
return if nb_Floors < 0 || nb_Floors > 25
1.upto(nb_Floors) do |floor|
  puts " " * (nb_Floors - 1) + "#" * (floor * 2 - 1)
  nb_Floors -= 1

end