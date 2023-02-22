class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      add_reference :restaurant, :review, index: true

      t.timestamps
    end
  end
end
