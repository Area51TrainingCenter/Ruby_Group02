class Router
  def self.route(env, routes_map)
    @env        = env
    @path       = env["PATH_INFO"]
    @routes_map = routes_map 

    if matches_route_map?
      redirect_to_route
    else
      default_redirect
    end
  end

  def matched_route?
    @routes_map.matches?(@path)
  end

  def redirect_to_route
    controller_name, action = @routes_map.match_for(@path)
    controller(controller_name).send(action, {})
  end


  def self.default_redirect(path)
    _, controller, action, *etc = path.split("/") 
    action   ||= "empty" 
    controller = controller(name).new(@env)
    controller.send(action, etc)
  end

  def controller(name)
    Object.const_get("#{name.capitalize}Controller")
  end

end