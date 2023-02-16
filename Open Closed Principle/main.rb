require_relative 'employee'

emp1 = Employee.new("123", 'Maaloum', 900)
emp1.display
p emp1.calcul_hours_bonus(5)


