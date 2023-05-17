# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 tenant = Tenant.create(first_name: "nicholas",last_name: "njeru", email: "nicholas@gmail.com",phone_number: "8098765432",house_id: 1,move_in_date: "ddffgg",
    lease_term: "leased", security_deposit: 23432,rent_status: "paid", password: "1234") 
  
    puts 'done'