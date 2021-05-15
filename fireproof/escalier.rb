if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} number_of_steps"
  exit
end

marches_nb=ARGV[0].to_i

i=0

while i < marches_nb
  i+=1
  puts " "*(marches_nb - i) + "\#"*(i)
end
