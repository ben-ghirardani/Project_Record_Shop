require_relative('../db/sql_runner')
require_relative('./artist')

class Album

  # edit this to only include what's needed
  attr_accessor :id, :name, :genre, :cover_art, :wholesale_price, :retail_price, :artist_id, :stock_amount

  def initialize(options)
    @id = options['id'].to_i if options['id'] 
    @name = options['name']
    @genre = options['genre']
    @cover_art = options['cover_art']
    @wholesale_price = options['wholesale_price'].to_i
    @retail_price = options['retail_price'].to_i
    @artist_id = options['artist_id'].to_i
    @stock_amount = options['stock_amount'].to_i
  end

  def markup()
    result = @retail_price - @wholesale_price
    return result
  end

  def stock_levels
    # write a method that looks at stock amount and gives a warning if it's below a certain level. WHILE loop? Or just IF? 
  end

  # am I picking up artist_id correctly in the method below?
  def save()
    sql = "INSERT INTO albums (name, genre, cover_art, wholesale_price, retail_price, artist_id, stock_amount) VALUES ('#{@name}', '#{@genre}', '#{@cover_art}', '#{wholesale_price}', '#{@retail_price}', '#{@artist_id}', '#{@stock_amount}') RETURNING id"
    saved_album = SQLRunner.run(sql)
    @id = saved_album.first()['id'].to_i
  end

  def update
    sql = "UPDATE albums SET
          name = '#{@name}',
          genre = '#{@genre}',
          cover_art = '#{@cover_art}',
          wholesale_price = '#{@wholesale_price}',
          retail_price = '#{@retail_price}',
          artist_id = '#{@artist_id}',
          stock_amount = '#{@stock_amount}'
          WHERE id = #{@id}"
    SQLRunner.run(sql)  
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{@id};"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    albums = SQLRunner.run(sql)
    result = albums.map { |album| Album.new(album) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id};"
    album = SQLRunner.run(sql)
    result = Album.new(album.first)
    return result
  end
  

end