require('pry')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('sql_runner.rb')

Customer.delete_all