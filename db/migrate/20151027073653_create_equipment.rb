class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.integer :class
      t.integer :accessory
      t.integer :kind
      t.integer :level, default: 0
      t.decimal :params_comm, array: true, default: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      t.decimal :params_cast, array: true, default: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end
  end
end
