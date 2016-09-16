class User < ActiveRecord::Base

  has_many :excerpts, :foreign_key => 'writer_id'
  # has_many :schemes, through: :excerpts, :foreign_key => 'writer_id'
  # has_many :color_schemes, through: :schemes, :foreign_key => 'writer_id'
  # has_many :colors, through: :colorschemes, :foreign_key => 'writer_id'

  has_many :schemes, :foreign_key => 'creator_id'
  has_many :color_schemes, through: :schemes, :foreign_key => 'creator_id'
  has_many :colors, through: :colorschemes, :foreign_key => 'creator_id'

end
