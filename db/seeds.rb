# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "Scoti", last_name: "Dodson", username: "scoti", password: "password", email:"email@gmail.com", birthday: "1991-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "sydney")

User.create(first_name: "Max", last_name: "Petersen", username: "max", password: "password", email:"email@gmail.com", birthday: "1997-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "harold" )

User.create(first_name: "Asaf", last_name: "Davidov", username: "asaf", password: "password", email:"email@gmail.com", birthday: "1995-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "sam" )

User.create(first_name: "Jordan", last_name: "Farkas", username: "jordan", password: "password", email:"email@gmail.com", birthday: "1991-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "nick" )

User.create(first_name: "Cory", last_name: "Coose", username: "cory", password: "password", email:"email@gmail.com", birthday: "1989-01-01", gender:"male", default_city: "NYC", bio:"boston loving bartender", app_member: true, img_url: "nick" )

User.create(first_name: "Shelby", last_name: "Scalia", username: "shelby", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "rachel" )


User.create(first_name: "Devon", last_name: "Darrow", username: "devon", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "elissa" )

User.create(first_name: "Tiffany", last_name: "Choong", username: "tiffany", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "charlotte" )

User.create(first_name: "Yashih", last_name: "Wu", username: "yashih", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student (at heart)
", app_member: true, img_url: "britt" )

User.create(first_name: "Frida", last_name: "Casas", username: "frida", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "liz" )

User.create(first_name: "Shawna", last_name: "Davis", username: "shawna", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"female", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "melanie" )

User.create(first_name: "Zach", last_name: "Vary", username: "zach", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"male", default_city: "NYC", bio:"awesome TCF", app_member: true, img_url: "harold" )

User.create(first_name: "Humzah", last_name: "Choudry", username: "humzah", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"male", default_city: "NYC", bio:"awesome TCF", app_member: true, img_url: "sam" )

User.create(first_name: "Olivier", last_name: "Willems", username: "ollie", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "joe" )

User.create(first_name: "Casey", last_name: "Zimmer", username: "casey", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "charlie" )

User.create(first_name: "Brennan", last_name: "Blair", username: "brennan", password: "password", email:"email@gmail.com", birthday: "1993-01-01", gender:"male", default_city: "NYC", bio:"flatiron student", app_member: true, img_url: "sam" )







Idea.create(title: "Times Square", street:"1555 Broadway", city:"New York", state: "NY", zip: "10036", neighborhood:"Midtown", category: "Sightseeing / Tour", details: "Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.", winter: true, summer: true, spring: true, fall: true, price_range: 0, duration: "quick", website: "timessquarenyc.org", expiration: false, expiration_date: "")

Idea.create(title: "Comedy Cellar", street:"1267, 117 Macdougal St", city:"New York", state: "NY", zip: "10012", neighborhood:"Greenwich Village", category: "Comedy", details: "Famous comics are often in the lineup at this brick-walled comedy club with several shows nightly.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "evening", website: "comedycellar.com", expiration: false, expiration_date: "")

Idea.create(title: "Statue of Liberty", street:"", city:"New York", state: "NY", zip: "10004", neighborhood:"Financial District", category: "Sightseeing / Tour", details: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States, was designed by French sculptor Frédéric Auguste Bartholdi and built by Gustave Eiffel.", winter: false, summer: true, spring: true, fall: true, price_range: 0, duration: "a few hours", website: "", expiration: false, expiration_date: "")

Idea.create(title: "Empire State Building", street:"20 W 34th St", city:"New York", state: "NY", zip: "10001", neighborhood:"Midtown", category: "Sightseeing / Tour", details: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. Designed by Shreve, Lamb & Harmon and completed in 1931, the building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "www.esbnyc.com/", expiration: false, expiration_date: "")

Idea.create(title: "Metropolitan Museum of Art", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Upper East Side", category: "Museum", details: "The Metropolitan Museum of Art of New York City, colloquially 'the Met', is the largest art museum in the United States. With 7.06 million visitors to its three locations in 2016, it was the third most visited art museum in the world, and the fifth most visited museum of any kind.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")



Idea.create(title: "MoMA", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Midtown", category: "Museum", details: "The Museum of Modern Art is an art museum located in Midtown Manhattan, New York City, on 53rd Street between Fifth and Sixth Avenues. MoMA plays a major role in developing and collecting modernist art, and is often identified as one of the largest and most influential museums of modern art in the world.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "Central Park", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Manhattan", category: "Outdoors", details: "Central Park is an urban park in Manhattan, New York City. It is located between the Upper West Side and Upper East Side, roughly bounded by Fifth Avenue on the east, Central Park West on the west, Central Park South on the south, and Central Park North on the north.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "People's Improv Theater", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Manhattan", category: "Comedy", details: "A comedy venue hosting nightly shows, corporate workshops & classes in performance & writing.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "Katz Deli", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Lower East Side", category: "Food", details: "No-frills deli with theatrically cranky service serving mile-high sandwiches since 1888.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "East Village Social", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"East Village", category: "Nightlife", details: "This cozy, rustic watering hole features creative takes on pub grub, craft beer on tap & live music.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "Bowery Ballroom", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"East Village", category: "Nightlife", details: "The Bowery Ballroom is a music venue in the Bowery section of Manhattan, New York City. The structure, at 6 Delancey Street, was built just before the Wall Street Crash in 1929. It stood vacant until the end of WWII, when it became a high-end retail store. ", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "The Four Faced Liar", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"The Village", category: "Nightlife", details: "TCasual spot where students & other Village denizens relax over a pint, poetry or live music.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "Yatenga", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Harlem", category: "Food", details: "Stylish, casual eatery featuring à la carte & fixed-price menus of traditional French bistro fare.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "At The Wallace", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Hamilton Heights", category: "Nightlife", details: "Beer & grilled cheese sandwiches served in a lively bar with quirky decor & parlor games.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "The Honeywell", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Hamilton Heights", category: "Nightlife", details: "Craft cocktails & bar bites are offered in a low-lit, subterranean setting with a cozy vibe.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "Coogans", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Washington Heights", category: "Nightlife", details: "American comfort food, Irish pub decor & a mixed NYC crowd come together at this local spot.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "Fort Tryon Park", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Inwood", category: "Outdoors", details: "Fort Tryon Park is a public park located in the Hudson Heights and Inwood neighborhoods of the borough of Manhattan in New York City.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")


Idea.create(title: "Horses & Divorces", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Williamsburg", category: "Nightlife", details: "AOne of the newest drinking dens to join Bedford Avenue’s trail of booze, this spot is owned by the same folks behind neighborhood staples Rocka Rolla and Skinny Dennis, so expect a familiar divey atmosphere, with the bonus of a pool table.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")

Idea.create(title: "Birds of a Feather", street:"1000 5th Ave", city:"New York", state: "NY", zip: "10028", neighborhood:"Williamsburg", category: "Food", details: "Spicy Sichuan noodles, dim sum & large plates to share are offered in a simple setting.", winter: true, summer: true, spring: true, fall: true, price_range: 2, duration: "a few hours", website: "https://www.metmuseum.org/", expiration: false, expiration_date: "")
