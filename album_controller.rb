require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/album')
require_relative('models/artist')

get '/albums' do
  @albums = Album.all()
  erb(:"albums/index")
end

get '/albums/new' do
  @artists = Artist.all()
  @albums = Album.all()
  erb(:"albums/new")
end

post '/albums' do
 Album.new(params).save
 redirect to '/stock'
end

get '/albums/update-stock/:id' do
  @album_edit = Album.find(params['id'])
  erb(:"albums/update")
end

post '/albums/update-stock/:id' do
Album.new(params).update
redirect to '/stock'
end


