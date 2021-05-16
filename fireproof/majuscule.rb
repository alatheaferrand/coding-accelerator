#gestion erreur
if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} string"
  exit
end

my_str=ARGV[0].downcase #met tout en minuscule

i=0
result="" #créer un str pour le résultat

#boucle si espace, copie tel quel, sinon met 1 lettre sur 2 en majuscule
while i < my_str.length
       if (my_str[i] == " ")
        result << my_str[i]
        i+=1
        end
    result << my_str[i]
    i += 1
       if (my_str[i] == " ")
       result << my_str[i]
       i+=1
       end
    result << my_str[i].to_s.upcase
    i += 1
end
puts result
