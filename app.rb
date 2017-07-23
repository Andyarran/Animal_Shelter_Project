require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/animal.rb')
require_relative('./models/customer.rb')
require_relative('./controllers/animal_controller.rb')
require_relative('./controllers/customer_controller.rb')

get '/' do
  erb(:index)
end