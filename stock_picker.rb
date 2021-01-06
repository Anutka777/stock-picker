def stock_picker(prices)
  analysis_report = {}
  prices_dub = []
  prices.each { |e| prices_dub.push(e) }
  prices.each_with_index do |price_to_buy, buy_day|
    prices_dub.each_with_index do |price_to_sell, sell_day|
      if buy_day < sell_day
      analysis_report[price_to_sell - price_to_buy] = [buy_day, sell_day]
      end
    end
  end
  result = analysis_report.max_by { |key, value| key }
  result[1]
end

# p stock_picker([17,3,6,9,15,8,6,1,10])
# p stock_picker([10,12,4,5,9])
# p stock_picker([14,20,4,12,5,11])