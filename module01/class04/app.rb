require_relative 'lib/nails/nails'

Dir["./controllers/*.rb"].each {|file| require file }
Dir["./models/*.rb"].each {|file| require file }


Nails.routes do 
  get "hola"  => "twitter#index"
  post "adios" => "facebook#index" 
end

Nails.boot
