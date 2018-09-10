class School
    attr_accessor :name, :address,
    :number_of_students,
    :founding_years,
    :introduction_video_url,
    :introduction_statement

    def initialize(name, address, number_of_students, founding_years,
        introduction_video_url, introduction_statement)
        @name = name
        @address = address
        @number_of_students = number_of_students 
        @founding_years = founding_years
        @introduction_video_url = introduction_video_url 
        @introduction_statement = introduction_statement 
    end
end

a_school = School.new("aschool", "sibuya", 300 ,100, 'https://hoge','A is good forest')

puts a_school.name
puts a_school.address
puts a_school.number_of_students
puts a_school.founding_years
puts a_school.introduction_video_url
puts a_school.introduction_statement


#b_school = School.new("bbbbbba", "affaaa")
#
#puts b_school.name
#puts b_school.address

