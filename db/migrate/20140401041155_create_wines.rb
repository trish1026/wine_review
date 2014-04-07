class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.string :winery
      t.string :country
      t.string :string
      t.string :varietal
      t.string :string

      t.timestamps
    end
  end
end
