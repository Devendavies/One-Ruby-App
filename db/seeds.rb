# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(image_url: "http://www.planwallpaper.com/static/images/colorful-triangles-background_yB0qTG6.jpg", name: "Admin", email: "a@z.com", password: "password", password_confirmation: "password", bio: "You have no power here...")
Task.create(priority: "Need", author: "Admin", content: "Make a simple ruby to-do app!")


# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
