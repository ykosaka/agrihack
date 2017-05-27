class SearchController < ApplicationController
  helper_method :month_options

  def index
    @vegetable_informations = VegetableInformation.search(search_parmas)
    search_recipe(@vegetable_informations.first.vegetable.name)
  end

  def search_recipe(item)
    cookpad_url = 'https://cookpad.com/search/'
    url_escape = URI.escape(item)
    charset = nil
    html = open(cookpad_url + url_escape) do |f|
      f.read
    end
    doc = Nokogiri::HTML.parse(html, nil, charset)

    recipes = doc.css(".recipe-preview")
    @titles = recipes.css(".recipe-title")
    @images = recipes.css("img").map{|i| i.attribute('src').value}
  end

  private

  def search_parmas
    params.permit!
  end

  def month_options
    (1..12).to_a.map { |num| ["#{num}月", num] }
  end
end
