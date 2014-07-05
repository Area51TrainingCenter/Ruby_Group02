class RoutesMap

  attr_reader :map

  def initialize
    @map = {}
  end

  def get(route)
    create_route(route, "get")
  end

  def post(route)
    create_route(route, "post")
  end

  def create_route(route, method)
    controller_name, action_name  = route.values.first.split("#")
    path                          = route.keys.first
    @map.merge! {method: method, controller: controller_name, action: action_name, path: path}
  end

  def matches?(path)
    @map.any? {|route| route.keys.any?   }
  end


end