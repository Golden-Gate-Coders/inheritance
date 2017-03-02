class Employee
  attr_reader :first_name, :last_name
  attr_writer :active
  attr_accessor :salary

  def initialize(input_hash = {})
    @first_name = input_hash[:first_name] || "First"
    @last_name = input_hash[:last_name] || "Last"
    @salary = input_hash[:salary] || 0
    @active = input_hash[:active] || false
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name
    if last_name[-1] == "s"
      puts "#{first_name} #{last_name}, Esquire"
    else
      puts "#{first_name} #{last_name}"
    end
  end
end

class Manager < Employee
  def initialize(input_hash = {})
    super
    @employees = input_hash[:employees]
  end

  def send_reports
    puts "Sending reports..."
    puts "Done!"
  end

  def show_employees
    p @employees
  end


end

employee1 = Employee.new(first_name: "Paul", last_name: "Allen")
employee2 = Employee.new(first_name: "Steve", last_name: "Ballmer")

manager = Manager.new(first_name: "Bill", last_name: "Gates", employees: [employee1, employee2])

manager.full_name
manager.send_reports
manager.show_employees

