class Wine < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

VARIETALS = ['Merlot', 'Pinot Noir', 'Tempranillo' ]

validates :name, :year, :country, :varietal, presence: true
validates :year,
  numericality: { only_integer: true, greater_than_or_equal_to: 0 },
  unless: "year.present?"

validates :varietal, inclusion: { in:VARIETALS }

  def average_stars
  	reviews.average(:stars)
  end
end
