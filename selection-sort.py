class Solution: 
    def select(self, arr, i):
        # code here 
        min = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min]:
                min = j
        return min
    
    def selectionSort(self, arr,n):
        #code here
        for i in range(n):
            min = self.select(arr, i)
            temp = arr[i]
            arr[i] = arr[min]
            arr[min] = temp
