function [m nrow ncol] = readM(path)
	fm = fopen(path,"r");
	if fm == -1
		return
	end
	[nrow ncol] = fscanf(fm,"%d%d","C");
	m = zeros(nrow,ncol);
	for i=1:nrow
		for j=1:ncol
			m(i,j) = fscanf(fm,"%d","C");
		end
	end
	fclose(fm)
endfunction