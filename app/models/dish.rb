class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :cuisines,
             :class_name => "Cuisine",
             :counter_cache => true

  # Indirect associations

  has_many   :specialist_venues,
             :through => :bookmarks,
             :source => :venues

  has_many   :fans,
             :through => :bookmarks,
             :source => :users

  # Validations

end
