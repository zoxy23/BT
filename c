//Workshop 5.1_Fall 23_SE 1897
//******************************************************************************(Chưa làm xong)
//1.Nhập mảng n,sắp xếp 3 SNT cuối cùng trong mảng tăng dần.
//Làm bằng cách thay đổi trực tiếp và tạo ra mảng thứ 2 để thay đổi,sau đó trả lại)
////11 4 7 9 3 6 13 -> 11, 4, 3, 9, 7, 6, 13
int checkSNT(int n){
	int i;
	if(n<=1)	return 0;
	for(i=2;i*i<=n;i++){
		if(n%i==0) return 0;
	}return 1;
}
void swap(int *a,int *b){
	int temp = *a;*a=*b;*b=temp;
}
int interchangeSort(int a[],int n){
	int i,j;
	for(i=0;i<n-1;i++){
		for(j=i+1;j<n;j++){
			if(a[i]>a[j])	swap(&a[i],&a[j]);
		}
	}
}
main() {//11 4 7 9 3 6 13 -> 11, 4, 3, 9, 7, 6, 13
    int n,i, a[100];printf("Input N = ");scanf("%d", &n);
    for (i = 0; i < n; i++) scanf("%d", &a[i]);
    int SNT[100], countSNT = 0,index=0;;
    for (i = 0; i < n; i++) {//Lọc và lưu số vào mảng SNT
        if (checkSNT(a[i])) {
            SNT[countSNT++] = a[i];
        }
    }
    if (countSNT >= 3) {//< 3, skip đoạn này
        interchangeSort(SNT + countSNT - 3, 3); // (SNT + Bắt đầu 3 SNT cuối ,chỉ sắp xếp 3 số cuối)
        for (i = n - 1; i >= 0; i--) {//Thay thế 3 SNT cuối trong mảng a bằng 3 số đã sắp xếp
            if (checkSNT(a[i])) {
                a[i] = SNT[countSNT - 3 + index];
                index++;
                if (index == 3) break;
            }
        }
    }
    for (i = 0; i < n; i++) printf("%d ", a[i]);
}
//******************************************************************************(Chưa làm xong)
//1.Nhập mảng n,sắp xếp 3 SNT cuối cùng trong mảng tăng dần.
//Làm bằng cách thay đổi trực tiếp và tạo ra mảng thứ 2 để thay đổi,sau đó trả lại)
////11 4 7 9 3 6 13 -> 11, 4, 3, 9, 7, 6, 13
//******************************************************************************
//2.Nhập mảng n,Đảo ngược vị trí của (a) SNT đầu tiên
//int checkSNT(int n){
//	int i;
//	if(n<=1)	return 0;
//	for(i=2;i*i<=n;i++){
//		if(n%i==0) return 0;
//	}return 1;
//}
//void swap(int *a,int *b){
//	int temp = *a;*a=*b;*b=temp;
//}
//main() {int n,i, a[100],countSNT=0;
//	printf("30 SNT dau tien:");
//	for(i=2;countSNT < 30;i++){
//		if(checkSNT(i)){
//			printf("%d ",i);countSNT++;
//		}
//	}printf("\n");
//    printf("Input N = ");scanf("%d", &n);
//    for (i = 0; i < n; i++) {
//        printf("a[%d] = ",i);scanf("%d", &a[i]);
//    }
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            swap(&a[i], &a[n-1]);
//            break;
//        }
//    }
//    for (i = 0; i < n; i++) printf("%d ", a[i]);
//}
//Workshop 5.2_Fall 23_SE 1897
