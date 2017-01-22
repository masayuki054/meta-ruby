# src/app.rb
require 'sinatra'

get '/' do
  'OK'
end

get '/org' do
  Dir.glob('../notes/*.org').join("\n")
end

get '/org/*.org' do |doc|
  `(cd ../notes; sh ~/bin/org2html #{doc}.org)`
  `cat ../notes/#{doc}.html`
end
