class Review < ActiveRecord::Base

  STARS = 1..5

  validates :name, :comment, :stars, :comment, presence: true

  belongs_to :wine

end
