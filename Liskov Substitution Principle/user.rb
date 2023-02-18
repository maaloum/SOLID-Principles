require 'date'
require 'ostruct'

class User
  attr_accessor :email
  def initialize(email:)
    @email = email
  end
  def set_settings(level:, status:, signed_in:)
    @settings = OpenStruct.new(level: level, status: status, signed_in)
  end
  def get_settings
    @settings
  end
end

class Administator < User
end

user = User.new(email: "user@example.com")
user.set_settings(level: "low security", status: 'live', signed_in: Date.today)
admin = Administator.new(email: "admin@example.com")
admin.set_settings(level: "Editor", status: "VIP", signed_in: Date.today)

p user.settings
p admin.settings

@user_database = [user, admin]
def signed_in_today?
  @user_database.each do |user|
    if user.get_settings.signed_in == Date.today
      puts "#{user.email} signed today"
    end
  end
end

# p signed_in_today?
