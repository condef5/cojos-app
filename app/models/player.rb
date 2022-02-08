class Player < ApplicationRecord
  validates :full_name, presence: true
  scope :all_except, ->(player) { where.not(id: player) }
end
