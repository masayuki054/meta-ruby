
require 'rubygems'
require 'sqlite3'

dir = '/users/home/masayuki/.mozilla/firefox/1dtrhim2.default-1450953083451/'
Dir.chdir(dir) do
  Dir.glob("*.sqlite").each do |db|
    begin
      db = SQLite3::Database.open(db)
      results = db.execute("select * from sqlite_master")
      p results
    rescue  => e
      puts e
    end
  end
end
