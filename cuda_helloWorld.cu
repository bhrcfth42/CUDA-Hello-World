#include<stdio.h>

__global__ void print_kernel(){
	printf("Block numarasi %d\t is parcacigi numarasi %d\n",blockIdx.x,threadIdx.x);
}

int main(){
	print_kernel<<<5,3>>>();
	cudaDeviceSynchronize();
}
