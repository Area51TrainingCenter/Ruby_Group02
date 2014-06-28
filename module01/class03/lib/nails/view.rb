require 'erubis'
require 'json'

class View

  def self.render(controller, action, params={} )     
    path = File.join(".","views", controller,"#{action}.html")
    template = File.read(path)
    [Erubis::Eruby.new(template).result(params)]
  end

end