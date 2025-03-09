#include<stdio.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>
#include<stdbool.h>
//*********************************************************************************************************************
//1. Viết code cho 3 thuật toán: Interchange, Selection, bubble sort.
//sắp xếp các phần tử trong mảng theo chiều tăng dần (hoặc giảm dần)
//void swap(int *a, int *b) {// Hàm hoán đổi giá trị hai số nguyên(Interchange)
//    int temp = *a;*a = *b;*b = temp;
//}
//void interchangeSort(int arr[], int n) {// Interchange Sort(Sắp xếp đổi chổ số nguyên)
//	int i,j;
//    for (i = 0; i < n - 1; i++) {
//        for (j = i + 1; j < n; j++) {
//            if (arr[i] > arr[j]) swap(&arr[i], &arr[j]);
//        }
//    }
//}
//main() {
//	int n,arr[500],i;printf("Nhap N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&arr[i]);
//	}
//	interchangeSort(arr, n);
//	printf("Mang Tang Dan sau khi sap xep bang Interchange Sort: ");
//	for(i=0;i<n;i++)	printf("%d ",arr[i]);printf("\n");
//	printf("Mang Giam Dan sau khi sap xep bang Interchange Sort:");
//	for(i=i-1;i>=0;i--)	printf("%d ",arr[i]);printf("\n");
//}
//*********************************************************************************************************************
//Cách 2:Sắp xếp bằng SelectionSort
//void swap(int *a, int *b) {// Hàm hoán đổi giá trị hai số nguyên(Interchange)
//    int temp = *a;*a = *b;*b = temp;
//}
//void selectionSort(int arr[], int n) {// Selection Sort(sắp xếp chọn)
//	int i,j,minIndex;
//    for ( i = 0; i < n; i++) {
//        minIndex = i;
//        for ( j = i + 1; j < n; j++) {
//            if (arr[j] < arr[minIndex]) {
//                minIndex = j;
//            }
//        }swap(&arr[i], &arr[minIndex]);
//    }
//}
//main() {
//	int n,arr[500],i;printf("Nhap N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&arr[i]);
//	}
//	selectionSort(arr, n);
//	printf("Mang Tang Dan: ");
//	for(i=0;i<n;i++)	printf("%d ",arr[i]);printf("\n");
//	printf("Mang Giam Dan:");
//	for(i=i-1;i>=0;i--)	printf("%d ",arr[i]);printf("\n");
//}
//*********************************************************************************************************************
//Cách 3:Sắp xếp bằng SelectionSort
//void swap(int *a, int *b) {// Hàm hoán đổi giá trị hai số nguyên(Interchange)
//    int temp = *a;*a = *b;*b = temp;
//}
//void bubbleSort(int arr[], int n) {// Bubble Sort(Sắp xếp nổi bọt)
//	int i,j;
//    for ( i = 0; i < n - 1; i++) {
//        for ( j = 0; j < n - i - 1; j++) {
//            if (arr[j] > arr[j + 1]) {
//                swap(&arr[j], &arr[j + 1]);
//            }
//        }
//    }
//}
//main() {
//	int n,arr[500],i;printf("Nhap N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&arr[i]);
//	}
//	bubbleSort(arr, n);
//	printf("Mang Tang Dan: ");
//	for(i=0;i<n;i++)	printf("%d ",arr[i]);printf("\n");
//	printf("Mang Giam Dan:");
//	for(i=i-1;i>=0;i--)	printf("%d ",arr[i]);printf("\n");
//}
//*********************************************************************************************************************
//2.Nhập mảng n phần tử,sắp xếp các phần tử i ở vị trí chẵn (i) (hoặc các phần tử có giá trị chẵn a[i])
//Dùng Bubble Sort or selectionSort
//void swap(int *a,int *b){
//	int temp=*a;*a=*b;*b=temp;
//}
//void bubbleSort(int arr[],int n){
//	int i,j;
//	for(i=0;i<n-1;i++){
//		for(j=0;j<n-i-1;j++){
//			if(arr[j] > arr[j+1]){
//				swap(&arr[j], &arr[j + 1]);
//			}
//		}
//	}
//}
//void giaTriChan(int arr[],int n){
//	int i,tempCount=0;
//	int temp[n];
//    for(i=0;i<n;i++){//Chọn các phần tử số chẵn
//        if(i%2==0 || arr[i]%2==0) {
//            temp[tempCount++] = arr[i];
//        }
//    }	
//    bubbleSort(temp, tempCount);//Sắp xếp lại các phần tử
//    int tempIndex = 0;//Mảng gốc
//    for (i = 0; i < n; i++) {
//        if (i % 2 == 0 || arr[i] % 2 == 0) {
//            arr[i] = temp[tempIndex++];
//        }
//    }
//}
//main(){
//	int n,i,arr[100];printf("Nhap N:");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);
//		scanf("%d",&arr[i]);
//	}
//	giaTriChan(arr,n);
//	for(i=0;i<n;i++)printf("%d ",arr[i]);
//}
//*********************************************************************************************************************
//3.Sắp xếp các phần tử có giá trị chẵn tăng dần,giá trị lẻ giảm dần
//void swap(int *a,int *b){
//	int temp=*a;*a=*b;*b=temp;
//}
//void selectionSort(int arr[], int n) {
//	int i,j,m;//m=minIndex
//    for(i=0;i<n;i++) {
//        m = i;
//        for(j=i+1;j<n;j++) {
//            if(arr[j]<arr[m]) m = j;
//        }swap(&arr[i], &arr[m]);
//    }
//}
//void sapXepChanLe(int arr[],int n){
//	int i,chan[n],le[n];
//	int c=0,l=0;
//	for(i=0;i<n;i++){
//		if(arr[i]%2==0) chan[c++] = arr[i];
//		else			le[l++]	= arr[i];
//	}
//	selectionSort(chan,c);
//	selectionSort(le,l);
//	for(i=0;i<c;i++)	printf("%d ",chan[i]);
//	for(i=l-1;i>=0;i--)	printf("%d ",le[i]);
//}
//
//main(){
//	int n,i;printf("Nhap so luong phan tu:");scanf("%d",&n);
//	int arr[n];
//	for(i=0;i<n;i++){
//		printf("Nhap cac phan tu thu %d = ",i+1);
//		scanf("%d",&arr[i]);
//	}
//	sapXepChanLe(arr,n);
//}

