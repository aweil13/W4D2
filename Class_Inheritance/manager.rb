    require_relative 'employee.rb'

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super (name,title,salary,boss)        
        @employees = []
    end

    def add_employees(employee)
        employee.boss = self
        @employees << employee
    end



end