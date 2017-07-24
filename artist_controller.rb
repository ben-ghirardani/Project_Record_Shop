require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/album')
require_relative('models/artist')

get '/stock' do
  @stock_list = Artist. **********
  erb ( :"artists/index" )
end