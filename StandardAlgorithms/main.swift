//
//  main.swift
//  StandardAlgorithms
//
//  Created by Hersov, Jasper (HWTA) on 11/11/2020.
//

import Foundation

let searching = Searching()
let sorting = Sorting()

print("STANDARD ALGORITHMS")
print("\n1. LINEAR SEARCH")
print("This is a simple searching algorithm that goes through every item in an array in a serial manner, checking whether it is equal to the desired value. If it reaches the end of the array without having found the value, it returns false.The time complexity of the linear search is O(n) but the best case is when the value is the first in the list and so this is O(1). Space complexity is just O(1)")
print("Example input: array = [4,8,9,1,7,3,6,1,4,11], value = 2")
print("Example output: \(searching.linearSearch(data: [4,8,9,1,7,3,6,1,4,11], value: 2))")

print("\n2. BINARY SEARCH")
print("This is a searching algorithm that requires the array to be already sorted. It uses a divide and conquer strategy to repeatedly divide in half the portion of the array which could contain the desired value. Time complexity is O(logn) but the best case is when the value is in the middle of the list (and so is the first one checked) which is O(1). Space complexity is just O(1)")
print("Example input: array = [1,5,6,8,9,12,16,19], value = 16")
print("Example output: \(searching.binarySearch(data: [15,6,8,9,12,16,19], value: 16))")

print("\n3. BUBBLE SORT")
print("This is a sorting algorithm which compares consecutive items in an array and swaps them if they are in the incorrect order, thereby bubbling the largest values towards the end of the array. Once a pass is made during which there are no swaps, the array is declared sorted. The bubble sort has complexity O(n^2), but the best case is when the items are already sorted and so it just needs to go through the array once therefore O(n). The space complexity is O(1)")
print("Example input: array = [4,6,2,9,7,8,2,1,3]")
print("Example output: \(sorting.bubbleSort(data: [4,6,9,5,7,8,2,1,3]))")

print("\n4. INSERTION SORT")
print("This a sorting algorithm which sorts one item at a time, inserting it into the right place array by comparing it to items which already have been sorted. It contains two nested loops and so the time complexity is O(n^2), but in the best case, the complexity is O(n). The space complexity is O(1)")
print("Example input: array = [4,6,2,9,7,8,2,1,3]")
print("Example output: \(sorting.insertionSort(data: [4,6,9,5,7,8,2,1,3]))")

print("\n5. MERGE SORT")
print("This is a sorting algorithm which divides the array into its individual units, and then merges these 'sublists' together in pairs, eventually combining them into a single sorted array. The merge sort is an example of a divide and conquer algorithm, but there are n sublists to be merged, so the time complexity is O(nlogn). The merge sort requires additional memory locations to hold each sublist so the space complexity is O(n)")
print("Example input: array = [4,6,2,9,7,8,2,1,3]")
print("Example output: \(sorting.mergeSort(data: [4,6,9,5,7,8,2,1,3]))")

print("\n6. QUICK SORT")
print("The quick sort selects a pivot value and then arranges the elements of the array depending on whether they are greater than or less than the pivot. It then repeats this process for each subarray on each side of the pivot. The best and average cases for time complexity are O(nlogn) because it is a divide and conquer algorithm, but the worst case is if the pivot is always the greatest, or the smallest number in each subarray, and the time complexity becomes O(n^2). Another advantage is that it does not need additional memory, like the merge sort so space complexity is O(1).")
print("Example input: array = [4,6,2,9,7,8,2,1,3]")
print("Example output: \(sorting.quickSort(data: [4,6,9,5,7,8,2,1,3]))")

