function test(A, B, C)

	plot(B(:,5),B(:,4))
	hold on
	plot(A(:,4),A(:,1:3))

	D = [ones(size(C,1),1)*-20 ones(size(C,1),1)*-40];
	D = reshape(D.',[],1);

	C = [C C];
	C = reshape(C.',[],1);

	plot(C(:,1),D(:,1))
end