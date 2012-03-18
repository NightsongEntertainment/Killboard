class Bloodline < ActiveRecord::Base

  # Associations
  belongs_to :race
  has_many :ancestries

end
