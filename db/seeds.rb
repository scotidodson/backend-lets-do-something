# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "Scoti", last_name: "Dodson", username: "scoti", password: "password", email:"email@gmail.com", birthday: "1991-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true )

User.create(first_name: "Max", last_name: "Petersen", username: "max", password: "password", email:"email@gmail.com", birthday: "1997-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true )

User.create(first_name: "Asaf", last_name: "Davidov", username: "asaf", password: "password", email:"email@gmail.com", birthday: "1995-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true )

User.create(first_name: "Jordan", last_name: "Farkas", username: "jordan", password: "password", email:"email@gmail.com", birthday: "1991-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true )

User.create(first_name: "Cory", last_name: "Coose", username: "cory", password: "password", email:"email@gmail.com", birthday: "1989-01-01", gender:"male", default_city: "NYC", bio:"boston loving bartender", app_member: true )

User.create(first_name: "Shelby", last_name: "Scalia", username: "shelby", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true )

Idea.create(title: "Times Square", street:"1555 Broadway", city:"New York", state: "NY", zip: "10036", neighborhood:"Midtown", category: "Sightseeing / Tour", details: "Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.", winter: true, summer: true, spring: true, fall: true, price_range: 0, duration: "quick", website: "timessquarenyc.org", expiration: false, expiration_date: "")

Idea.create(title: "Comedy Cellar", street:"1267, 117 Macdougal St", city:"New York", state: "NY", zip: "10012", neighborhood:"Greenwich Village", category: "Comedy", details: "Famous comics are often in the lineup at this brick-walled comedy club with several shows nightly.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "evening", website: "comedycellar.com", expiration: false, expiration_date: "")

Idea.create(title: "Statue of Liberty", street:"", city:"New York", state: "NY", zip: "10004", neighborhood:"Financial District", category: "Sightseeing / Tour", details: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States, was designed by French sculptor Frédéric Auguste Bartholdi and built by Gustave Eiffel.", winter: false, summer: true, spring: true, fall: true, price_range: 0, duration: "a few hours", website: "", expiration: false, expiration_date: "")

Idea.create(title: "Empire State Building", street:"20 W 34th St", city:"New York", state: "NY", zip: "10001", neighborhood:"Midtown", category: "Sightseeing / Tour", details: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. Designed by Shreve, Lamb & Harmon and completed in 1931, the building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "www.esbnyc.com/", expiration: false, expiration_date: "")

Idea.create(title: "Metropolitan Museum of Art", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Upper East Side", category: "Museum", details: "The Metropolitan Museum of Art of New York City, colloquially 'the Met', is the largest art museum in the United States. With 7.06 million visitors to its three locations in 2016, it was the third most visited art museum in the world, and the fifth most visited museum of any kind.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")
