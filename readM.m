function [m nrow ncol] = readM(path)
%���ļ��ж�ȡ����
%����ʵ����
%	5(����) 5(����)
%	1 2 3 4 5
%	2 3 4 5 6
%	3 4 5 6 7
%	4 5 6 7 8
%	5 6 7 8 9
%
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