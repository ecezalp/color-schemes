class Color < ActiveRecord::Base
  has_many :color_schemes
  has_many :schemes, through: :color_schemes

end
