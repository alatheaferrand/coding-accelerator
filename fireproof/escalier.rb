def escalier(arg)
  i=0
  while i<arg
    i = i+1
    puts " "*(arg-i)+"\#"*(i)
  end
end

escalier(4)
