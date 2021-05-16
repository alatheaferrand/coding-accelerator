if (ARGV.length < 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} [array_of_numbers_to sort...]"
  exit
end

#print ARGV.sort!.reverse.join(' ')
#.sort c'est de la triche, il faut voir ce qu'il y a derrière

#bubble_sort
flag=true

while (flag) #tant que flag est true la boucle suivante recommence
  flag=false #initialise flag à false pour sortir de la boucle qd aucun swap
  i=0
  while (i < ARGV.length-1) #important le -1 à cause du [i + 1] du if, sinon error
    if (ARGV[i] < ARGV[i + 1]) #si a<b, swap
      ARGV[i], ARGV[i + 1] = ARGV[i + 1], ARGV[i]  #swap
      flag=true #flag passe à true à chaque swap
    end
    i += 1
  end
end

puts ARGV.join(' ')

=begin
  autre méthode pour swapper
  temp = ARGV[i]
  ARGV[i] = ARGV[i + 1]
  ARGV[i + 1] = temp
=end