//Ngắn gọn:
//main(){
//	//Input
//	int n;scanf("%d",&n);
//	int a[n],i,j;;
//	for(i=0;i<n;i++){scanf("%d",&a[i]);}
//	for(i=0;i<n-1;i++){//BubbleSort
//		for(j=i+1;j<n;j++){
//			if(a[i]>a[j]){
//				int k = a[i];
//				a[i] = a[j];
//				a[j] = k;
//			}
//		}
//	}
//	//Output
//	for(i=0;i<n;i++){
//		if(a[i] % 2 == 0){
//			printf("%d ",a[i]);
//		}
//	}printf("\n");
//	for(i=n-1;i>=0;i--){
//		if(a[i] % 2 != 0){
//			printf("%d ",a[i]);
//		}
//	}
//}

//*********************************************************************************************************************
//4.Nhập mảng N,dùng interchange.Sắp xếp tăng dần các 
//số floating point có 3 chữ số thập phân,cách nhau bởi dấu -
//void swap(float *a, float *b) {
//    float temp = *a;*a = *b;*b = temp;
//}
//void interchange(float a[],int n){
//	int i,j;
//	for(i=0;i<n-1;i++){
//		for(j=i+1;j<n;j++){
//			if(a[i] > a[j])	swap(&a[i],&a[j]);
//		}
//	}
//}
//main(){
//	int n,i;printf("Input N = ");scanf("%d",&n);
//	float a[100];
//	for(i=0;i<n;i++){
//		printf("a[%d]=",i);scanf("%f",&a[i]);
//	}
//	interchange(a,n);
//	for(i=0;i<n;i++){
//		printf("%.3f",a[i]);
//		if(i<n-1)	printf(" - ");
//	}
//}
//*********************************************************************************************************************
//5.Nhập array N,và các giá trị b,e,sắp xếp giá trị từ phần 
//tử thứ b đến phần tử thứ e  bất kỳ trong mảng theo thứ tự tăng dần(kể cả đầu mút)
//main(){
//	int i,n;printf("Input N = ");scanf("%d",&n);
//	int a[100];
//	for(i=0;i<n;i++)scanf("%d",&a[i]);
//	
//}
//*********************************************************************************************************************
//1.Nhập mảng n phần tử,sắp xếp 3 SNT cuối cùng trong mảng theo trật tự tăng dần
//int checkSNT(int n){
//	int i;
//    if(n<2) return 0;
//    for(i=2;i*i<=n;i++) if(n%i==0) return 0;
//    return 1;
//}
//void swap(int *a, int *b) {
//    int temp = *a;*a = *b;*b = temp;
//}
//void interchangeSort(int a[],int n){
//	int i,j;
//	int count=0,sntPos[3];
//	for(i=0;i<n && count<3;i++){//i=n-1;i>=0&&count<3;i--:Duyệt từ cuối lên đầu
//		if(checkSNT(a[i])){
//			sntPos[count++] = i;
//		}
//	}
//	for(i=0;i<2;i++){
//		for(j=i+1;j<3;j++){
//			if(a[sntPos[i]] > a[sntPos[j]]) swap(&a[sntPos[i]],&a[sntPos[j]]);
//		}
//	}
//}
//main(){
//	int n,i,a[100];printf("Input N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);
//	}
//	printf("Mang sau khi sap xep : ");interchangeSort(a,n);
//	for(i=0;i<n;i++) printf("%d ",a[i]);
//}
//*********************************************************************************************************************
//2.Đảo có điều kiện:Nhập mảng n,đảo ngược vị trí của (a) SNT đầu tiên(Cả 2 bài làm bằng cách:Cách 
//thay đổi trực tiếp và tạo ra mảng thứ 2 để thay đổi,sau đó trả lại)
//int checkSNT(int n){
//	int i;
//    if(n<2) return 0;
//    for(i=2;i*i<=n;i++) if(n%i==0) return 0;
//    return 1;
//}
//void swap(int *a, int *b) {
//    int temp = *a;*a = *b;*b = temp;
//}
//void reverseArray(int a[], int n) {
//	int left=0,right=2;//right=n-1 là đảo toàn bộ =2 đảo 3 số[0][1][2]
//	int count=0,i,sntPos[3];
//	for(i=0;i<n&&count<3;i++){
//		if(checkSNT(a[i])){
//			sntPos[count] = i;
//			count++;
//		}
//	}
//    while(left < right){
//		swap(&a[sntPos[left]], &a[sntPos[right]]);
//        left++;
//        right--;
//    }
//}
//main() {
//	int n,arr[500],i;printf("Nhap N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){printf("a[%d] = ",i);scanf("%d",&arr[i]);}
//    reverseArray(arr, n);
//	printf("Mang sau khi dao nguoc cac phan tu: ");
//	for(i=0;i<n;i++)	printf("%d ",arr[i]);
//}
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <stdlib.h>
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
//main() {
//	int n,i, a[100];
//    printf("Input N = ");scanf("%d", &n);
//    for (i = 0; i < n; i++) {printf("a[%d] = ",i);scanf("%d", &a[i]);}
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            swap(&a[i], &a[n-1]);
//            break;
//        }
//    }
//    for (i = 0; i < n; i++) printf("%d ", a[i]);
//}

