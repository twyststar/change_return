require('sinatra')
require('sinatra/reloader')
require('./lib/coin_methd')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

post ('/form') do
  @quarters = params.fetch("name").coin_methd().at(0)
  @dimes = params.fetch("name").coin_methd().at(1)
  @nickles = params.fetch("name").coin_methd().at(2)
  @pennies = params.fetch("name").coin_methd().at(3)
  erb(:index)
end
