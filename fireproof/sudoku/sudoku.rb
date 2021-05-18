#gestion erreur
if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} sudoku.txt"
  exit
end

sudoku=File.read(ARGV[0]).split

#lecture en colonne
# si 1 seul underscore trouvé dans une colonne
# calcule la solution et remplace le underscore dans le tableau
def solution_column(data, column)
  line = 0
  flag_line = 0
  index_line = 0
  while line < data.length
    data[line].split.join('')
    if data[line][column] == "_"
      flag_line += 1
      index_line = line
    end
    line +=1
    if flag_line == 1
      line=0
      diff = 45
      while line < data.length
        if line == index_line
          line += 1
        end
        diff = diff - data[line][column].split.join(' ').to_i
        line +=1
      end
      data[index_line][column] = diff.to_s
    end
  end
end

#lecture en ligne
# si 1 seul underscore trouvé dans une ligne
# calcule la solution et remplace le underscore dans le tableau
def solution_line(data)
flag = false
  while flag == false
    flag = true #false dès qu'un underscore est trouvé
    line = 0
    while line < data.length #boucle 1er niveau tableau
      column = 0
      flag_column =0
      index_column = 0
        while column < data[line].length #boucle 2e niveau
          data[line].split.join(' ')
          if data[line][column] == "_"
            flag_column += 1
            index_column = column
            flag = false
          end
          column += 1
        end
        if flag_column > 1
          solution_column(data, index_column)
        end
        if flag_column == 1
          column=0
          diff = 45
          while column < data[line].length
            if column == index_column
              column += 1
            end
            diff = diff - data[line][column].split.join(' ').to_i
            column +=1
          end
          data[line][index_column] = diff.to_s
        end
        line += 1
      end
    end
  puts data
end


puts solution_line(sudoku)