//******************************************************************************
//1.Nhập mảng n,nhập a và b,thay thế các số trước và sau SNT.Nằm trong khoảng a[a] và a[b] bằng số 99
//Làm bằng cách thay đổi trực tiếp và tạo ra mảng thứ 2 để thay đổi,sau đó trả lại)
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
//2.Chèn số 99 vào vị trí có chỉ số index i bất kỳ(giả sử i=5)
//main(){
//	int n,a[100],i,index;printf("Input N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("Nhap a[%d]: ",i);scanf("%d",&a[i]);
//	} 
//	printf("Nhap vi tri can chen (0 <= index <= %d): ",n);scanf("%d", &index);
// 	for(i=n-1;i>=index;i--){
// 		a[i+1]=a[i];
// 	}
//	a[index]=99;
// 	n=n+1;
// 	printf("Day so sau khi sap xep la: ");
//	for(i=0;i<n;i++)printf("%d ",a[i]);
//}
//******************************************************************************
//2.Thêm số 99 vào đằng trước 2 phần tử(phần tử cần thay k = -2) so với phần tử thứ 3 là số chẵn(hay SNT)(phần tử góc p=3)
//int checkSNT(int n){
//	int i;
//	if(n<2)return 0;
//	for(i=2;i*i<=n;i++){
//		if(n%i==0)return 0;
//	}return 1;
//}
//int even(int n){
//	int i;
//	for(i=0;i<n;i++){
//		
//	}
//}
//main(){
//	int n,a[100],i;printf("Input N = ");scanf("%d",&n);
//	for(i=0;i<n;i++){
//		printf("Nhap a[%d]: ",i);scanf("%d",&a[i]);
//	} 
//	int pos=2,k=-2,index;//pos=2:Vị trí phần tử thứ 3
//	if((a[2])){//CheckSNT(a[2]);
//		index = pos+k;// Vị trí bắt đầu chèn
//		for(i=n-1;i>=index;i--){//// Dịch chuyển để chèn 2 số 99
//			a[i+2]=a[i];
//		}
//		a[index] = 99;// Chèn 2 số 99
//		a[index+1]=99;
//		n=n+2;// Tăng kích thước mảng
//	}
// 	printf("Day so sau khi sap xep la: ");
//	for(i=0;i<n;i++)printf("%d ",a[i]);
//}
//******************************************************************************
//3.Thêm vào trước SNT đầu tiên và cuối cùng chữ số 0
//bool checkSNT(int n){
//	int i;
//	if(n<2)return 0;
//	for(i=2;i*i<=n;i++){
//		if(n%i==0)return 0;
//	}return 1;
//}
//main(){
//	int n;scanf("%d",&n);
//	int a[100],i;
//	for(i=0;i<n;i++){
//		scanf("%d",&a[i]);
//	}
//	int index=-1,lastIndex=-1;//index = -1 giúp kiểm tra xem có số nguyên tố hay không
//	for(i=0;i<n;i++){//Tìm số nguyên tố
//		if(checkSNT(a[i])){
//			if(index==-1){
//				index=i;
//			}lastIndex=i;//Lấy số nguyên tố cuối cùng
//		}
//	}
//	if(index!=-1){//Chèn đầu tiên 
//		for(i=n;i>index;i--){//Dịch các phần tử sang phải để tạo chỗ trống
//			a[i]=a[i-1];
//		}
//		a[index]=0;
//		n++;
//		lastIndex++;
//	}
//	if(lastIndex!=-1){//Chèn cuối cùng
//		for(i=n;i>lastIndex+1;i--){
//			a[i]=a[i-1];
//		}
//		a[lastIndex+1]=0;
//		n++;
//	}
//	for(i=0;i<n;i++)printf("%d ",a[i]);
//}
//******************************************************************************
//4.Xoá x phần tử đứng sau phần tử chẵn thứ 2(x bất kỳ)
//main(){
//	int a[100],n,i;printf("Input N = ");scanf("%d",&n);
//    for(i=0; i< n; i++){
//    	scanf("%d",&a[i]);
//	}
//	int count=0,x,index=-1;printf("Input X = ");scanf("%d",&x);
//	for(i=0;i<n;i++){ // Tìm vị trí
//		if(a[i]%2==0){
//			count++;
//			if(count==2){
//				index=i;// Lưu lại vị trí số chẵn thứ 2
//				break;
//			}
//		}
//	}
//	if(index!=-1&&index+x<n){ // Nếu tìm thấy số chẵn thứ 2 và có đủ phần tử để xóa
//		for(i=index+1;i<n-x;i++){
//			a[i]=a[i+x];
//		}
//		n -= x;
//	}
//	printf("Mang sau khi xoa : ");
//	for(i=0;i<n;i++)	printf("%d ",a[i]);
//}
//******************************************************************************
//5.Nhập mảng n,xoá 3 phần tử có giá trị là SNT đầu tiên
//int checkSNT(int n){
//	int i;
//	if(n<=1)return 0;
//	for(i=2;i*i<=n;i++){
//		if(n%i==0) return 0;
//	}return 1;
//}
//main(){
//	int a[100],i,n;printf("Input N = ");scanf("%d",&n);
//    for(i=0; i< n; i++){
//    	scanf("%d",&a[i]);
//	}
//	int j,count=0;
//	for(i=0;i<n;i++){
//		if(checkSNT(a[i])){
//			count++;
//			for(j=i;j<n-1;j++){
//				a[j] = a[j+1];// Dịch các phần tử lên để xóa số nguyên tố
//			}
//			n--;// Giảm kích thước mảng
//			i--;// Kiểm tra lại vị trí i sau khi dịch
//			if(count == 3)break; // Dừng sau khi xóa đủ 3 số nguyên tố
//		}
//	}
//	printf("Mang sau khi xoa :");
//	for(i=0;i<n;i++)	printf("%d ",a[i]);
//}

//main(){
//	int a[100],n,i;printf("Input N = ");scanf("%d",&n);
//    for(i=0; i< n; i++){
//    	scanf("%d",&a[i]);
//	}
//	int count=0,index[3];
//	for(i=0;i<n;i++){
//		if(checkSNT(a[i])){
//			index[count++]=i;
//		}
//	}
//	int k,j;
//	if(count==3){
//		for(i=0;i<3;i++){
//			k = index[i]-i;// Điều chỉnh cho mảng dịch trái
//			for(j=k;j<n-1;j++){
//				a[j]=a[j+1];//Dịch trái
//			}
//			n--;
//		}
//	}
//	printf("Mang sau khi xoa : ");
//	for(i=0;i<n;i++)	printf("%d ",a[i]);
//}


//***************************************************************************
//Bài 36:Nhập vào 1 mảng có n phần tử,thêm vào phía trước tất cả SNT bằng số 0
//int checkSNT(int n) {
//	int i;
//    if (n < 2) return 0;
//    for (i = 2; i * i <= n; i++) {
//        if (n % i == 0) return 0;
//    }return 1; 
//}
//main() {
//    int a[100], n, i;printf("Input size of array n = ");scanf("%d", &n);
//    printf("Input array\n");
//    for (i = 0; i < n; i++) {
//        printf("a[%d] = ", i);scanf("%d", &a[i]);
//    }printf("\n");
//    printf("Array before change\n");
//    for (i = 0; i < n; i++) {
//        printf("%d ", a[i]);
//    }printf("\n");
//    int temp[100];
//    int k = 0;  // Chỉ số cho mảng b
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            temp[k] = 0;    // Thêm 0 trước số nguyên tố
//            k++;
//            temp[k] = a[i]; // Giữ nguyên số nguyên tố
//            k++;
//        } else {
//            temp[k] = a[i]; // Giữ nguyên số không phải nguyên tố
//            k++;
//        }
//    } 
//    printf("Array after change\n");
//    for (i = 0; i < k; i++) printf("%d ", temp[i]);
//}

