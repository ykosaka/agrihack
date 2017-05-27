class SearchController < ApplicationController
  helper_method :month_options

  def index
    @vegetable_informations = VegetableInformation.search
  end

  private

  def month_options
    (1..12).to_a.map { |num| ["#{num}月", num] }
  end
end
