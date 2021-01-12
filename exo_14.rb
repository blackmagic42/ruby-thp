arr= Array.new(50) {|i| "david.giraudeau#{i.to_s}@yahoo.fr"}
for n in 0..50
    if n%2==0
        puts"#{arr[n]}"
    end
end