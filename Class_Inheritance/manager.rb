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
        salaries = @employees.dup
        until salaries.empty?
            employee = salaries.shift
            total += employee.salary
            salaries.concat(employee.employees)  if employee.is_a?(Manager)           
        end
        total
    end

end