require "readline"

inputnum = Readline.readline("type a number. > ")
unless inputnum =~ /^[0-9]+$/
  puts "  type a number. try again! "
  sleep(2)
  exit(99)
end
puts "count #{inputnum}(decimal number)'s bit.\n\n"
ctr = 0
digwei = []
sumnum = 0
inputnum = inputnum.to_i

# 十進数を二進数の重みに分解パート
while inputnum > 0
  if inputnum < 2 ** ctr
    inputnum -= 2 ** ( ctr - 1 )
    digwei << ( ctr - 1 )
    ctr = 0
  elsif inputnum == 2 ** ctr
    inputnum -= 2 ** ctr
    digwei << ctr
    ctr = 0
  else
    ctr += 1
  end
end

# 記録した重みから二進数作成パート
digwei.length.times { |i| sumnum += 10 ** digwei[i] }

puts "#{sumnum}(binary number)"
puts "#{sumnum.to_s.size} bit"
