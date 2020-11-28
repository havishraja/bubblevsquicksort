function [sortedList, ifsCntr, swapCntr] = bubbleSort(List, ifsCounter, swapCounter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    swap = true;
    [r,~] = size(List);
    
    while(swap == true)
        swap = false;
        for i=1:(r-1) 
            ifsCounter = ifsCounter + 1;
            if(List(i) > List(i+1))
                swapCounter = swapCounter + 1;
                temp = List(i);
                List(i) = List(i+1);
                List(i+1) = temp;
                swap = true;
            end
        end
        r=r-1;
    end
sortedList = List;
ifsCntr = ifsCounter;
swapCntr = swapCounter;
end