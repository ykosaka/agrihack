class Market < ApplicationRecord
  validates :name, uniqueness: true
end
