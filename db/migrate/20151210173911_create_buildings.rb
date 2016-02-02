class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :description
      t.integer :level
      t.integer :wood
      t.integer :stone
      t.integer :charcoal
      t.integer :oil
      t.integer :glass
      t.integer :architect
    end
  end
end
