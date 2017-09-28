class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhoods,
             :class_name => "Neighborhood",
             :foreign_key => "neighborhood_id",
             :counter_cache => true

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
