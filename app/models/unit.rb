class Unit < ActiveRecord::Base
  enum kind: [:melee, :ranged]
  # scope :visibility, -> (visibility) { where('show_link = ?', visibility) }

  # scope :server, -> (server) { where('server_id = ?', server) }
end
