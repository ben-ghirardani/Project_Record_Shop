require('pg')

class SQLRunner

  def self.run(sql)
    begin
      db = PG.connect( { dbname: 'record_shop', host: 'localhost' } )
      result = db.exec(sql)
    ensure
      db.close
    end
    return result
  end

end