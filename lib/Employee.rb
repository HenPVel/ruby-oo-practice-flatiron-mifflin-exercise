class Employee

attr_reader :name, :salary, :manager
@@all=[]

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_arg)
        Employee.all.select{ |employee_inst| employee_inst.salary > salary_arg } 
    end

    def self.find_by_department(department_string)
        Employee.all.find{|employee|employee.manager.department==department_string}
    end

    def tax_bracket
        Employee.all.select do |emp_inst| 
            emp_inst.salary < self.salary+1000 && emp_inst.salary > self.salary-1000
        end
    end

end
