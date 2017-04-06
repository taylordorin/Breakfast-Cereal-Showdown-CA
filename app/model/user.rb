class User <ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :reviews
  has_many :cereals, through: :reviews
end
