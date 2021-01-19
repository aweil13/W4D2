class Employee

    def initialize
        @name = name
        @salary = salary
        @title = title
        @boss = boss
    end


    def bonus(multiplier)
        if !@title.include?('manager').capitalize
            @salary * multiplier
        else
            self.employees.salary.inject
    end

end