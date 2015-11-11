class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :email
      t.string :name
      t.string :image
      t.string :link
      t.string :oauth_token
      t.time :oauth_expires_at
      t.integer :x
      t.integer :y
      t.boolean :show_link, default: false
      t.string :nickname
      t.belongs_to :server
    end
  end
end
