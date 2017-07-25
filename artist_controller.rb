require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/album')
require_relative('models/artist')

get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end


get '/artists/new' do
  erb(:"artists/new")
end

post '/artists/new' do
  Artist.new(params).save
  redirect '/artists'
end


get '/artists/:id/delete' do
  @artist = Artist.find(params['id'])
  erb(:"artists/delete")
end 

post '/artists/:id/delete' do
  artist = Artist.find(params['id'])
  artist.delete
  redirect to '/artists'
end