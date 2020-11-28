function [LList, RList, ifsCntr, swapCntr] = orderElement(List, ifsCounter, swapCounter)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    i = 1;
    [len, ~] = size(List);
    j = len;
    
    pivot = List(len);
    j = j - 1;
    
    while(i <= j)
        ifsCounter = ifsCounter + 1;
        if(List(i) > pivot)
            ifsCounter = ifsCounter + 1;
            if(List(j) < pivot)
                temp = List(i);
                List(i) = List(j);
                List(j) = temp;
                swapCounter = swapCounter + 1;
            else
                j = j - 1;
            end
        else
            i = i + 1;
        end
    end
    
    List(len) = List(i);
    List(i) = pivot;       
    
    swapCounter = swapCounter + 1;
    
    
    LList = List(1:i);
    RList = List(i+1:len);
    ifsCntr = ifsCounter;
    swapCntr = swapCounter;

end