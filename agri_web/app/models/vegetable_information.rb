class VegetableInformation < ApplicationRecord
  belongs_to :vegetable
  belongs_to :market

  class << self
    def search(options)
      rel = VegetableInformation.joins(:vegetable, :market).where.not(quantity: 0)
      rel = rel.where(month: options[:month]) if options[:month].present?
      rel = rel.where(id: get_cheapest_ids(rel))
      rel = rel.order(delicious_point: :desc)
      rel = rel.limit(10)
      rel
    end

    def get_cheapest_ids(vegetable_informations)
      output = []

      vegetable_ids = vegetable_informations.pluck(:vegetable_id).uniq
      vegetable_ids.each do |vegetable_id|
        a = vegetable_informations.where(vegetable_id: vegetable_id).where.not(quantity: 0)
        a = a.order('(price + delivery_fee) asc')
        output << a.first.id if a.first.present?
      end
      output
    end
  end
end
