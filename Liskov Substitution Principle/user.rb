require 'date'

class User
  attr_accessor :settings, :email
  def initialize(email:)
    @email = email
  end
end

class Administator < User
end

user = User.new(email: "user@example.com")
user.settings = {level: "low security", status: 'live', signed_in: Date.today}
admin = Administator.new(email: "admin@example.com")
admin.settings = ["Editor", "VIP", Date.today]

p user.settings
p admin.settings

@user_database = [user, admin]
def signed_in_today?
  @user_database.each do
    |user| if user.settings[:signed_in] == Date.today
              puts "#{user.email} signed today"
    end
  end
end
signed_in_today?
