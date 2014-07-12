class Router
  def self.route(env)
    _, controller, action, *etc = env["PATH_INFO"].split("/") 
    action ||= "empty" 
    klass = Object.const_get("#{controller.capitalize}Controller")
    klass.new(env).send(action, etc)
  end
end