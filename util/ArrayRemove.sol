// SPDX-License-Identifier: MIT
// JimenezXik Contracts (last updated v1.0.0) (utils/ArrayRemove.sol)

pragma solidity ^0.8.0;

/**
 * @dev Collection of functions related to remove array elements.
 */
library ArrayRemove {
    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementUnorderedList(uint[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        array[index] = array[array.length - 1];
        array.pop();

        return true;
    }

    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementOrderedList(uint[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        for (uint i = index; i < array.length - 1; i++){
            array[i] = array[i+1];
        }
        array.pop();

        return true;
    }

    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementUnorderedList(int[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        array[index] = array[array.length - 1];
        array.pop();

        return true;
    }

    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementOrderedList(int[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        for (uint i = index; i < array.length - 1; i++){
            array[i] = array[i+1];
        }
        array.pop();

        return true;
    }

    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementUnorderedList(string[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        array[index] = array[array.length - 1];
        array.pop();

        return true;
    }

    /**
     * @dev Removes an element from `array` passing the `index` of the array.
     *
     * `array` is the array which we are going to delete the element.
     * `index` is the position of the array that you want to delete.
     */
    function removeElementOrderedList(string[] storage array, uint index) internal returns (bool){
        if(index >= array.length) return false;

        for (uint i = index; i < array.length - 1; i++){
            array[i] = array[i+1];
        }
        array.pop();

        return true;
    }    

}
