require_relative 'employee'
require_relative 'manager'
require_relative 'regular'

emp1 = Manager.new("123", 'Maaloum', 900)
emp2 = RegularEmployee.new("2736", "toro", 900)
emp1.display
p emp1.calcul_hours_bonus(5)
emp2.display
p emp2.calcul_hours_bonus(5)


