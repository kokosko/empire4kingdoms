class Equipment < ActiveRecord::Base
  # has_many :equip_params
  # PARAMS_COMMANDER = %w{ hands arrows wall gate moat speed costs damage destroy glory detect honor resources }
  # PARAMS_CASTELLAN = %w{ hands arrows wall gate moat speed damage glory detect resources occupation }

  enum class: [:epic, :legendary, :unique]
  enum accessory: [:commander, :castellan]
  enum kind: [:armor, :weapon, :helmet, :artifact]
end
