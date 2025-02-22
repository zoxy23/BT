#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <stdlib.h>
//Workshop 5.1_Fall 23_SE 1897
//******************************************************************************
//1.Nhập mảng n,sắp xếp 3 SNT cuối cùng trong mảng tăng dần.
//Làm bằng cách thay đổi trực tiếp và tạo ra mảng thứ 2 để thay đổi,sau đó trả lại)
////11 4 7 9 3 6 13 -> 11, 4, 3, 9, 7, 6, 13
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
//int interchangeSort(int a[],int n){
//	int i,j;
//	for(i=0;i<n-1;i++){
//		for(j=i+1;j<n;j++){
//			if(a[i]>a[j])	swap(&a[i],&a[j]);
//		}
//	}
//}
//main() {//11 4 7 9 3 6 13 -> 11, 4, 3, 9, 7, 6, 13
//    int n,i, a[100];printf("Input N = ");scanf("%d", &n);
//    for (i = 0; i < n; i++) scanf("%d", &a[i]);
//    int SNT[100], countSNT = 0,index=0;;
//    for (i = 0; i < n; i++) {//Lọc và lưu số vào mảng SNT
//        if (checkSNT(a[i])) {
//            SNT[countSNT++] = a[i];
//        }
//    }
//    if (countSNT >= 3) {//< 3, skip đoạn này
//        interchangeSort(SNT + countSNT - 3, 3); // (SNT + Bắt đầu 3 SNT cuối ,chỉ sắp xếp 3 số cuối)
//        for (i = n - 1; i >= 0; i--) {//Thay thế 3 SNT cuối trong mảng a bằng 3 số đã sắp xếp
//            if (checkSNT(a[i])) {
//                a[i] = SNT[countSNT - 3 + index];
//                index++;
//                if (index == 3) break;
//            }
//        }
//    }
//    for (i = 0; i < n; i++) printf("%d ", a[i]);
//}
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
//******************************************************************************
//1.Nhập mảng n,nhập a và b,thay thế các số trước và sau SNT.Nằm trong khoảng a[a] và a[b] bằng số 99
//n=10  2 3 4 5 6 7 8 9 10 11 
//a=2,b=8 có 2 3 99 5 99 7 99 9 10 11
//int checkSNT(int n){
//	int i;
//	if(n < 2) return 0;
//	for(i=2;i*i<=n;i++){
//		if(n%i==0)return 0;
//	}return 1;
//}
//main(){
//	int arr[100],n,i;printf("Input N = ");scanf("%d",&n);
//	printf("Mang ban dau la: ");
//	for(i=0;i<n;i++)scanf("%d",&arr[i]);
//	int a,b;printf("Input [A,B] = ");scanf("%d%d",&a,&b);
//	for(i=a;i<=b;i++){
//		if(checkSNT(arr[i])){
//			if(i-1 >= a)arr[i-1] = 99;
//			if(i+1 <= b)arr[i+1] = 99;
//		}
//	}
//	printf("Mang moi:");
//	for(i=0;i<n;i++)	printf("%d ",arr[i]);
//}
//******************************************************************************
//2.Thêm số 99 vào đằng trước 2 phần tử(phần tử cần thay k = -2) so với phần tử thứ 3 là số chẵn(hay SNT)(phần tử góc p=3)

//3.Thêm vào trước SNT đầu tiên và cuối cùng chữ số 0
//4.Xoá x phần tử đứng sau phần tử chẵn thứ 2(x bất kỳ)
//5.Nhập mảng n,xoá 3 phần tử có giá trị là SNT đầu tiên
