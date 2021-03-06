class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :stars
      t.string :integer
      t.text :comment
      t.string :wine
      t.references :wine, index: true

      t.timestamps
    end
  end
end
