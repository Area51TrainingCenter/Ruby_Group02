class Router
  def self.route(env)
    _, controller, action, *etc = env["PATH_INFO"].split("/") 
    action   ||= "empty" 
    klass      = Object.const_get("#{controller.capitalize}Controller")
    controller = klass.new(env)
    controller.send(action, etc)
  end
end