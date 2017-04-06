class Review < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :cereal
  belongs_to :user
end

# Join table
