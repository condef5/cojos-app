class Match < ApplicationRecord
  validates :place, :time, presence: true
end
