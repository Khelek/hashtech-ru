# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
def create_network name
  network = Network.create({ name: name })
  network.logo.store!(File.open(File.join(Rails.root, "app/assets/images/#{name}.png")))
  network.save!
end
["Github", "Twitter", "Google+", "VK", "Facebook"].each { |name| create_network name }
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = AdminUser.create({email: 'admin@example.com', password: 'password', password_confirmation: 'password'}) 
