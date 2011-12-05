function v = fibonacci(n)
	if(n<=2)	v = 1;
	else
		a = 1;
		b = 1;
		v = 2;
		for k=3:n
			v = a+b;
			a = b;
			b = v;
		end
	end
endfunction