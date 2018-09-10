#! /usr/bin/env ruby

a = 4
b = 5
#b = 2
c=6
#c=3


def bigger(a,b)
    bignum = ""
    if a > b
        bignum = a
    else
        bignum = b
    end
    return bignum
end

def biggest(x,y,z)

    if bigger(x,y) == x
        if bigger(x,z) == x
            return x
            #puts "big",x
        else
            return z
#            puts "big",z 
        end
    elsif bigger(y,z) == y
        return y
#        puts "big",y
    else
        return z
#        puts "big",z
    end
end


def median(x,y,z)
    biggestnum = biggest(x,y,z)
    puts "biggest",biggestnum

    if biggestnum == x
        return bigger(y,z)
    elsif biggestnum == y
        return bigger(x,z)
    elsif biggestnum == z
        return bigger(x,y)
    end
end

puts(median(5,7,2))
puts(median(7,3,2))
puts(median(1,4,2))