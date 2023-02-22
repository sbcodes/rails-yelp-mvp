class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.string :author
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
