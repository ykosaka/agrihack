class SearchController < ApplicationController
  helper_method :prices_options
  helper_method :vegetable_number_options

  def index
    @vegetable_informations = VegetableInformation.search
  end

  private

  def prices_options
    (1..10).to_a.map { |n| n * 1000 }
  end

  def vegetable_number_options
    (1..10).to_a
  end
end
