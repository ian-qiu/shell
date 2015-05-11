BEGIN{
	FS=","
}{
	if(NR==FNR){
		a[$1]=$2;
	}else if(NR!=FNR){
		if(a[$1]){
			print $1","a[$1];
		}else{
			print $1;
		}
	}
}END{
}
