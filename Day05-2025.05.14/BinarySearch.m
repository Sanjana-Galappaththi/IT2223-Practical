%Binary Search
arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

 startpoint = 1;
 endpoint = length(arr);

 while startpoint <= endpoint
     mid = ((startpoint + endpoint) / 2);
        fprintf(['Comparing with element: ', num2str(arr(mid))]);
        
        if arr(mid) == target
            fprintf(['Element ', num2str(target), ' found at index ', num2str(mid)]);
            return;
        elseif arr(mid) < target
            start = mid + 1;
        else
            endpoint = mid - 1;
        end
    end
    
    disp('Element not found!.');
end
