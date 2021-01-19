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
        if !@title.include?('manager')
            @salary * multiplier
        else
            self.employees.salary.inject { |acc, el| acc + el } * multiplier
        end
    end

end