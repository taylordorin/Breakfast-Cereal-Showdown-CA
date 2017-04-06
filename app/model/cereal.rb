class Cereal < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :sugar_content, numericality: true

  has_many :reviews
  has_many :users, through: :reviews
end
