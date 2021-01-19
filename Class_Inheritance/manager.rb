    require_relative 'employee.rb'

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)        
        @employees = []
    end

    def add_employees(employee)
        employee.boss = self
        @employees << employee
    end

    def employees_salaries
        salaries = []

        @employees.each do |employee| 
            salaries += employee.salary
        end
        
        salaries
    end

end