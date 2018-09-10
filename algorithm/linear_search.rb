def linear_search(numbers,value)
  # この部分を記述してください
  numbers.each_with_index do|number,index|
    if value == number
        return index
    end
  end
  return "None"
end

# 「探したい数字」が含まれている配列
numbers = [1,3,5,11,12,13,17,22,25,28]

puts numbers
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers,target_number))