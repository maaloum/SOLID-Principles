class Employee
  attr_accessor :name, :basic_salary, :id
  def initialize(id, name, basic_salary)
    @name = name
    @id = id
    @basic_salary = basic_salary
  end
  def calcul_hours_bonus( num_hours)
    return ((@basic_salary.to_f / 30).to_f / 8) * num_hours
  end
  def display
    puts "#{@id } #{ @name}"
  end
end
