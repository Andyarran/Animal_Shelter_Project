require('pry')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('sql_runner.rb')

Customer.delete_all()


customer1 = Customer.new({'first_name' => 'Andrew', 'last_name' => 'Weir', 'address' => '11 Frankfield Road, Dalgety Bay, KY11 9LP', 'telephone' => '01319999999' })
customer1.save
customer2 = Customer.new({'first_name' => 'John', 'last_name' => 'Harper', 'address' => '1 Edinburgh Castle, The Centre, EH1 1AA', 'telephone' => '01311111111' })
customer2.save
customer3 = Customer.new({'first_name' => 'Alex', 'last_name' => 'Bazlinton', 'address' => '1 Holyrood Palace, Bottom of the Royal Mile, EH1 9BB', 'telephone' => '01315555555' })
customer3.save
customer4 = Customer.new({'first_name' => 'Stewart', 'last_name' => 'MacKenzie-Leigh', 'address' => '666 Darkwood Crescent, Ferguslie Park, Paisley, PA3 1JR', 'telephone' => '01411111111' })
customer4.save

#####################################################

animal1 = Animal.new({'name' => 'Tizer', 'type' => 'Dog', 'ready' => 'true', 'sex' => 'Male', 'age' => '7 Years old', 'description' => 'Hi I''m Tizer. I''m an excitable boy who has bags of energy so I''ll definitely need an active home so I can get lots of walks and opportunities to have a good run around. I will need a home with a secure garden so there''s no opportunity to escape, as I''m so inquisitive that I always want to see what''s going on beyond the garden. I would suit living with teenaged children.' })
animal1.save
