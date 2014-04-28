class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :start
      t.string :integer
      t.text :comment
      t.string :wine
      t.string :references

      t.timestamps
    end
  end
end
