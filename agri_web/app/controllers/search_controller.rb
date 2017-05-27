class SearchController < ApplicationController
  helper_method :month_options

  def index
    @vegetable_informations = VegetableInformation.search(search_parmas)
  end

  private

  def search_parmas
    params.permit!
  end

  def month_options
    (1..12).to_a.map { |num| ["#{num}月", num] }
  end
end
