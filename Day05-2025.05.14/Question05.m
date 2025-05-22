arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
tic;

target=14;
found=false;
for i=1:length(arr)
    if arr(i)==target
        found=true;
        index=i;
        break;

    end
end
    

if found
        fprintf('The target element is found at index: %d \n' ,index);
else
     fprintf('Target element not found!');
end

toc;