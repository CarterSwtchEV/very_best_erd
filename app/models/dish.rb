class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisines,
             :class_name => "Cuisine",
             :counter_cache => true

  # Indirect associations

  # Validations

end
