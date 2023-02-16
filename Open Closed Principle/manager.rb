class Manager < Employee
  def calcul_hours_bonus(num_hours)
    return (((basic_salary.to_f / 30).to_f / 8) * num_hours) *2
  end
end
