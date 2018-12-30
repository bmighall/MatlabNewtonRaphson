%Name: Ben Mighall
%Class: El E 367
%Project 2- Newton-Raphson Method

clear all; 
close all;

%equation a
fprintf('\n-----------------------------------------\n');
x_0 = 1;
i = 1; 
f = @(x) (x^3)-(2*x^2)-(x+2);
df = @(x) (3*x^2)-(4*x)-1; 
nr = @(x) x - f(x)/df(x); 
while (1)
    x_0(i+1) = nr(x_0(i)); 
    error = abs((x_0(i+1)-x_0(i))/x_0(i)); 
    if error < 0.1*10^-6
        fprintf('Equation A: f(x)=x^3-2*(x^2)-x+2\n');
        fprintf('Initial Guess: ');
        disp('1');
        fprintf('Root Calculated: ');
        disp(x_0(i+1));
        fprintf('Number of Iterations: ');
        disp(i);
        fprintf('-----------------------------------------\n');
        break
    end
    i = i + 1; 
end

%equation b
x_0 = 1;
i = 1; 
f = @(x) (x^3)-(3*x^2)+3;
df = @(x) (3*x^2)-(6*x); 
nr = @(x) x - f(x)/df(x); 
while (1)
    x_0(i+1) = nr(x_0(i)); 
    error = abs((x_0(i+1)-x_0(i))/x_0(i)); 
    if error < 0.1*10^-6
        fprintf('Equation B: f(x)=x^3-(3*x^2)+3');
        fprintf('\nInitial Guess: ');
        disp('1');
        fprintf('Root Calculated: ');
        disp(x_0(i+1));
        fprintf('Number of Iterations: ');
        disp(i);
        fprintf('-----------------------------------------\n');
        break
    end
    i = i + 1;
end

%equation C
x_0 = 1;
i = 1; 
f = @(x) 2*sin(2*x)-x;
df = @(x) 4*cos(2*x)-1; 
nr = @(x) x - f(x)/df(x); 
while (1)
    x_0(i+1) = nr(x_0(i)); 
    error = abs((x_0(i+1)-x_0(i))/x_0(i)); 
    if error < 0.1*10^-6
        fprintf('Equation C: f(x)=2*sin(2*x)-x');
        fprintf('\nInitial Guess: ');
        disp('1');
        fprintf('Root Calculated: ');
        disp(x_0(i+1));
        fprintf('Number of Iterations: ');
        disp(i);
        fprintf('-----------------------------------------\n');
        break
    end
    i = i + 1;
end

%equation D1
x_0 = 0;
i = 1; 
f = @(x) 4*(x+1)^2;
df = @(x) 8*x + 8; 
nr = @(x) x - f(x)/df(x); 
while (1)
    x_0(i+1) = nr(x_0(i)); 
    error = abs((x_0(i+1)-x_0(i))/x_0(i)); 
    if error < 0.1*10^-6
        fprintf('Equation D1: I_D = 4*(V_GS + 1)^2 (answer in mA)');
        fprintf('\nInitial Guess: ');
        disp('0');
        fprintf('Root Calculated: ');
        disp(x_0(i+1));
        fprintf('Number of Iterations: ');
        disp(i);
        fprintf('-----------------------------------------\n');
        break
    end
    i = i + 1;
end

%equation D2
x_0 = 0;
i = 1; 
f = @(x) -x/500 + 1/500;
df = @(x) -1/500; 
nr = @(x) x - f(x)/df(x); 
while (1)
    x_0(i+1) = nr(x_0(i)); 
    error = abs((x_0(i+1)-x_0(i))/x_0(i)); 
    if error < 0.1*10^-6
        fprintf('Equation D2: I_D = -V_GS/500 + 1/500 (answer in A)');
        fprintf('\nInitial Guess: ');
        disp('0');
        fprintf('Root Calculated: ');
        disp(x_0(i+1));
        fprintf('Number of Iterations: ');
        disp(i);
        fprintf('-----------------------------------------\n');
        break
    end
    i = i + 1;
end