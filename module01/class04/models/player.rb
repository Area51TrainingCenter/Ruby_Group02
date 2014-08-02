class Country < JSONModel
  from_url "tools.fifaguide.com/api/country/38"
end

class Player < JSONModel
  from_url "http://tools.fifaguide.com/api/topten/pac"

  def nation
    Country.all
  end

end