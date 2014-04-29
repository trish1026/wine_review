class Review < ActiveRecord::Base

  STARS = 1..5

  validates :name, :comment, presence: true
  
  validates :comment, 
            length: { minimum: 15, message: 'should have a bit more!' },
            unless: 'comment.blank?'
  
  validates :stars, inclusion: { in: STARS, 
  	 message: "must be from #{STARS.first} to #{STARS.last}" }

  belongs_to :wine

end
