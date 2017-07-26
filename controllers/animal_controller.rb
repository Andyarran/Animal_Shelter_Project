require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/animal_type.rb')

get '/animals' do
  if params[:type] != nil
    @animals = Animal.find_by_type(params[:type].to_i)
  else
    @animals = Animal.all
  end

  @types = AnimalType.all

  erb(:"animals/index")
end

post '/animals' do
  animal = Animal.new(params)
  animal.save
 redirect to ('/animals')
 end

post '/animals/:id/delete' do
  animal = Animal.find(params['id'].to_i) #breaks
  animal.delete
  redirect to ('/animals')
end

get '/animals/:id/edit' do
  @animal = Animal.find(params['id'].to_i)
  @types = AnimalType.all
  erb(:'/animals/edit')
end

post '/animals/:id' do
  animal = Animal.new(params)
  animal.update
  redirect to ('/animals')
end