class Photo < ActiveRecord::Base
  has_many :user_photos
  has_many :users, through: :user_photos

  def self.search(params)
    year, month, day = params[:year].to_i, params[:month].to_i, params[:day].to_i
    created_from = :beginning_of_year
    created_till = :end_of_year

    unless day.zero?
      created_from = :beginning_of_day
      created_till = :end_of_day  
    else
      day = 1
      unless month.zero?
        created_from = :beginning_of_month
        created_till = :end_of_month
      else
        month = 1
      end
    end

    date = Date.new(year, month, day)
    range = date.send(created_from)..date.send(created_till)
    Photo.where( created_at: range )

  end

end
