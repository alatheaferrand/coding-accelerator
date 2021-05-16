if (ARGV.length < 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} [array_of_numbers_to sort...]"
  exit
end

i=0
while (i<ARGV.length)
  j=i+1 #démarre index j juste après index i
    while (j < ARGV.length)
      if ARGV[j] > ARGV[i]
        ARGV[i], ARGV[j]=ARGV[j], ARGV[i] #swap jusqu'à trouver la valeur max
      end
    j += 1
    end
  i += 1
end

puts ARGV.join(' ')

#ne fonction pas pour des nombres supéreurs à 9
