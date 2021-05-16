#gestion erreur
if (ARGV.length < 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} string"
  exit
end

my_str=ARGV[0]

i=0
result="" #créer un str pour le résultat
indice_maj=0 #incrémenté qd lettre rencontrée (pas les espaces)

#boucle
while i < my_str.length
  if (my_str[i] != " ")
    if (indice_maj.even?)
        result << my_str[i].downcase
    else
        result << my_str[i].upcase
    end
    indice_maj += 1
  else
    result << " "
  end
  i += 1
end
puts result
