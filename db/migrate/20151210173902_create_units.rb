class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :image
      t.integer :kind
      t.integer :power
      t.integer :defmelee
      t.integer :defranged
      t.integer :capasity
      t.integer :speed
      t.integer :food
    end
  end
end
