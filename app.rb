require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('album_controller')
require_relative('artist_controller')

get '/stock' do
  @albums = Album.all()
  erb ( :"albums/index" )
end


get '/albums/new' do
  erb(:"albums/new")
end




