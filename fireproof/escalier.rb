#gestion d'erreur
if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} number_of_steps"
  exit
end

#récup entrée 1 entier pour boucle
marches_nb=ARGV[0].to_i

=begin
ex: escalier.rb 4   doit afficher un escalier à 4 niveaux avec des dièses selon le nombre en entrée
   #
  ##
 ###
####
=end
i=0
while i < marches_nb
  i+=1
  puts " "*(marches_nb - i) + "\#"*(i)
end
