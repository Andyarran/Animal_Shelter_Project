require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/animal.rb')
require_relative('./models/customer.rb')
require_relative('./controllers/animal_controller.rb')
require_relative('./controllers/customer_controller.rb')

get '/' do
  erb(:index)
end

get '/about/' do
 erb( :"about/index" )
end

get '/about/ourteam' do
  erb(:"/about/ourteam")
end

get '/about/branches' do
  erb(:"/about/branches")
end

get '/about/newsletter' do
  erb(:"/about/newsletter")
end

get '/about/history' do
  erb(:"/about/history")
end


# get '/customers/' do
#   erb( :"customers/index" )
# end

get '/contact/' do
 erb( :"contact/index" )
end

get '/contact/edinburgh' do
  erb(:"/contact/edinburgh")
end

get '/contact/glasgow' do
  erb(:"/contact/glasgow")
end

get '/contact/paisley' do
  erb(:"/contact/paisley")
end

get '/donate/' do
  erb(:"donate/index")
end

