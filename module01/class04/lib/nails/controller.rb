class Controller
  def render (action, params = {})
    controller_name = self.class.name.gsub("Controller", "").downcase
    View.render controller_name, action, params
  end
end

module Color
  def color
    ####
  end
end

module Paint
  def color
    ###
  end

end

class Employee
  include Paint
  include Color
end