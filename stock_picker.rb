def stockPicker(arr)
    bestDays = [0, 1]    
    # puts (arr[answer[0]])

    arr[0...arr.length - 1].each_with_index do |buy, indexBuy|
        
        
        arr[indexBuy+1...arr.length].each_with_index do |sell, indexSell|
        
            if ((sell - buy) > (arr[bestDays[1]] - arr[bestDays[0]]))
                bestDays[0] = indexBuy
                bestDays[1] = indexBuy + 1 + indexSell
                
            end   
    
        end
        # puts
    end    
    # print bestDays
    # account
    bestDays
end

arr = [17,3,6,9,15,8,6,1,10]
print stockPicker(arr)
puts ("for a profit $#{arr[stockPicker(arr)[1]]} - $#{arr[stockPicker(arr)[0]]} == $#{arr[stockPicker(arr)[1]] - arr[stockPicker(arr)[0]]}")
