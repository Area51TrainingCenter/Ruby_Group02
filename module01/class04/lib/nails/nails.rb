require 'rack'

require_relative 'controller'
require_relative 'router'
require_relative 'view'


class Nails

  COMMON_HEADERS = {"Content-Type" => "text/html; charset=utf-8"}

  def call(env)
    [200, COMMON_HEADERS, Router.route(env) ]
  rescue Exception => ex 
    puts ex.message
    puts ex.backtrace
    [404, {}, ["Pagina no encontrada"] ]
  end

  def self.boot
    Rack::Handler::WEBrick.run Nails.new
  end

end