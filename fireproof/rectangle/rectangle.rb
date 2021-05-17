<<<<<<< HEAD
if (ARGV.length < 2)
=======
if (ARGV.length < 1)
>>>>>>> e7d1632521890a23bb1e2c37ac15a236d49acccb
  puts "#{__FILE__} requires two arguments: #{__FILE__} 'file1.txt' 'file2.txt' "
  exit
end

file_c1=File.read(ARGV[0]).split
file_c2=File.read(ARGV[1]).split

j=0
index_1=0
index_2=0
result=false # passe en true qd tous les éléments sont trouvés à la suite

while j<file_c2.length
    i=0 # reviens à zéro tant qu'il n'y a pas de correspondance (ou pas de suite)
    if file_c2[j].include?(file_c1[i]) # quand vrai, suite
      index_2=j # retiens l'index si élément trouvé
      j+=1
      i+=1

      if file_c2[j].include?(file_c1[i]) # qd true, fais la suite
        j+=1
        i+=1
        if file_c2[j].include?(file_c1[i]) #si tjrs true, tous les éléments trouvés!
          print index_1 = file_c2[j].index(file_c1[i])
          print ", "
          print index_2
          result=true #tous les éléments sont trouvés
        end
      end
    end
    j+=1
end

if result==false
  print "Aucune correspondance"
end
