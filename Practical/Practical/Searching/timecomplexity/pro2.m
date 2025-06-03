arr = 1:1000;

target = 750;

tic;
low = 1;
high = length(arr);
foundBinary = false;

while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        foundBinary = true;
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end
binary_time = toc;

tic;
foundLinear = false;
for i = 1:length(arr)
    if arr(i) == target
        foundLinear = true;
        break;
    end
end
linear_time = toc;

fprintf('Binary Search Time: %.6f seconds\n', binary_time);
fprintf('Linear Search Time: %.6f seconds\n', linear_time);

if foundBinary
    fprintf('Target found using Binary Search\n');
else
    fprintf('Target not found using Binary Search\n');
end

if foundLinear
    fprintf('Target found using Linear Search\n');
else
    fprintf('Target not found using Linear Search\n');
end
