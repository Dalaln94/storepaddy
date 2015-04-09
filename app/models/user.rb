class User < ActiveRecord::Base
  has_secure_password
  has_many :bookings
  has_many :posts
  has_many :reviews
  has_one :role, :through => :role_user
  has_one :role_user

  def admin?
    self.role.title == "admin"
  end

  def user?
    self.role.title == "user"
  end
end
