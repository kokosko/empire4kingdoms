class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :email
      t.string :name
      t.string :image
      t.string :link
      t.string :oauth_token
      t.time :oauth_expires_at
    end
  end
end
