# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying"


Tenant.destroy_all
House.destroy_all
Mantainance.destroy_all

puts "Done destroying"

puts "Seeding..."



tenant1 = Tenant.create(
    first_name: "Luke",
    last_name: "Shaw",
    email: "lukeshaw@gmail.com",
    password: "luke0790",
    confirm_password: "luke0790",
    phone_number: "0786746537",
    house_id: house1.id,
    move_in_date: "19062022",
    lease_term: "fixed",
    security_deposit: "paid",
    rent_status: "paid",
    
)
tenant2 = Tenant.create(
    first_name: "Darwin",
    last_name: "Ken",
    email: "lewisdarwin@gmail.com",
    password: "78654768k",
    confirm_password: "78654768k",
    phone_number: "0754372656",
    house_id: house2.id,
    move_in_date: "20062021",
    lease_term: "periodic",
    security_deposit: "paid",
    rent_status: "not paid",
)
tenant3 = Tenant.create(
    first_name: "Timothy",
    last_name: "Rogers",
    email: "timothy@gmail.com",
    password: "tim203021",
    confirm_password: "tim203021",
    phone_number: "0719370096",
    house_id: house3.id,
    move_in_date: "20012023",
    lease_term: "indefinite",
    security_deposit: "paid",
    rent_status: "paid",
    
)
tenant4 = Tenant.create(
    first_name: "Faith",
    last_name: "Kwamboks",
    email: "faithkwamboka@gmail.com",
    password: "faith39876",
    confirm_password: "faith39876",
    phone_number: "0754678543",
    house_id: house4.id,
    move_in_date: "10012022",
    lease_term: "fixed",
    security_deposit: "paid",
    rent_status: "paid",
    
)
tenant5 = Tenant.create(
    first_name: "Jane",
    last_name: "Kirui",
    email: "janek@gmail.com",
    password: "janeyt34532",
    confirm_password: "janeyt34532",
    phone_number: "0784678101",
    house_id: house5.id,
    move_in_date: "12012022",
    lease_term: "fixed",
    security_deposit: "paid",
    rent_status: "paid",
    
)

tenant6 = Tenant.create(
    first_name: "Darwin",
    last_name: "Kroos",
    email: "darwinkros@gmail.com",
    password: "kroos321456",
    confirm_password: "kroos321456",
    phone_number: "0794678101",
    house_id: house6.id,
    move_in_date: "17012022",
    lease_term: "periodic",
    security_deposit: "paid",
    rent_status: "paid",
    
)

house1 = House.create(
      property_type: "Apartment",
      status: "Vacant",
      number_of_bedrooms: "3",
      rent: "$300",
      description: "Newly built townhome unit in the beautiful serene Village townhomes community. This 3 bedroom 2 bath unit includes a refrigerator, stove, dishwasher, and microwave. It has a large patio area with tile flooring and direct access to the carport. Lots of room for a storage available in the carport.",
      img:"https://img.freepik.com/free-photo/modern-residential-building_1268-14735.jpg",
        
       
)
house2 = House.create(
    property_type: "Apartment",
    status: "Vacant",
    number_of_bedrooms: "2",
    rent: "$200",
    description: "Beautiful Spanish style home located in the heart of Kilimani Surfs. The 1 story, clay roof home features 2 bedrooms, 1 bath with natural lighting beaming throughout every room. There is a washer and dryer unit inside, as well as a detached one parking garage located on the alley side.",
    img:"https://img.freepik.com/free-photo/modern-apartment-architecture_1268-14696.jpg",
      
     
)
house3 = House.create(
    property_type: "Apartment",
    status: "Vacant",
    number_of_bedrooms: "1",
    rent: "$250",
    description: "Spacious one bedroom in the heart of Kileleshwa. The unit has natural hardwood flooring, window ac unit, a refrigerator and stove ready for move in. One parking garage is included. Laundry room onsite with 2 washers and 1 dryer.",
    img:"https://img.freepik.com/free-photo/analog-landscape-city-with-buildings_23-2149661457.jpg",
      
     
)
house4 = House.create(
    property_type: "Apartment",
    status: "Vacant",
    number_of_bedrooms: "2",
    rent: "$230",
    description: "Spacious two bedroom in the heart of Ngong Road. The unit has natural hardwood flooring, window ac unit, a refrigerator and stove ready for move in. One parking garage is included. Laundry room onsite with 2 washers and 1 dryer.",
    img:"https://as2.ftcdn.net/v2/jpg/00/66/29/39/1000_F_66293924_31Ow74eN5v05KoIUR2JrhAifSNPEtIrn.jpg",
      
     
)
mantainance1 = Mantainance.create(
    house_id: house1.id,
    tenant_id: tenant1.id,
    date_requested: "10032022",
    date_completed: "11032022",
    urgency: "minor",
    description: "Living room need to be painted",
)
mantainance2 = Mantainance.create(
    house_id: house2.id,
    tenant_id: tenant2.id,
    date_requested: "15032022",
    date_completed: "20032022",
    urgency: "critical",
    description: "Blocked washrooms",
)
mantainance3 = Mantainance.create(
    house_id: house3.id,
    tenant_id: tenant3.id,
    date_requested: "22032022",
    date_completed: "25032022",
    urgency: "medium",
    description: "Blocked sewage system",
)
mantainance4 = Mantainance.create(
    house_id: house4.id,
    tenant_id: tenant4.id,
    date_requested: "11042022",
    date_completed: "15042022",
    urgency: "major",
    description: "Repairs of ceiling",
)




























puts "Seeding is Complete"