//*********************************************************************************************
//BT36:Thêm số 99 vào vị trí trước 2 của phần tử thứ 3 là số SNT
//   (phân tử góc p=3,vị trí thay là trước k=2)
//Input: 2 3 4   5 6 7 8 9 10 11 12    //11
//Output:2 3 99  4 5 6 7 8 9  10 11 12
//int check (int n){//khai bao ham check SNT
//	int i; 
//	if (n<2) return 0; 
//	for (i=2; i*i<=(n); i++){
//		if(n%i==0) return 0;
//	}return 1;
//}		
//main (){// p la vi tri phan tu goc (p=2: SNT thu 2 tu duoi len), 
//	int a[100], n,i, index, p,k, count=0;printf("Input size of array n= ");scanf("%d",&n);
//// k la phan tu can thay the: k=-3 ;
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}
//	p=2, k=3 ; count=0;// thuat toan chinh
//	for(i=0; i<n; i++){// xac dinh phan tu goc,// dem SNT tu duoi len
//		if (check (a[i])) count++;
//		if(count ==p){
//			index =i; break;
//		}// xac dinh duoc phan tu goc p=2
//	}
//	if(index!=-1){
//		for(i=n;i>index-k;i--){
//			a[i]=a[i-1];
//		}
//		a[index-k]=99;
//		n++;
//	}
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//*********************************************************************************************
//1.Nhập một mảng n phần tử, thêm số 0 vào phía trc tất cả các phần tử là SNT ( 1 điểm)
//int checkSNT(int n) {
//	int i;
//    if (n < 2) return 0;
//    for (i = 2; i * i <= n; i++) {
//        if (n % i == 0) return 0;
//    }return 1; 
//}
//main() {
//    int a[100], n, i;printf("Input size of array n = ");scanf("%d", &n);
//    printf("Input array\n");
//    for (i = 0; i < n; i++) {
//        printf("a[%d] = ", i);scanf("%d", &a[i]);
//    }printf("\n");
//    printf("Array before change\n");
//    for (i = 0; i < n; i++) {
//        printf("%d ", a[i]);
//    }printf("\n");
//    int temp[100],count=0,index=-1;
//    int k = 0;  // Chỉ số cho mảng b
//    for (i = 0; i < n; i++) {// Xác định vị trí phần tử nguyên tố thứ 2
//        if (checkSNT(a[i])) count++;
//        if(count==2){
//        	index=i;break;
//		}
//    }
//    for(i=0;i<n;i++){// Tạo mảng mới với phần tử thêm
//    	if(checkSNT(a[i])){
//    		temp[k++]=0;
//		}
//		temp[k++] = a[i];
//	}
//    printf("Array after change\n");
//    for (i = 0; i < k; i++) printf("%d ", temp[i]);
//}
//**************************************************************************************
//2.Khai báo n, p, k. Nhập một mảng n phần tử. Thêm số 99 vào vị trí 
//trước k số phần tử là  SNT thứ p (với p và k bất kỳ) 
//( ví dụ phần tử gốc là SNT thứ p=3, vị trí thay là trước  k= 2 vị trí)
//int checkSNT(int n){//khai bao ham check SNT
//	int i; 
//	if (n<2) return 0; 
//	for (i=2; i*i<=(n); i++){
//		if(n%i==0) return 0;
//	}return 1;
//}		
//main (){
//	int a[100], n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	int p;printf("Nhap P:");scanf("%d",&p);
//	int k;printf("Nhap K:");scanf("%d",&k);
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}
//	int count=0,index=-1;// thuat toan chinh
//	for(i=0;i<n;i++){// xac dinh phan tu goc,// dem SNT tu duoi len
//		if(checkSNT(a[i])) count++;
//		if(count == p){
//			index =i;break;
//		}
//	}
//	if(index!=-1 && index-k>=0){
//		for(i=n;i>=index-1;i--){
//			a[i]=a[i-1];
//		}
//		a[index-k]=99;
//		n++;
//	}
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//**************************************************************************************
//3.Nhập một mảng n phần tử  thêm 0 vào trước phần tử là  SNT đầu tiên va SNT cuối cùng 
//int checkSNT(int n){//khai bao ham check SNT
//	int i; 
//	if (n<2) return 0; 
//	for (i=2; i*i<=(n); i++){
//		if(n%i==0) return 0;
//	}return 1;
//}		
//main (){
//	int a[100], n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}
//	int dauSNT = -1, cuoiSNT = -1;
//	for(i=0;i<n;i++){
//		if(checkSNT(a[i])){
//			if(dauSNT==-1) dauSNT = i;
//			cuoiSNT = i;
//		}
//	}
//    if (cuoiSNT != -1) {
//        for (i = n; i > cuoiSNT; i--) {
//            a[i] = a[i - 1];
//        }
//        a[cuoiSNT] = 00; // Chèn 0 vào trước SNT cuối cùng
//        n++;
//    }
//    if (dauSNT != -1) {
//        for (i = n; i > dauSNT; i--) {
//            a[i] = a[i - 1];
//        }
//        a[dauSNT] = 00; // Chèn 0 vào trước SNT đầu tiên
//        n++;
//    }
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//**************************************************************************************
//4.Khai báo n. Nhập một mảng n phần tử. nhập k. Xóa SNT thứ k (1 điểm)
//int checkSNT(int n){//khai bao ham check SNT
//	int i; 
//	if (n<2) return 0; 
//	for (i=2; i*i<=(n); i++){
//		if(n%i==0) return 0;
//	}return 1;
//}		
//main (){
//	int a[100], n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	int k;printf("Nhap k:");scanf("%d",&k);
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}printf("\n");
//	int index=-1,count=0;
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            count++;
//            if (count == k) {
//                index = i;break;
//                
//            }
//        }
//    }
//    if (index != -1) {
//        for (i = index; i < n - 1; i++) {
//            a[i] = a[i + 1]; // Dịch các phần tử lên để ghi đè
//        }
//        n--; // Giảm kích thước mảng
//    }
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//**************************************************************************************
//5.Nhập một mảng n phần tử. Xóa tất cả các phần tử là SNT (1 điểm)
//int checkSNT(int n){//khai bao ham check SNT
//	int i; 
//	if (n<2) return 0; 
//	for (i=2; i*i<=(n); i++){
//		if(n%i==0) return 0;
//	}return 1;
//}		
//main (){
//	int a[100], n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}printf("\n");
//    int temp = 0;
//    for (i = 0; i < n; i++) {
//        if (!checkSNT(a[i])) {//Keep số nguyên tố
//            a[temp] = a[i];
//            temp++;
//        }
//    }
//    n = temp; // Cập nhậtmang mới
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//**************************************************************************************
//6.Khai báo n, m, k. Nhập một mảng n phần tử. Xóa m phần tử đứng trước phần tử là SNT thứ k  
//int checkSNT(int n) { // Hàm kiểm tra số nguyên tố
//    if (n < 2) return 0;
//    for (int i = 2; i * i <= n; i++) {
//        if (n % i == 0) return 0;
//    }return 1;
//}
//main (){
//	int a[100],n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	int k;printf("Nhap K (SNT thu ):");scanf("%d",&k);
//	int m;printf("Nhap M (So luong muon xoa):");scanf("%d",&m);
//	printf("\nArray before change \n");
//	for(i=0; i<n; i++){
//		printf("%d ", a[i]);// trinh bay
//	}printf("\n");
//   	int count = 0, index = -1;
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            count++;
//            if (count == k) {
//                index = i;break; 
//            }
//        }
//    }
//    int start = index - m;
//    if(start<0)start=0;
//	int newSize = n - (index - start);
//    for ( i = start; i < newSize; i++) {
//        a[i] = a[i + (index - start)];
//    }
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}
//**************************************************************************************
//7.Khai báo n, k. Nhập một mảng n phần tử. Xóa hết các phần tử đứng trước phần tử là SNT thứ k 
//int checkSNT(int n) { // Hàm kiểm tra số nguyên tố
//    if (n < 2) return 0;
//    for (int i = 2; i * i <= n; i++) {
//        if (n % i == 0) return 0;
//    }return 1;
//}
//main (){
//	int a[100],n,i;printf("Input size of array n= ");scanf("%d",&n);
//	printf("Input array \n");
//	for(i=0;i<n;i++){
//		printf("a[%d] = ",i);scanf("%d",&a[i]);// khai bao
//	}
//	int k;printf("Nhap k:");scanf("%d",&k);
//   	int count = 0, index = -1;
//    for (i = 0; i < n; i++) {
//        if (checkSNT(a[i])) {
//            count++;
//            if (count == k) {
//                index = i;break;
//                
//            }
//        }
//    }
//    int newSize;
//    if (index != -1) {
//        newSize = n - index;
//        for (i = 0; i < newSize; i++) {
//            a[i] = a[i + index];
//        }
//        n = newSize;
//    }
//	printf("\nArray after change \n");// in ra ket qua
//	for(i=0; i<n; i++){printf("%d ", a[i]);}
//}

