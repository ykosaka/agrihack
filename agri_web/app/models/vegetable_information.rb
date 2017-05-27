class VegetableInformation < ApplicationRecord

  class << self
    def search
      all
    end
  end
end
