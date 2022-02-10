class Match < ApplicationRecord
  has_many :players, dependent: :destroy

  validates :place, :time, presence: true
end
