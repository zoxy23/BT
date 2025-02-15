#include<stdio.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>
#include<stdbool.h>
//********************************************************************************************
//1.Viết code cho 3 thuật toán: Interchange, Selection, bubble sort.
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
//void printArray(int arr[], int n) {// Hàm in mảng
//	int i;
//    for(i=0;i<n;i++) {
//        printf("%d ", arr[i]);
//    }printf("\n");
//}
//main() {printf("Mang ban dau: ");
//    int arr[] = {64, 34, 25, 12, 22, 11, 90};
//    int n = sizeof(arr) / sizeof(arr[0]);
//    int arr2[] = {64, 34, 25, 12, 22, 11, 90};// Reset lại mảng(đảm bảo tính toán chính xác hơn)
//    int arr3[] = {64, 34, 25, 12, 22, 11, 90};// Reset lại mảng
//    printArray(arr, n);
//    interchangeSort(arr, n);printf("Mang sau khi sap xep bang Interchange Sort: ");printArray(arr, n);
//    selectionSort(arr2, n);printf("Mang sau khi sap xep bang Selection Sort: ");printArray(arr2, n);
//    bubbleSort(arr3, n);printf("Mang sau khi sap xep bang Bubble Sort: ");printArray(arr3, n);
//}
//********************************************************************************************
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
//    for(i=0;i<n;i++){//Chọn các phần tử số ch
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
//void printArray(int arr[],int n){
//	int i;
//	for(i=0;i<n;i++){
//		printf("%d ",arr[i]);
//	}
//}
//main(){
//	int n,i;printf("Nhap so luong phan tu:");scanf("%d",&n);
//	int arr[n];
//	for(i=0;i<n;i++){
//		printf("Nhap cac phan tu thu %d = ",i+1);
//		scanf("%d",&arr[i]);
//	}
//	giaTriChan(arr,n);
//	printArray(arr,n);
//}
//********************************************************************************************
//3.1Sắp xếp các phần tử có giá trị chẵn tăng dần,giá trị lẻ giảm dần
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
//********************************************************************************************
//3.2 Sắp xếp các phần tử theo tính chất chẵn lẻ
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
//	for(i=0;i<l;i++)	printf("%d ",le[i]);
//}
//main(){//a[]={2 5 3 1 9 8 10}
//	int n,i;printf("Nhap so luong phan tu:");scanf("%d",&n);
//	int arr[n];
//	for(i=0;i<n;i++){
//		printf("Nhap cac phan tu thu %d = ",i+1);
//		scanf("%d",&arr[i]);
//	}
//	sapXepChanLe(arr,n);
//}



















