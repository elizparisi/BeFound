class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.string :category
      t.string :image_url
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