/*


===============STRING==================

===============STRING đảo ngược==================

*/
//1.Nhập string gồm n phần tử.Đảo ngược các phần tử là số
//Input:abc123xyz456
//Output:abc456xyz123
#include<ctype.h>
//main(){
//	printf("Input:");
//	char s[1000];gets(s);
//	char temp[1000];
//	strcpy(temp,s);// Sao chép chuỗi gốc sang temp
//	int len = strlen(temp);
//	int left=0,right=len-1;
//	char t;
//    while(left<right){//Hàm đảo ngược
//    	if(isdigit(temp[left]) && isdigit(temp[right])){//Điều kiện là số 
//            t = temp[left];
//			temp[left] = temp[right];
//			temp[right] = t;
//        	left++;
//        	right--;		
//		}else{
//			if(!isdigit(temp[left]))	left++;
//			if(!isdigit(temp[right]))	right--;
//		}
//    }
//    printf("Chuoi ban dau: %s\n",s);
//    printf("Chuoi moi: %s",temp);
//}

//=====:Kiểu 2
//Input:abc123xyz456
//Output:abc654xyz321
//main(){
//	printf("Input:");
//	char s[1000];gets(s);
//	char temp[1000];
//	strcpy(temp,s);// Sao chép chuỗi gốc sang temp
//	int len = strlen(temp);
//	int left=0,right=len-1;
//	char t;
//    while(left<right){//Hàm đảo ngược
//    	while(!isdigit(temp[left]))left++;// Bỏ qua nếu ký tự trái không phải số
//		while(!isdigit(temp[right]))right--;// Bỏ qua nếu ký tự phải không phải số
//    	if(left < right){// Nếu cả hai đều là số thì đảo ngược
//            t = temp[left];
//			temp[left] = temp[right];
//			temp[right] = t;
//        	left++;
//        	right--;		
//    	}
//    }
//    printf("Chuoi ban dau: %s\n",s);
//    printf("Chuoi moi: %s",temp);
//}
//**********************************************************************************************
//2.Nhập string,các từ cách nhau = dấu cách,đảo ngược các từ trong string
//Input:Quan Van Truong
//Output:Truong Van Quan

