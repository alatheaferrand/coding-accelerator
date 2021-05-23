if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} number"
  exit
end

number=ARGV[0].to_i

def factoriel(n)
  return 1 if n <= 1 #met fin à la boucle
  n*factoriel(n-1)
end

rev = factoriel(number).to_s.reverse

new_res = ''
  i = 0
  while (i < rev.length)
    new_res += rev[i]
    if ( (i + 1) % 3 == 0)
      new_res += ','
    end
    i += 1
  end
  print new_res.reverse
