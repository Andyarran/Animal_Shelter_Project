require('pry')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/animal_type.rb')
require_relative('sql_runner.rb')

Customer.delete_all()
Animal.delete_all()
AnimalType.delete_all()

cat = AnimalType.new ( { 'name' => 'cat' } )
dog = AnimalType.new ( { 'name' => 'dog' })
rat = AnimalType.new ( { 'name' => 'rat'})

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


animal1 = Animal.new({'name' => 'Tizer', 'type_id' => dog.id, 'ready' => 'Yes', 'sex' => 'Male', 'age' => '7 Years old', 'description' => 'Hi I''m Tizer. I''m an excitable boy who has bags of energy so I''ll definitely need an active home so I can get lots of walks and opportunities to have a good run around. I will need a home with a secure garden so there''s no opportunity to escape, as I''m so inquisitive that I always want to see what''s going on beyond the garden. I would suit living with teenaged children.', 'image' => 'images/animals/tizer.jpg'  })
animal1.save()

animal2 = Animal.new({'name' => 'Keith', 'type_id' => cat.id, 'ready' => 'Yes', 'sex' => 'Male', 'age' => '6 Years old', 'description' => 'When Keith came to stay with us his skin was very sore and he had lost a lot of his hair, we discovered he had allergies which had caused him to become itchy, but with all the scratching and no treatment he was in a sorry state. It has taken a long time but D.J. is now back to full health, and is ready to look for a forever home with an understanding owner who will give him his allergy medication and watch out for any itchy patches developing. He is a very friendly and cuddly boy who has lots of love to give, he''s always happy to be made a fuss of, and loves curling up on a willing lap. He is quite a vocal boy and likes to talk to you, and tell you if he''s not getting enough attention. He would suit living in a home with older children, where I would be the only cat.', 'image' => 'images/animals/keith.jpg' })
animal2.save()

animal3 = Animal.new ({'name' => 'Alex', 'type_id' => cat.id, 'ready' => 'Yes', 'sex' => 'Male', 'age' => '1 Year old', 'description' => 'Alex, a 1 year old ,brought to CodeClan Animal Shelter after being found straying, is shy and gentle, but just needs a confident owner to make him a bit braver. A home with kids over about 7 and/or other cats might suit him well, as would a garden to explore.', 'image' => 'images/animals/alex.jpg' })
animal3.save

animal4 = Animal.new  ({'name' => 'John', 'type_id' => rat.id, 'ready' => 'No', 'sex' => 'Male', 'age' => '2 Years old', 'description' => 'Stewart, a 4 years old, brought to CodeClan Animal Shelter after being riffling through a restricted area in the car park in the sky, is brave and cheeky, but just needs a confident owner to put him in his place. A home with adults over 50 and/or other rats might suit him well, as would a garden to explore.', 'image' => 'images/animals/john.jpg' })
animal4.save

animal5 = Animal.new  ({'name' => 'Alfie', 'type_id' => dog.id, 'ready' => 'yes', 'sex' => 'Female', 'age' => '4 Years old', 'description' => 'Alfie is a gorgeous wee girl who has lots of potential, however only an experienced owner without children will be considered to rehome him. He can be very protective of his toys, and although we have been working on this issue and seeing a lot of great progress, this work will need to continue in his new home. She is very intelligent and has a lot of energy so she likes to be kept occupied, whether out for a walk, playing with her doggy friends, playing with her toys, or hunting for hidden doggy treats around the house. Alfie would like a home with another dog who can keep him entertained and help him learn good behaviours.', 'image' => 'images/animals/alfie.jpg' })
animal5.save

animal6 = Animal.new  ({'name' => 'Brian', 'type_id' => rat.id, 'ready' => 'yes', 'sex' => 'Female', 'age' => '1 Years old', 'description' => 'As you can see from my photo I are very cute! I am Brian and I am a very sweet girl and love to be out and about exploring new places and finding nice treats.I get a little nervous at times but love the quiet life getting fuss and chilling in a bed, but I do like to explore when I feel like it.', 'image' => 'images/animals/brian.jpg' })
animal6.save

animal7 = Animal.new  ({'name' => 'Magic', 'type_id' => dog.id, 'ready' => 'yes', 'sex' => 'Male', 'age' => '6 Years old', 'description' => 'Hello my name is Magic. I have a very an affectionate nature and I love to be made a fuss of. I am an energetic boy who is always keen to be on the go, and I''m at my happiest when someone will throw a ball for me. I am looking for a forever home with an active owner who is willing to carry on with my training. I would suit a family with teenaged children, where there will be someone available to keep me company through the day.', 'image' => 'images/animals/magic.jpg' })
animal7.save

animal8 = Animal.new  ({'name' => 'Max', 'type_id' => cat.id, 'ready' => 'yes', 'sex' => 'Male', 'age' => '3 Years old', 'description' => 'When Max came to stay with us his skin was very sore and he had lost a lot of his hair, we discovered he had allergies which had caused him to become itchy, but with all the scratching and no treatment he was in a sorry state. It has taken a long time but D.J. is now back to full health, and is ready to look for a forever home with an understanding owner who will give him his allergy medication and watch out for any itchy patches developing. He is a very friendly and cuddly boy who has lots of love to give, he''s always happy to be made a fuss of, and loves curling up on a willing lap. He is quite a vocal boy and likes to talk to you, and tell you if he''s not getting enough attention. He would suit living in a home with older children, where I would be the only cat.', 'image' => 'images/animals/max.jpg' })
animal8.save

animal9 = Animal.new  ({'name' => 'Fergi', 'type_id' => dog.id, 'ready' => 'yes', 'sex' => 'Female', 'age' => '8 Years old', 'description' => 'Fergi is a gorgeous wee girl who has a great character. She has been with us for quite a while now as she needed to have two cruciate ligament surgeries before she could look for a home. She is a confident girl and enjoys being taken on walks around our centre so she can say hello to all the staff and visitors. She also enjoys her own space and likes to spend time snuggled up in her comfy bed. She is very playful and is always lots of fun to have around. She would suit a home with teenaged children, and although she gets on with some dogs, she would still prefer to be the only dog in her new home.', 'image' => 'images/animals/fergi.jpg' })
animal9.save

animal10 = Animal.new  ({'name' => 'Rex', 'type_id' => dog.id, 'ready' => 'yes', 'sex' => 'Male', 'age' => '4 Years old', 'description' => 'Hi my name is Rex. I was so unhappy to find myself looking for another home when my last owner sadly passed away. We were very close and I''m finding life a little stressful without him. I am used to being with someone at all times, and especially after loosing my owner I become very upset if I''m left alone, so I really need an understanding family who won''t mind me sleeping in the bedroom with them, and following them around all day. The team here think that my anxiety will improve over time but it will be a slow process, and I will need constant company until I feel relaxed enough to spend time by myself. I am a sweet natured boy who is very affectionate and loyal, I have lots of energy and love to play, so I''m always lots of fun to have around. I get on with other dogs, but can be nervous in strange situations so I''m keen to carry on working on my socialising skills.', 'image' => 'images/animals/rex.jpg' })
animal10.save

