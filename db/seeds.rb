require_relative('../models/artist')
require_relative('../models/album')
require('pry')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new( { 'name' => 'Smashing Pumpkins',
                        'label' => 'Constantinople' } )

artist2 = Artist.new( { 'name' => 'Nirvana',
                        'label' => 'Sub Pop' } )

artist3 = Artist.new( { 'name' => 'Arctic Monkeys',
                        'label' => 'Domino' } )

artist4 = Artist.new( { 'name' => 'Ed Sheeran',
                        'label' => 'Asylum' } )

artist1.save()
artist2.save()
artist3.save()
artist4.save()

album1 = Album.new( { 'name' => 'Gish',
                      'genre' => 'Grunge',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/7/7f/SmashingPumpkins-Gish.jpg',
                      'wholesale_price' => '5',
                      'retail_price' => '11',
                      'artist_id' => artist1.id,
                      'stock_amount' => 7
  } )

album2 = Album.new( { 'name' => 'Adore',
                      'genre' => 'Electronic Rock',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/b/b4/SmashingPumpkins-Adore.jpg',
                      'wholesale_price' => '4',
                      'retail_price' => '10',
                      'artist_id' => artist1.id,
                      'stock_amount' => 9
  } )

album3 = Album.new( { 'name' => 'Nevermind',
                      'genre' => 'Grunge',
                      'cover_art' => 'https://www.google.co.uk/search?q=nirvana+nevermind+cover+art&source=lnms&tbm=isch&sa=X&ved=0ahUKEwigrpnlt5vVAhUIIMAKHaiQBCIQ_AUICigB&biw=1280&bih=703#imgrc=yn_6ds1Lp-tbqM:',
                      'wholesale_price' => '6',
                      'retail_price' => '11',
                      'artist_id' => artist2.id,
                      'stock_amount' => 15
  } )

album4 = Album.new( { 'name' => 'Bleach',
                      'genre' => 'Grunge',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/a/a1/Nirvana-Bleach.jpg',
                      'wholesale_price' => '4',
                      'retail_price' => '11',
                      'artist_id' => artist2.id,
                      'stock_amount' => 9
  } )

album5 = Album.new( { 'name' => 'In Utero',
                      'genre' => 'Grunge',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/e/e5/In_Utero_%28Nirvana%29_album_cover.jpg',
                      'wholesale_price' => '4',
                      'retail_price' => '10',
                      'artist_id' => artist2.id,
                      'stock_amount' => 11
  } )

album6 = Album.new( { 'name' => 'Favourite Worst Nightmare',
                      'genre' => 'Indie Rock',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/a/ae/Favourite_Worst_Nightmare.jpg',
                      'wholesale_price' => '5',
                      'retail_price' => '12',
                      'artist_id' => artist3.id,
                      'stock_amount' => 2
  } )

album7 = Album.new( { 'name' => 'plus',
                      'genre' => 'Pop',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/3/3f/Ed_Sheeran_%2B_cover.png',
                      'wholesale_price' => '7',
                      'retail_price' => '12',
                      'artist_id' => artist4.id,
                      'stock_amount' => 1
  } )

album8 = Album.new( { 'name' => 'multiply',
                      'genre' => 'Pop',
                      'cover_art' => 'https://upload.wikimedia.org/wikipedia/en/a/ad/X_cover.png',
                      'wholesale_price' => '7',
                      'retail_price' => '13',
                      'artist_id' => artist4.id,
                      'stock_amount' => 2
  } )

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()
album8.save()
# anything =  album1.artists
# binding.pry
# nil