//main(){//Cách 1:Dùng strtok(Strtok dùng để tách từ trong string)
//	//Input
//	printf("Input:");
//	char s[1000];gets(s);
//	char temp[1000];
//	strcpy(temp,s);// Sao chép chuỗi gốc sang temp
//	int len = strlen(temp);
//	//Thuật toán strtok để tách từ
//	char word[100][100];
//	int count=0;
//	char *taken = strtok(temp, " ");//Lấy từ đầu tiên của chuỗi lưu vào taken
//	while(taken!=NULL){//Tách các từ còn lại trong chuỗi
//		strcpy(word[count],taken);//Code
//		count++;
//		taken = strtok(NULL," ");//Tách từ tiếp theo
//	}
//	//Đảo ngược và ghép các từ
//	int i;
//	char kq[1000] = "";
//	for(i=count-1;i>=0;i--){
//		strcat(kq,word[i]);//strcat:nối xâu(concatenate)
//		if(i>0){
//			strcat(kq," ");
//		}
//	}
//    printf("Chuoi ban dau: %s\n",s);
//    printf("Chuoi moi: %s",kq);//Output
//}
//-------------------------
//Input:Quan Van Truong
//Output:Truong Van Quan
//main(){//Cách 2:Ko Dùng strtok(Strtok dùng để tách từ trong string)
//	printf("Input:");//Input
//	char s[1000];gets(s);
//	char temp[1000];
//	strcpy(temp,s);// Sao chép chuỗi gốc sang temp
//	int len = strlen(temp);
//	//Thuật toán tách từ không dùng Strtok
//	char word[100][100];
//	int count=0,i,j;
//	int tuDauTien=0;
//	for(i=0;i<=len;i++){
//		if(temp[i]==' ' || temp[i] == '\0'){
//			int word_len = i - tuDauTien;
//			if(word_len>0){// Nếu có từ
//				for(j=0;j<word_len;j++){
//					word[count][j] = temp[tuDauTien+j];
//				}
//				word[count][word_len] = '\0';// Thêm ký tự kết thúc
//				count++;
//			}
//			tuDauTien = i+1;// Bắt đầu từ mới
//		}
//	}
//	//Đảo ngược và ghép các từ
//	char kq[1000] = "";
//	for(i=count-1;i>=0;i--){
//		strcat(kq,word[i]);//strcat:nối xâu(concatenate)
//		if(i>0){
//			strcat(kq," ");
//		}
//	}
//    printf("Chuoi ban dau: %s\n",s);
//    printf("Chuoi moi: %s",kq);//Output
//}
//-------------------------
//Input:Quan Van Truong
//Output:Truong Van Quan
//main(){//Cách 3:Tách bằng strtok nhưng đảo bằng left right
//	//Input
//	printf("Input:");
//	char s[1000];gets(s);
//	char temp[1000];strcpy(temp,s);// Sao chép chuỗi gốc sang temp
//	//Thuật toán strtok để tách từ
//	char word[100][100];
//	int count=0;
//	char *taken = strtok(temp, " ");//Lấy từ đầu tiên của chuỗi lưu vào taken
//	while(taken!=NULL){//Tách các từ còn lại trong chuỗi
//		strcpy(word[count],taken);//Code
//		count++;
//		taken = strtok(NULL," ");//Tách từ tiếp theo
//	}
//	//Đảo ngược và ghép các từ
//	char t[100];
//	int left=0,right=count-1;
//	while(left<right){
//		t[100];
//		strcpy(t, word[left]);
//        strcpy(word[left], word[right]);
//        strcpy(word[right], t);
//        left++;
//        right--;		
//	}
//	//Ghép lại chuỗi(Nối chuỗi)
//	char kq[1000]= "";
//	int i;
//	for(i=0;i<count;i++){
//		strcat(kq,word[i]);
//		if(i<count-1){
//			strcat(kq," ");// Thêm dấu cách giữa các từ
//		}
//	}
//	printf("Chuoi ban dau: %s\n",s);
//    printf("Chuoi moi: %s",kq);//Output
//}
//**********************************************************************************************
/*



==============STRING Sắp xếp(STRING SORT)==========




*/
//Bài 4. Chuyển chuỗi nhập từ bàn phím thành chữ viết hoa, viết thường và viết hoa mỗi chữ cái đầu mỗi từ
//Input:nGUYEN van HUNG
//void to_lower(char s[]){//Viết thường
//	int i;
//	for(i=0;i<strlen(s);i++){
//		if(s[i]>='A' && s[i] <= 'Z'){
//			s[i]=s[i]+32;
//		}
//	}
//}
//void to_upper(char s[]){//Viết in hoa
//	int i;
//	for(i=0;i<strlen(s);i++){
//		if(s[i]>='a' && s[i] <= 'z'){
//			s[i]=s[i]-32;
//		}
//	}
//}
//void to_title(char s[]){//In hoa chữ cái đầu
//	int i;
//	for(i=0;i<strlen(s);i++){
//		if(s[i]>='A' && s[i] <= 'Z'){
//			s[i]=s[i]+32;
//		}
//		if(s[i-1] == ' ' ||i==0){
//			if(s[i]>='a' && s[i] <= 'z'){
//				s[i]=s[i]-32;
//			}
//		}
//	}
//}
//main(){
//	printf("Input:");
//	char s[1000];gets(s);
//	to_lower(s);printf("\nString in Lowercase = %s", s);
//	to_upper(s);printf("\nString in Uppercase = %s", s);
//	to_title(s); printf("\nString in Titlecase = %s", s);
//}
//----------------------------------------------------------------------------------------------------
//1a.Nhập string,cách nhau bời dấu cách,sort các từ theo sự tăng dần của độ dài,nếu cùng độ dài
//thì sort theo chiều tăng dần của từ điển(Có phân biệt chữ hoa,chữ thường)
//Input:banana Apple date		//TH1:Có phân biệt chữ hoa, chữ thường (Ví dụ: "Apple" trước "banana").
//Output:date Apple banana		//TH2:Không phân biệt chữ hoa, chữ thường (Ví dụ: "banana" trước "Apple").
//main(){//Cách 1:Dùng con trỏ
//	//Input
//	printf("Nhap chuoi:");
//	char s[1000];gets(s);
//	//Tách chuỗi
//	char *word[100];//Dùng mảng con trỏ
//	int count=0;
//	char *taken = strtok(s, " ");//Lấy từ đầu tiên của chuỗi lưu vào taken
//	while(taken!=NULL){//Tách các từ còn lại trong chuỗi
//		word[count++]=taken;
//		taken = strtok(NULL," ");//Tách từ tiếp theo
//	}
//	//Sắp xếp bằng interchange
//	int i,j;
//	int len1,len2;
//	char *t;//dùng con trỏ char*
//	for(i=0;i<count-1;i++){
//		for(j=i+1;j<count;j++){
//			len1=strlen(word[i]);
//			len2=strlen(word[j]);
//			if(len1 > len2){// So sánh độ dài trước
//				t = word[i];
//				word[i]=word[j];
//				word[j]=t;
//			}else if(len1 == len2 && strcmp(word[i], word[j]) > 0){// Nếu độ dài bằng nhau, so sánh bằng từ điển
//				t = word[i];
//				word[i]=word[j];
//				word[j]=t;
//			}
//		}
//	}
//	for(i=0;i<count;i++){
//		printf("%s ",word[i]);
//	}
//}
//-----------------------------
//Input:banana Apple date
//Output:date Apple banana
//main(){//Cách 2:Dùng mảng 2 chiều
//	//Input
//	printf("Nhap chuoi:");
//	char s[1000];gets(s);
//	//Cách 1:Tách chuỗi bằng StrTok
////	char word[100][100];//Dùng mảng con trỏ
////	int count=0;
////	char *taken = strtok(s, " ");//Lấy từ đầu tiên của chuỗi lưu vào taken
////	while(taken!=NULL){//Tách các từ còn lại trong chuỗi
////		strcpy(word[count++],taken);// Sao chép từ vào mảng word
////		taken = strtok(NULL," ");//Tách từ tiếp theo
////	}
//	//Cách 2:Tách chuỗi bằng thủ công
//	char word[100][100];
//	int count=0;
//	int pos=0;
//	int i;
//	for(i=0;i<strlen(s);i++){
//		if(s[i] != ' ')	word[count][pos++]=s[i];
//		else if(pos>0){
//			word[count++][pos]='\0';//Kết thúc từ
//			pos = 0;
//		}
//	}
//	if(pos>0){//Xử lý từ cuối cùng
//		word[count++][pos] = '\0';
//	}
//	//Sắp xếp bằng interchange
//	int j;
//	int len1,len2;
//	char t[100];//dùng con trỏ char*
//	for(i=0;i<count-1;i++){
//		for(j=i+1;j<count;j++){
//			len1=strlen(word[i]);
//			len2=strlen(word[j]);
//			if(len1 > len2){// So sánh độ dài trước
//				strcpy(t,word[i]);
//				strcpy(word[i],word[j]);
//				strcpy(word[j],t);
//			}// Nếu độ dài bằng nhau, so sánh bằng từ điển
//			else if(len1 == len2 && strcmp(word[i], word[j]) > 0){
//				strcpy(t,word[i]);
//				strcpy(word[i],word[j]);
//				strcpy(word[j],t);
//			}
//		}
//	}
//	for(i=0;i<count;i++){//Output
//		printf("%s ",word[i]);
//	}
//}

