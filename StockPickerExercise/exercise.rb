def stock_picker(prices)

    # making a copy on an input prices - somewhy can't find index otherwise
    copy = []
    copy.replace(prices)
  
    best_buy = 0
    best_sell = 0                                    # [2,3,4,5]
    profit = 0
    selling_days = prices
   
  
    # iterating through prices removing all previous days
    prices.each do |buy|
      selling_days.shift
      selling_days.each do |sell|
  
        # if the profit is higher than the one we have, we pick those better prices
        if sell - buy > profit
          profit = sell - buy
          best_buy = buy
          best_sell = sell
        end
      end
    end
  
    # returning indexes from the copy of prices
    result = [copy.index(best_buy), copy.index(best_sell)]
  end
  
  # calling the method to check it
  
 print stock_picker([2,3,4,5])
  # should give
  # [0,]  # for a profit of $5 - $2 = $3 






