require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('album_controller')
require_relative('artist_controller')

get '/stock' do
  @albums = Album.all()
  erb ( :"albums/index" )
end


get '/increment-stock/:id' do
# find album by id, create a method in albums to increment by one and then redirect back the tock page. 
end

get '/albums/new' do
  erb(:"albums/new")
end




