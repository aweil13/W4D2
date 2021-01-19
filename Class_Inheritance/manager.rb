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
        total = 0
        salaries = []

        @employees.each do |employee| 
            salaries << employee.salary
            if !employee.employees.nil?
                employee.employees.each do |sub-employee|
                    salaries << sub_employee.salary
                end
            end
        end
        
        total
    end

end