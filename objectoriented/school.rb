class School
    def name
        @greeting = "hello"
        #puts "hello"
    end
    def name1
        @greeting
    end
end

#School.new

puts School.new.class

school = School.new
puts school.class

puts "schoolname:#{school.name}"
puts "schoolname1:#{school.name1}"

a_school = School.new

b_school = School.new