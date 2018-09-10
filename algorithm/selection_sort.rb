def selection_sort(numbers)
    puts "input:#{numbers}"
  # この部分を記述してください
  head = 0
  while head < 5
    indexmin = head
    k = head + 1
    while k < 5
        if numbers[indexmin] > numbers[k]
            indexmin = k
        end
        k = k + 1
    end
#    tmp = numbers[head]
#    numbers[head] = numbers[indexmin]
#    numbers[indexmin] = tmp
    numbers[head],numbers[indexmin] = numbers[indexmin],numbers[head]
    puts "roop:#{numbers}"
    head = head + 1
  end
    puts "roop:#{numbers}"
end

selection_sort([12,13,11,14,10])