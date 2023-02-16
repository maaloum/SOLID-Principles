class Employee
  attr_accessor :name, :basic_salary, :id
  def initialize(id, name, basic_salary)
    @name = name
    @id = id
    @basic_salary = basic_salary
  end
  def calcul_hours_bonus(num_hours)
    raise  NotImplementedError, "calcul_hours_bonus must be implemented by classes that inheret from this class"
  end
  def display
    puts "#{@id } #{ @name}"
  end
end
