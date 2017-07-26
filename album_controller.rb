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

get '/albums/:id/edit' do
  @album = Album.find(params['id'])
  erb(:"albums/edit")
end

post '/albums/:id/edit' do
Album.new(params).update
redirect to '/stock'
end

get '/albums/:id/delete' do
  @album = Album.find(params['id'])
  erb(:"albums/delete")
end 

post '/albums/:id/delete' do
  album = Album.find(params['id'])
  album.delete
  redirect to '/albums'
end


