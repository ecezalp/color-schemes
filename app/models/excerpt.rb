class Excerpt < ActiveRecord::Base

  belongs_to :writer, :class_name => "User"
  has_many :schemes
  has_many :colorschemes, through: :schemes
  has_many :colors, through: :colorschemes
  has_many :creators, through: :schemes, :class_name => "User"

end