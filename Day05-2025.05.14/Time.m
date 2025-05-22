n=15;

tic;

for i=1:n
    disp(i);
end

elapsedTime = toc;

fprintf('Elapsed time:%fseconds\n',elapsedTime);

x=5;
tic;
if x==5
    disp('x is 5');
else
    disp('x is not 5');
end
toc;
