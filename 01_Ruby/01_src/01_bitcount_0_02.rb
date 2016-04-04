require "readline"
inputnum = 0
inputnum = Readline.readline("type a number. > ")
puts "count #{inputnum}'s bit."

ctr = 0
ctrctr = []
sumnum = 0
wknum = inputnum.to_i
puts
p wknum
p ctr
p ctrctr

# 十進数を二進数の重みに分解パート
while wknum > 0
  if wknum < 2 ** ctr
    wknum -= 2 ** ( ctr - 1 )
    ctrctr << ( ctr - 1 )
    ctr = 0
puts
p wknum
p ctr
p ctrctr
  elsif wknum == 2 ** ctr
    wknum -= 2 ** ctr
    ctrctr << ctr
    ctr = 0
puts
p wknum
p ctr
p ctrctr
  else
    ctr += 1
puts
p wknum
p ctr
p ctrctr
  end
end

puts
p wknum
p ctr
p ctrctr

# 記録した重みから二進数作成パート
while ctrctr.length > 0
    sumnum += 10 ** ctrctr.shift
end

puts sumnum
puts "#{sumnum.to_s.size} bit"
