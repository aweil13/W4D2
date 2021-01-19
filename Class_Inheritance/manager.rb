    require_relative 'employee.rb'

class Manager < Employee

    def initialize(name, title, salary, boss, employees)
        @employees = []
    end

    def add_employees(employee)
        @employees << employee
    end



end