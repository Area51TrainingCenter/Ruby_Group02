require './lib/nails/nails'
Dir["./controllers/*.rb"].each {|file| require file }

Nails.boot
