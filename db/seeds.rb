# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


(1..20).each do
  task_title = Faker::GreekPhilosophers.name
  task_details = Faker::GreekPhilosophers.quote
  task_completed = rand(1) > 0.5 ? true : false
  Task.create(title: task_title, details: task_details, completed: task_completed)
end
