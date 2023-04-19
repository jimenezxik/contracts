// SPDX-License-Identifier: MIT
// JimenezXik Contracts (last updated v1.0.0) (utils/ArraySearch.sol)

pragma solidity ^0.8.0;

/**
 * @dev Collection of functions related to array search.
 */
library ArraySearch {
    /**
    * @dev Implementation of binary search to find the index of a given number in a sorted array of numbers sorted Ascendant
    *
    * `sortedArray` is the array which we are going to search the element.
    * `elem` is the value to find in the array.
    *
    * Returns de position where the value has to been inserted.
    * If the function reaches the end of the while loop without finding the number, it returns -1 to indicate that the number was not found.
    */
    function binarySearchAsc(uint256[] memory sortedArray, uint256 elem) internal pure returns (int256) {
        int256 left = 0;
        int256 right = int256(sortedArray.length - 1);
        
        while (left <= right) {
            int256 mid = left + (right - left) / 2;
            if (sortedArray[uint256(mid)] == elem) {
                return mid;
            } else if (sortedArray[uint256(mid)] < elem) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        
        return -1;
    }

    /**
    * @dev Implementation of binary search to find the index of a given number in a sorted array of numbers sorted Descendant
    *
    * `sortedArray` is the array which we are going to search the element.
    * `elem` is the value to find in the array.
    *
    * Returns de position where the value has to been inserted.
    * If the function reaches the end of the while loop without finding the number, it returns -1 to indicate that the number was not found.
    */
    function binarySearchDesc(uint256[] memory sortedArray, uint256 elem) internal pure returns (int256) {
        int256 left = 0;
        int256 right = int256(sortedArray.length - 1);
        
        while (left <= right) {
            int256 mid = left + (right - left) / 2;
            if (sortedArray[uint256(mid)] == elem) {
                return mid;
            } else if (sortedArray[uint256(mid)] < elem) {
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }
        
        return -1;
    }

    /**
    * @dev Searches for the first occurrence of a given number in an array from the beginning to the end of the array
    *
    * `array` is the array which we are going to search the element.
    * `elem` is the value to find in the array.
    *
    * Returns de position where the value has to been inserted.
    * If the function reaches the end of the while loop without finding the number, it returns -1 to indicate that the number was not found.
    */
    function firstOccurrenceStartToEnd(uint256[] memory array, uint256 elem) internal pure returns (int256) {
        for (uint256 i = 0; i < array.length; i++) {
            if (array[i] == elem) {
                return int256(i);
            }
        }
        
        return -1;
    }    

    /**
    * @dev Searches for the first occurrence of a given number in an array from the end to the beggining of the array
    *
    * `array` is the array which we are going to search the element.
    * `elem` is the value to find in the array.
    *
    * Returns de position where the value has to been inserted.
    * If the function reaches the end of the while loop without finding the number, it returns -1 to indicate that the number was not found.
    */
    function firstOccurrenceEndToStart(uint256[] memory array, uint256 elem) internal pure returns (int256) {
        for (int256 i = int256(array.length) - 1; i >= 0; i--) {
            if (array[uint256(i)] == elem) {
                return i;
            }
        }
        
        return -1;
    }    
}
