function sorted_arr = selectionSort(arr)

 n = length(arr);
    
    for i = 1:n-1
       
        min_idx = i;
        
       
        for j = i+1:n
            if arr(j) < arr(min_idx)
                min_idx = j;
            end
        end
        
       if min_idx ~= i
        temp = arr(i);
        arr(i) = arr(min_idx);
        arr(min_idx) = temp;
       end
    end
    
    sorted_arr = arr;
   
end
arr=[7, 4, 10, 8, 3, 1];
 sorted_arr = selectionSort(arr);
   disp('Sorted array:');
    disp(sorted_arr);


