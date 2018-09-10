
def quick_sort(numbers)
    return numbers if numbers.length < 2
    
    basenum = numbers.shift
    
    small=[]
    big=[]

    numbers.each do |number|
        if number > basenum
            big << number
        else
            small << number
        end 
    end
    quick_sort(small) + [basenum] + quick_sort(big)
        
end

numbers = [8,6,5,2,1,3]

p quick_sort(numbers)