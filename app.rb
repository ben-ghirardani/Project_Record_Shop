require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('album_controller')
require_relative('artist_controller')

get '/' do
  erb( :index )
end
