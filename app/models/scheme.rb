class Scheme < ActiveRecord::Base

  belongs_to :creator, :class_name => "User"
  belongs_to :excerpt
  has_many :color_schemes
  has_many :colors, through: :color_schemes

end