if (ARGV.length < 2)
  puts "#{__FILE__} requires two arguments: #{__FILE__} word_to_find dictionary.txt"
  exit
end

word=ARGV[0] #["arbre"] 1er argument
dico=File.read(ARGV[1]).split #["amour", "arbre", ...] de dico.txt

# tri
value=word.split('').sort.join('')

result=[]
i=0
while (i<dico.length)
  if (dico[i].split('').sort.join('') == value)
    result << dico[i]
  end
  i+=1
end

print result
