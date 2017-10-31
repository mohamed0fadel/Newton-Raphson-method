function [ root ] = NewtonRaphson( f, guess, tol)
err = tol +1;
x(1) = guess;
i = 1;
while (err > tol)
    df = diff(f);
    fx = subs(f, x(i));
    dfx = subs(df, x(i));
    x(i+1) = x(i) - (fx / dfx);
    err = abs( (x(i+1)-x(i)) / x(i+1)*100 );
    root = x(i+1);
    i = i+1;
end
return
end

