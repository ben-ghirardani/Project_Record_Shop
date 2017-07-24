require_relative('../db/sql_runner')
require_relative('./album')

class Artist

  # edit this to only include what's needed
  attr_accessor :id, :name, :label

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @label = options['label']
  end

  def save()
    sql = "INSERT INTO artists (name, label) VALUES ( '#{@name}', '#{@label}' ) RETURNING id"
    saved_artist = SQLRunner.run(sql)
    @id = saved_artist.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artists SET
          name = '#{@name}',
          label = '#{@label}'
          WHERE id = '#{@id}'"
    SQLRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM artists WHERE id = #{@id}"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SQLRunner.run(sql)
    result = artists.map { |artist| Artist.new(artist) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id};"
    artist = SQLRunner.run(sql)
    result = Artist.new(artist.first)
    return result
  end


end