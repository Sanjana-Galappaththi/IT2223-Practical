function sortedArray = quickSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end
    pivot = array(1); 
    left = array(array < pivot); 
    right = array(array > pivot); 
    middle = array(array == pivot); 
    sortedArray = [quickSort(left), middle, quickSort(right)];
end

arr = [5,2,8,1,7];
sortedArr = quickSort(arr);
disp("Sorted array: ");
disp(sortedArr);
