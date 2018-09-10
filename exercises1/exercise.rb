#str = (文字列なのか)
#p str.is_a?(String)
str = /文字列なのか/
p str.is_a?(String)
str = :文字列なのか
p str.is_a?(String)

name = '山田太郎'
age = 18

puts "#{name}"
puts "#{age}"

#house = {price:2000万,location:東京都,size:100坪}
#puts house

#puts house[:location]

num=10

if num % 2
  puts "guu"
else
  puts "kisu"
end

count = 0
while count < 10 do
    puts "ohay"
    count = count + 1
end

while true do
    p "a"
    break
end
for i in 1..10 do
    puts  i
    puts "haiyo"
end



10.times do
    puts 'おは'
end

[1,2,3,4,5,6,7,8,9,10].each do |num|
    puts num
end

def addtion(x,y,z)
    return (x + y + z)/3
end
puts addtion(2,3,7)

def division(x,y)
    return x/y
end

puts division(10,5)

def doing(date,place,food)

    puts "#{date}は#{place}で#{food}を食べる"
end

puts doing("今日","渋谷","カレー")
puts doing("明日","池袋","オムライス")