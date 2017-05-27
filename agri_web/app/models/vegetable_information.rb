class VegetableInformation < ApplicationRecord
  belongs_to :vegetable
  belongs_to :market

  class << self
    def search(options)
      rel = VegetableInformation.joins(:vegetable, :market)
      rel = rel.where(month: options[:month]) if options[:month].present?
      rel = rel.where(id: get_most_cheaper_ids(rel))
      rel
    end

    def get_most_cheaper_ids(vegetable_informations)
      # FIX: ここバグってるので直す
      result = vegetable_informations.select('id, min(price, delivery_fee) as cost').group(:id)
      result.pluck(:id)
    end
  end
end
