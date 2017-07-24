require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/animal_type.rb')

get '/animals' do
  @animals = Animal.all
  @types = AnimalType.all
  erb(:"animals/index")
end


get '/animals/:id' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/show")
end