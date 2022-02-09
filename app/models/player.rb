class Player < ApplicationRecord
  validates :full_name, presence: true
end
