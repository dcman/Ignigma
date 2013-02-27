def mod(n, m)

  if m < n
    m
  else
    mod n, m - n
  end
end

o = 3
p = 43
puts "#{o} Mod #{p} = #{p % o}"
puts mod o, p