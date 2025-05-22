arr = sort(randi([1, 10000], 1, 1000));
target = arr(randi([1, 1000]));

tic;
index_linear = find(arr == target, 1);
time_linear = toc;


tic;
left = 1;
right = length(arr);
index_binary = -1;

while left <= right
    mid = floor((left + right) / 2);
    if arr(mid) == target
        index_binary = mid;
        break;
    elseif arr(mid) < target
        left = mid + 1;
    else
        right = mid - 1;
    end
end
time_binary = toc;


fprintf('Linear Search Time: %.6f seconds\n', time_linear);
fprintf('Binary Search Time: %.6f seconds\n', time_binary);

if index_linear == index_binary
    fprintf('Both search methods found the target at index %d.\n', index_linear);
else
    fprintf('Search methods returned different indices: Linear (%d), Binary (%d).\n', index_linear, index_binary);
end
