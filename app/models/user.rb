class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :bookmarked_venues,
             :through => :bookmarks,
             :source => :venues

  has_many   :bookmarked_dishes,
             :through => :bookmarks,
             :source => :dishes

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
