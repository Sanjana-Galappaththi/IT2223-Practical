function result = myFactorial(n)
    if n == 0  || n == 1
        result = 1;  % Factorial of 0 is 1
    else
        result=n*myFactorial(n-1);
    end
end
