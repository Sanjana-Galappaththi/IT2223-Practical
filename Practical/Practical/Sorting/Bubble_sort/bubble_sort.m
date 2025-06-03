function sortedArray = bubbleSort(arr)
    n = length(arr);
        for i = 1:n
            for j = 1:n-i 
                if arr(j) > arr(j+1)
                    temp = arr(j);
                    arr(j)=arr(j+1);
                    arr(j+1)=temp;
                end
            end
        end
sortedArray = arr;
end


arr = [64,34,25,12,22,11,90];
sortedArr = bubbleSort(arr);
disp('Sorted Array:');
disp(sortedArr);
