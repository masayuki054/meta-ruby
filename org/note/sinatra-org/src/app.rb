
require 'sinatra'

get '/' do
  'OK'
end

get '/dir' do
  ls = <<EOT
#{`ls ../*.org`}
EOT
  ls
end

get '/*.org' do |doc|
  `org2html #{doc}.org`
  `cat #{doc}.ht`
end
