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

