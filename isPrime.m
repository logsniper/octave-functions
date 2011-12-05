function p = isPrime(n)
	if n<=1
		p = false;
	else
		p = true;
		k = sqrt(n);
		for i = 2:k
			if 0 == rem(n,i)
				p = false;
				break;
			end
		end
	end
endfunction