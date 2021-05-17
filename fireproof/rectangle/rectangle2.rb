if (ARGV.length < 2)
  puts "#{__FILE__} requires two arguments: #{__FILE__} query data "
  exit
end

query=File.read(ARGV[0]).split
data=File.read(ARGV[1]).split

def is_it_a_match?(query, data, line, column)
lineq = 0
while lineq < query.length
  columnq = 0
  while columnq < query[lineq].length
    if (query[lineq][columnq] != data[line+lineq][column+columnq])
      return (false)
    end
    columnq += 1
  end
  lineq += 1
end
return (true) #ça veut que tout le tableau query a été parcouru et donc matché!
end

def rectangle(query, data)
  line = 0
  while line < data.length
    column = 0
    while column < data[line].length
      if data[line][column] == query[0][0]
        if(is_it_a_match?(query, data, line, column)) #si funct° return true
          puts "#{column}, #{line}"
          return (true)
        end
      end
    column += 1
    end
  line +=1
  end #si arrive ici, fin du tableau, pas de correspondance
  return (false) #pas de match
end

rectangle(query, data)
