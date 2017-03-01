class Employee
  attr_reader :first_name, :last_name
  attr_writer :active
  attr_accessor :salary

  def initialize(input_hash = {})
    @first_name = input_hash[:first_name] || input_hash[:last_name]
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
  def send_reports
    puts "Sending reports..."
    puts "Done!"
  end
end

employee = Employee.new()
manager = Manager.new(first_name: "Manager")
manager.full_name
manager.send_reports

