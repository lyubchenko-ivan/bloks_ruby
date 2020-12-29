def bubble_sort(arr)

    for i in (0...(arr.length - 1))
        
        for j in (1...(arr.length - i)) do
            if (arr[j-1] >= arr[j]) then
                temp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = temp
            end    
        end
        
    end    

    return arr
end  



def bubble_sort_by (arr)
    for i in (0...(arr.length - 1))
        for j in (1...(arr.length - i)) do
            if (yield(arr[j-1], arr[j]) < 0)  then
                temp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = temp
            end    
        end
        
    end    
    return arr
end    


