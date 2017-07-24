require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/album')
require_relative('models/artist')


get '/albums/update-stock/:id' do
  @album_edit = Album.find(params['id'])
  erb(:"albums/update")
end

# set up a POST route so that data from the form can be posted back to the INDEX page.

post '/albums/update-stock/:id' do
Album.new(params).update
redirect to '/stock'
end


