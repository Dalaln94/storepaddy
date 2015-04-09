

puts "Deleting existing roles..."
roles = Role.all
roles.each { |role| role.destroy } if roles.present?

puts "Adding default roles"
%w(admin user).each do |name|
  Role.create(:title => name)
end

puts "Deleting existing users..."
users = User.all
users.each { |user| user.destroy } if users.present?

puts "adding Admin User"
role = Role.where(:title => "admin").first
user = User.new(:email => "admin@ej7.com", :fname => 'admin', :password => "admin123")
user.save!
user.role = role

Product.delete_all
Product.create! id: 1, name: "Banana", price: 0.49, active: true
Product.create! id: 2, name: "Apple", price: 0.29, active: true
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"



