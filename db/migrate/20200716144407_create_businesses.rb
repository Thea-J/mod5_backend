class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :logo
      t.string :bio
      t.string :sector
      t.string :social_media
      t.string :promotions
      t.string :location
      t.integer :price_point

      t.timestamps
    end
  end
end
