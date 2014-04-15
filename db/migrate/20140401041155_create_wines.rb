class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.string :winery
      t.string :country
      t.string :varietal
<<<<<<< HEAD
=======

>>>>>>> 8c7781778047ce162c06433a099ef6d6271a45db
      t.timestamps
    end
  end
end
