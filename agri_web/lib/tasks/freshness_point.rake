namespace :setup do
  desc "旬を設定" #=> 説明

  task :delicious_point => :environment do
    Vegetable.all.each do |veg|
      items = VegetableInformation.where(vegetable_id: veg.id).order(quantity: :desc)
      items.each_with_index do |item, index|
        item.update(delicious_point: 12 - index)
      end
    end
  end
end