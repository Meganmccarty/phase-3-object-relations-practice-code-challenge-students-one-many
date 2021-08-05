puts "Clearing old data..."
Cohort.delete_all
Student.delete_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-051721",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-041021",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-022421",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-010321",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-030821",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

20.times do
    cohort_id = Cohort.ids.sample
    age = rand(18..70)
    Student.create(name: Faker::Name.name, age: age, cohort_id: cohort_id)
end

puts "Done!"