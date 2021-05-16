#gestion erreur
if (ARGV.length < 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} string"
  exit
end

#récup ARGV et converti en string l'entrée
#avec ARGV[0] ou ARGV.join(" ")
#my_str=ARGV[0]

#converti string en tableau de char
#arr_char=my_str.split("")

#my_str en plus simple
my_str=ARGV[0].split("")

=begin
boucle pour itération sur chaque char de my_str
converti en majuscule 1 char sur 2
=end
i=0

while i < my_str.length
    print my_str[i].upcase if i.odd?
    print my_str[i].downcase if i.even?
    i += 1
end

print "\n"
