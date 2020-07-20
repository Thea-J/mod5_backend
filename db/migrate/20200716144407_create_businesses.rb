class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :logo
      t.string :bio
      t.string :sector
      t.string :social_media
      t.string :web_link
      t.string :promotions
      t.string :country
      t.string :city
      t.integer :price_point
      t.integer :business_owner_id

      t.timestamps
    end
  end
end
