require 'csv'

veges = %w[だいこん  かぶ  にんじん  ごぼう たけのこ  れんこん  はくさい  こまつな  その他の菜類  ちんげんさい  キャベツ  ほうれんそう  ねぎ  ふき  うど  みつば しゅんぎく にら  セルリー  アスパラガス  カリフラワー  ブロッコリー  レタス パセリ きゅうり  かぼちゃ  なす  トマト ミニトマト ピーマン  ししとうがらし スイートコーン さやいんげん  さやえんどう  実えんどう そらまめ  えだまめ  かんしょ  ばれいしょ さといも  やまのいも たまねぎ  にんにく  しょうが  生しいたけ なめこ えのきだけ しめじ]
veges.each{|v|
  Vegetable.create(name: v)
}

markets = %w[いわき  さいたま  久留米 京都  仙台  八戸  北九州 名古屋 和歌山 大田  大阪  奈良  姫路  宇部  宇都宮 宮崎  岐阜  岡山  川崎  広島  徳島  新潟  札幌  松山  横浜  沖縄  浜松  盛岡  神戸  福井  福岡  金沢  長崎  青森  静岡  高松  高知  鹿児島]
fee = %w[50.4 46.8  61.2  50.4  50.4  46.8  61.2  46.8  50.4  46.8  50.4  50.4  50.4  54  46.8  61.2  46.8  54  46.8  54  57.6  46.8  61.2  57.6  46.8  100.8 46.8  61.2  50.4  46.8  61.2  46.8  61.2  46.8  46.8  57.6  57.6  61.2]

markets.each_with_index {|m,f|
  Market.create(name: m, delivery_fee: fee[f])
}

csv_path = Rails.root.join("lib/assets/agrihack.csv")
csv_data = CSV.read(csv_path, encoding: 'Shift_JIS:UTF-8')
1.upto(12){|month|
  csv_data.each {|row|
  name = row[0]
  market = row[1]
  veg_id = Vegetable.find_by(name: name).id
  mkt_id = Market.find_by(name: market).id
  price = row[3 + month]
  quantity = row[16 + month]
  VegetableInformation.create(vegetable_id: veg_id, market_id: mkt_id, month: month, price: price, quantity: quantity)
  }
} 

Rake::Task['setup:delicious_point'].invoke
