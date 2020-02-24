class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.integer :rating
      t.text :content
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
