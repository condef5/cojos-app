class Player < ApplicationRecord
  belongs_to :match

  validates :full_name, presence: true
end
