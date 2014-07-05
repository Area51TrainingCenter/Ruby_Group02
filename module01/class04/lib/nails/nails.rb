require 'rack'

require_relative 'controller'
require_relative 'routes_map'
require_relative 'router'
require_relative 'view'
require_relative 'model'


class Nails

  COMMON_HEADERS = {"Content-Type" => "text/html; charset=utf-8"}

  def call(env)
    [200, COMMON_HEADERS, Router.route(env, Nails.routes_map) ]
  rescue Exception => ex 
    puts ex.message
    puts ex.backtrace
    [404, {}, ["Pagina no encontrada"] ]
  end

  class << self 

    attr_reader :routes_map

    def boot
      Rack::Handler::WEBrick.run Nails.new
    end

    def routes(&block)
      @routes_map ||= RoutesMap.new
      @routes_map.instance_eval(&block)
      puts @routes_map.map
    end



  end


end