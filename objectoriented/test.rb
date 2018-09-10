class School

    def name=(word)
        @school_name = word
    end

    def name1
        puts @school_name
    end
end

school = School.new
school.name= "school"
#school.name=("Aschool")
school.name1