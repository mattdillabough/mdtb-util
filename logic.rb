puts "   p    |    q |  v   | p && q | p && q && v"

p = true
q = true
v = false
puts "#{p}  | #{q}  | #{v}  | #{p && q} | #{p && q && v}"

p = false
puts "#{p}  | #{q}  | #{v}  | #{p && q} | #{p && q && v}"

q = false
puts "#{p}  | #{q}  | #{v}  | #{p && q} | #{p && q && v}"

p = true
puts "#{p}  | #{q}  | #{v}  | #{p && q} | #{p && q && v}"

puts
puts
puts "   p    |    q |  v   | p || q | p || q || v"

p = true
q = true
v = true
puts "#{p}  | #{q}  | #{v}  | #{p || q} | #{p || q || v}"

p = false
puts "#{p}  | #{q}  | #{v}  | #{p || q} | #{p || q || v}"

q = false
puts "#{p}  | #{q}  | #{v}  | #{p || q} | #{p || q || v}"

p = true
puts "#{p}  | #{q}  | #{v}  | #{p || q} | #{p || q || v}"

puts
puts
puts "p       | !p       | p && !p    | p || !p"

p = true
puts "#{p}  | #{!p} | #{p && !p} | #{p || !p} "

p = false
puts "#{p}  | #{!p} | #{p && !p} | #{p || !p} "