
require 'rubygems'
require 'sqlite3'

dir = '/users/home/masayuki/.mozilla/firefox/1dtrhim2.default-1450953083451/'
Dir.chdir(dir) do
  p `pwd`
  Dir.glob("*.sqlite") do |dbs|
    p dbs
  end
end

require 'rubygems'
require 'sqlite3'

dir = '/users/home/masayuki/.mozilla/firefox/1dtrhim2.default-1450953083451/'
Dir.chdir(dir) do
  p `pwd`
  Dir.glob("*.sqlite") do |dbs|
    p dbs
  end
end
