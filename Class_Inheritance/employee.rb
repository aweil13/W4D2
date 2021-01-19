class Employee
    attr_reader :name, :title, :salary
    attr_accessor :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
    end


    def bonus(multiplier)
        if self.is_a?(Manager)
            self.employees_salaries * multiplier
        else
            @salary * multiplier
        end
    end

end