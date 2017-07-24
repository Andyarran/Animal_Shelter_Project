require('pry')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/animal_type.rb')
require_relative('sql_runner.rb')

Customer.delete_all()
Animal.delete_all()
AnimalType.delete_all()

cat = AnimalType.new ( { 'type' => 'cat' } )
dog = AnimalType.new ( { 'type' => 'dog' })
rat = AnimalType.new ( { 'type' => 'rat'})

cat.save
dog.save
rat.save


customer1 = Customer.new({'first_name' => 'Andrew', 'last_name' => 'Weir', 'address' => '11 Frankfield Road, Dalgety Bay, KY11 9LP', 'telephone' => '01319999999' })
customer1.save
customer2 = Customer.new({'first_name' => 'John', 'last_name' => 'Harper', 'address' => '1 Edinburgh Castle, The Centre, EH1 1AA', 'telephone' => '01311111111' })
customer2.save
customer3 = Customer.new({'first_name' => 'Alex', 'last_name' => 'Bazlinton', 'address' => '1 Holyrood Palace, Bottom of the Royal Mile, EH1 9BB', 'telephone' => '01315555555' })
customer3.save
customer4 = Customer.new({'first_name' => 'Stewart', 'last_name' => 'MacKenzie-Leigh', 'address' => '666 Darkwood Crescent, Ferguslie Park, Paisley, PA3 1JR', 'telephone' => '01411111111' })
customer4.save


animal1 = Animal.new({'name' => 'Tizer', 'type_id' => dog.id, 'ready' => 'true', 'sex' => 'Male', 'age' => '7 Years old', 'description' => 'Hi I''m Tizer. I''m an excitable boy who has bags of energy so I''ll definitely need an active home so I can get lots of walks and opportunities to have a good run around. I will need a home with a secure garden so there''s no opportunity to escape, as I''m so inquisitive that I always want to see what''s going on beyond the garden. I would suit living with teenaged children.' })
animal1.save()

animal2 = Animal.new({'name' => 'Keith', 'type_id' => cat.id, 'ready' => 'true', 'sex' => 'Male', 'age' => '6 Years old', 'description' => 'When Keith came to stay with us his skin was very sore and he had lost a lot of his hair, we discovered he had allergies which had caused him to become itchy, but with all the scratching and no treatment he was in a sorry state. It has taken a long time but D.J. is now back to full health, and is ready to look for a forever home with an understanding owner who will give him his allergy medication and watch out for any itchy patches developing. He is a very friendly and cuddly boy who has lots of love to give, he''s always happy to be made a fuss of, and loves curling up on a willing lap. He is quite a vocal boy and likes to talk to you, and tell you if he''s not getting enough attention. He would suit living in a home with older children, where I would be the only cat.' })
animal2.save()

animal3 = Animal.new ({'name' => 'Alex', 'type_id' => cat.id, 'ready' => 'true', 'sex' => 'Male', 'age' => '1 Year old', 'description' => 'Alex, a 1 year old ,brought to CodeClan Animal Shelter after being found straying, is shy and gentle, but just needs a confident owner to make him a bit braver. A home with kids over about 7 and/or other cats might suit him well, as would a garden to explore.' })
animal3.save

animal4 = Animal.new  ({'name' => 'Stewart', 'type_id' => rat.id, 'ready' => 'true', 'sex' => 'Male', 'age' => '2 Years old', 'description' => 'Stewart, a 4 years old, brought to CodeClan Animal Shelter after being riffling through a restricted area in the car park in the sky, is brave and cheeky, but just needs a confident owner to put him in his place. A home with adults over 50 and/or other rats might suit him well, as would a garden to explore.' })
animal4.save

