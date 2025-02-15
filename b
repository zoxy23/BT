#include<stdio.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>
#include<stdbool.h>
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
//    for ( i = 0; i < n - 1; i++) {
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

//2.Nhập mảng n phần tử,sắp xếp các phần tử i ở vị trí chẵn (i) (hoặc các phần tử có giá trị chẵn a[i])
//Dùng Bubble Sort
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
//	int i,j,tempCount = 0;
//	for(i=0;i<n;i++){
//		if(i%2==0||arr[i]%2==0){
//			j = tempCount - 1;//phương pháp Insertion Sort để chèn phần tử vào đúng vị trí
//			while
//		}
//	}
//}
//
//void printArray(int arr[],int n){
//	int i;printf("Nhap cac phan tu cua mang: ");
//	for(i=0;i<n;i++)scanf("%d",&arr[i]);
//}
//main(){
//	int n;printf("Nhap N:");scanf("%d",&n);
//}
#include <stdio.h>

void sortEvenIndicesOrEvenValues(int arr[], int n) {
    int tempCount = 0;

    // Vòng lặp duy nhất để lọc và sắp xếp trực tiếp trong mảng gốc
    for (int i = 0; i < n; i++) {
        if (i % 2 == 0 || arr[i] % 2 == 0) {
            // Tìm vị trí chèn cho phần tử arr[i]
            int key = arr[i];
            int j = tempCount - 1;

            // Dùng vòng lặp for để di chuyển phần tử lớn hơn về sau
            for (; j >= 0 && arr[j] > key; j--) {
                arr[j + 1] = arr[j]; // Di chuyển các phần tử lớn hơn về sau
            }

            // Đặt phần tử vào đúng vị trí
            arr[j + 1] = key;
            tempCount++; // Cập nhật số lượng phần tử đã lọc và sắp xếp
        }
    }
}

void printArray(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[] = {5, 8, 3, 10, 2, 7, 6};
    int n = sizeof(arr) / sizeof(arr[0]);
    
    sortEvenIndicesOrEvenValues(arr, n);
    printArray(arr, n);
    
    return 0;
}



























