int n = 0;

active proctype P() {
	int temp = n;
	n = temp + 1;
	//printf("%d(p) = %d\n", _pid, n);
}

active proctype Q() {
	int temp = n;
	n = temp + 1;
	//printf("%d(q) = %d\n", _pid, n);
}

init {
	int i = 0;
	
	do
	:: (i < 10) ->
		break
		
	printf("result = %d\n", n);
}
