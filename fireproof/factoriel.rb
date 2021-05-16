if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} number"
  exit
end

number=ARGV[0].to_i

def factoriel(n)
  return 1 if n <= 1 #met fin à la boucle
  n*factoriel(n-1)
end

print factoriel(number)
