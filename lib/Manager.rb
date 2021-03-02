class Manager

attr_reader :name, :department, :age
@@all=[]

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select{|emp_inst|emp_inst.manager==self}
    end

    def hire_employee(emp_name,salary)
        Employee.new(emp_name, salary, self)
    end

    def self.all_departments
        Employee.all.map{ |emp_inst| emp_inst.manager.department}.uniq
    end

    def self.average_age
        Manager.all.map{|man_inst|man_inst.age}.reduce(0){|sum,num|sum+num}/(Manager.all.length)
    end

end
