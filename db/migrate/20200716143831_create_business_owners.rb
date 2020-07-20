class CreateBusinessOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :business_owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :profile_picture
      t.string :bio
      t.string :businesses
      t.string :social_media

      t.timestamps
    end
  end
end