//**********************************************************************************************
//1b.Nhập string,cách nhau bời dấu cách,sort các từ theo sự tăng dần của độ dài,nếu cùng độ dài
//thì sort theo chiều tăng dần của từ điển(Không Phân biệt chữ hoa,chữ thường)
//Input:banana Apple date
//Output:date Apple banana
//int strcasecmp(const char *s1, const char *s2) {
//    while (*s1 && *s2) {
//        char c1 = tolower(*s1++);
//        char c2 = tolower(*s2++);
//        if (c1 != c2) return c1 - c2;
//    }return *s1 - *s2;
//}
//main(){//Cách 2:Dùng mảng 2 chiều
//	//Input
//	printf("Nhap chuoi:");
//	char s[1000];gets(s);
//	//Cách 1:Tách chuỗi bằng StrTok
////	char word[100][100];//Dùng mảng con trỏ
////	int count=0;
////	char *taken = strtok(s, " ");//Lấy từ đầu tiên của chuỗi lưu vào taken
////	while(taken!=NULL){//Tách các từ còn lại trong chuỗi
////		strcpy(word[count++],taken);// Sao chép từ vào mảng word
////		taken = strtok(NULL," ");//Tách từ tiếp theo
////	}
//	//Cách 2:Tách chuỗi bằng thủ công
//	char word[100][100];
//	int count=0;
//	int pos=0;
//	int i;
//	for(i=0;i<strlen(s);i++){
//		if(s[i] != ' ')	word[count][pos++]=s[i];
//		else if(pos>0){
//			word[count++][pos]='\0';//Kết thúc từ
//			pos = 0;
//		}
//	}
//	if(pos>0){//Xử lý từ cuối cùng
//		word[count++][pos] = '\0';
//	}
//	//Sắp xếp bằng interchange
//	int j;
//	int len1,len2;
//	char t[100];//dùng con trỏ char*
//	for(i=0;i<count-1;i++){
//		for(j=i+1;j<count;j++){
//			len1=strlen(word[i]);
//			len2=strlen(word[j]);
//			if(len1 > len2){// So sánh độ dài trước
//				strcpy(t,word[i]);
//				strcpy(word[i],word[j]);
//				strcpy(word[j],t);
//			}// Nếu độ dài bằng nhau, so sánh bằng từ điển
//			else if(len1 == len2 && strcasecmp(word[i], word[j]) > 0){// strcasecmp không phân biệt chữ hoa/thường
//				strcpy(t,word[i]);
//				strcpy(word[i],word[j]);
//				strcpy(word[j],t);
//			}
//		}
//	}
//	for(i=0;i<count;i++){//Output
//		printf("%s ",word[i]);
//	}
//}

//*****************************************************************************************************************
//2a.Nhập 4 tên 4 người khác nhau,sort tên của người này
//Theo thứ tự tăng dần của từ điển(Không tính đến chữ hoa,chữ thường)
//Input:B a c d
//Output:a B c d
//int strcasecmp(const char *s1, const char *s2) {
//    while (*s1 && *s2) {
//        char c1 = tolower(*s1++);
//        char c2 = tolower(*s2++);
//        if (c1 != c2) return c1 - c2;
//    }return *s1 - *s2;
//}
//main(){
//	printf("Input:\n");
//	char s[4][100];
//	int i,j;
//	for(i=0;i<4;i++){
//		printf("Ten %d: ",i+1);
//		gets(s[i]);
//	}
//	char t[100];
//	for(i=0;i<4-1;i++){
//		for(j=i+1;j<4;j++){
//			if(strcasecmp(s[i],s[j]) > 0){
//				strcpy(t, s[i]);
//				strcpy(s[i], s[j]);
//				strcpy(s[j], t);
//			}
//		}
//	}
//
//	printf("OUTPUT:");
//	for(i=0;i<4;i++){
//		printf("%s ",s[i]);
//	}
//}
//------------------------------------------------------------------
//2b.Nhập 4 tên 4 người khác nhau,sort tên của người này
//(tính đến chữ hoa,chữ thường)
//Input:B a c d
//Output:B a c d
//main(){
//	printf("Input:\n");
//	char s[4][100];
//	int i,j;
//	for(i=0;i<4;i++){
//		printf("Ten %d: ",i+1);
//		gets(s[i]);
//	}
//	char t[100];
//	for(i=0;i<4-1;i++){
//		for(j=i+1;j<4;j++){
//			if(strcmp(s[i],s[j]) > 0){
//				strcpy(t, s[i]);
//				strcpy(s[i], s[j]);
//				strcpy(s[j], t);
//			}
//		}
//	}
//
//	printf("OUTPUT:");
//	for(i=0;i<4;i++){
//		printf("%s ",s[i]);
//	}
//}
//*************************************************************************************************************
//3.Nhập n tên,sort theo Theo mã ASCII có phân biệt chữ hoa,thường)
//Input:4 -> B a c d
//Output:B a c d
//main(){
//	printf("Input:\n");
//	char s[4][100];
//	int i,j;
//	for(i=0;i<4;i++){
//		printf("Ten %d: ",i+1);
//		gets(s[i]);
//	}
//	char t[100];
//	for(i=0;i<4-1;i++){
//		for(j=i+1;j<4;j++){
//			if(strcmp(s[i],s[j]) > 0){
//				strcpy(t, s[i]);
//				strcpy(s[i], s[j]);
//				strcpy(s[j], t);
//			}
//		}
//	}
//	printf("OUTPUT:");
//	for(i=0;i<4;i++){
//		printf("%s ",s[i]);
//	}
//}
//--------------------------------------//:Không phân biệt chữ hoa,chữ thường
//Input:4 -> B a c d
//Output:a B c d
//main(){
//	printf("Input:");
//	int n;scanf("%d",&n);
//	char s[n][100];getchar();
//	int i,j;
//	for(i=0;i<n;i++){
//		printf("Ten %d: ",i+1);
//		gets(s[i]);
//	}
//	char t[100];
//	for(i=0;i<n-1;i++){
//		for(j=i+1;j<n;j++){
//			if(strcasecmp(s[i],s[j]) > 0){
//				strcpy(t, s[i]);
//				strcpy(s[i], s[j]);
//				strcpy(s[j], t);
//			}
//		}
//	}
//	printf("OUTPUT:");
//	for(i=0;i<n;i++){
//		printf("%s ",s[i]);
//	}
//}

