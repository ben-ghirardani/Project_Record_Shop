require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/album')
require_relative('models/artist')


# get '/stock' do
#   @albums = Album.all()
#   erb ( :"albums/index" )
# end