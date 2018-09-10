def binary_search(numbers,value)
  # この部分に記述してください
  head = 0
  puts "head:#{head}"
  tail = numbers.length
  puts "tail:#{tail}"
  while true
    middle = (head + tail) / 2
    middlenum = numbers[middle]
    puts "middle num:#{middlenum}"
    if value == middlenum
        return "index:#{middle}"
    elsif value > middlenum
        head = middle + 1
    else
        tail = middle - 1
    end
    if tail < head
        return "index:None"
    end
  end
end

# 「探したい数字」が含まれている配列
numbers = [1,3,5,11,12,13,17,22,25,28]

puts "numbers:#{numbers}"
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をbinary_searchメソッドで探し、探した結果をputsで出力する
puts(binary_search(numbers,target_number))