//**********************************************************************************************

/*


================STRING Tần Suất)============(Frequency)




*/
//1.Đếm tần suất xuất hiện các ký tự trong chuỗi(có phân biệt chữ hoa,thường)
//Frequency
//Input:aAbc
//Output:
//A xuat hien 1 lan
//a xuat hien 1 lan
//b xuat hien 1 lan
//c xuat hien 1 lan
//int count[1000000] = {0}; // Mảng đếm tần suất
//main(){
//	printf("Input:");
//	char s[100];gets(s);
//	int i;
//	for(i=0;i<strlen(s);i++){
//		count[(unsigned char)s[i]]++; // Tăng giá trị trong mảng count tương ứng với ký tự
//	}
//	printf("OUTPUT:\n");
//	for(i=0;i<256;i++){
//		if(count[i]>0){
//			printf("%c xuat hien %d lan\n",i,count[i]);
//		}
//	}
//}


//**********************************************************************************************
#include<ctype.h>
//2.Đếm tần suất xuất hiện các ký tự trong chuỗi(không phân biệt chữ hoa,thường)
//Frequency
//Input:aAbc
//Output:
//a xuat hien 2 lan
//b xuat hien 1 lan
//c xuat hien 1 lan
//int count[1000000] = {0};
//main(){
//	printf("Input:");
//	char s[100];gets(s);
//	int i;
//	for(i=0;i<strlen(s);i++){
//		s[i]=tolower((unsigned char)s[i]);//Chuyển ký tự về chữ thường để không phân biệt hoa thường
//		count[(unsigned char)s[i]]++; // Tăng giá trị trong mảng count tương ứng với ký tự
//	}
//	printf("OUTPUT:\n");
//	for(i=0;i<256;i++){
//		if(count[i]>0){
//			printf("%c xuat hien %d lan\n",i,count[i]);
//		}
//	}
//}
/*


================STRING ============()




*/
//**********************************************************************************************
//1.Nhập string,tìm 3 ký tự đầu tiên ở vị trí chẵn(tính từ 0)
//Lưu 3 ký tự vào s2[],đảo ngược và gắn lại vào s[]
#include <stdio.h>
#include <string.h>
//main() {
//    char s[100], s2[4]; // s2 có kích thước 4 để chứa 3 ký tự + ký tự kết thúc '\0'
//    int i, len;
//    printf("Nhap chuoi: ");
//    fgets(s, sizeof(s), stdin);
//    // Xóa ký tự xuống dòng nếu có
//    len = strlen(s);
//    if (s[len - 1] == '\n') {
//        s[len - 1] = '\0';
//        len--;
//    }
//    if (len < 5) {// Kiểm tra độ dài chuỗi đủ để lấy 3 ký tự ở vị trí chẵn
//        printf("Chuoi qua ngan, can it nhat 5 ky tu!\n");return 1;
//    }
//    s2[0] = s[0];// Lấy 3 ký tự đầu tiên ở vị trí chẵn (0, 2, 4)
//    s2[1] = s[2];
//    s2[2] = s[4];
//    s2[3] = '\0'; // Ký tự kết thúc chuỗi
//    char temp;// Đảo ngược s2
//    temp = s2[0];
//    s2[0] = s2[2];
//    s2[2] = temp;
//    s[0] = s2[0];// Gắn lại vào s
//    s[2] = s2[1];
//    s[4] = s2[2];
//    printf("Chuoi sau khi xu ly: %s\n", s);
//}
//main(){
//	int i,j,a[100],n,t1,t2;printf("Input N: ");scanf("%d",n);
//	for(i=0;i<n;i++){
//		printf("a[%d]: ",i);
//		scanf("%d",&a[i]);
//	}
//}
//*********************************************************************************************
//2.Nhập string,đảo ngược nguyên âm(giữ nguyên phụ âm) hoặc đảo ngược phụ âm giữ nguyên âm
// nguyên âm (a, e, i, o, u, A, E, I, O, U)



//*********************************************************************************************
//3.Nhập 1 chuỗi các từ cách space.Đảo ngược thứ tự các từ trong chuỗi
//Input:Quan Van Truong
//Output:Truong Van Quan

//main() {
//    printf("Input: ");
//    char s[1000];gets(s);
//    int len = strlen(s);
//    
//    // Đảo ngược toàn bộ chuỗi -> gnourT naV nauQ
//    int left = 0, right = len - 1;
//    while (left < right) {
//        char temp = s[left];
//        s[left] = s[right];
//        s[right] = temp;
//        left++;
//        right--;
//    }
//
//    // Đảo ngược từng từ -> nauQ naV gnourT
//    int i;
//    int start = 0,end = 0;;
//    for(i=0;i<=len;i++) {
//        if (s[i] == ' ' || s[i] == '\0') { 
//        	end = i - 1;
//            while (start < end) {
//                char temp = s[start];
//                s[start] = s[end];
//                s[end] = temp;
//                start++;
//                end--;
//            }
//            start = i + 1;// Cập nhật start cho từ tiếp theo
//        }
//    }
//
//    printf("OUTPUT:\n");
//    printf("%s", s);
//}



//*********************************************************************************************
//5.Nhập n chuỗi (danh sách n string).Sắp xếp danh sách chuỗi theo thứ tự bảng chữ cái (alphabetically).
