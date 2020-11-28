function [LList, RList, ifsCntr, swapCntr] = orderElement2(List, ifsCounter, swapCounter)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    i = 1;
    [len, ~] = size(List);
    j = len;
    
    %pivot = List(len);
    %j = j - 1;
    pivot = List(1);
    i = i + 1;
    
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
    
    %List(len) = List(i);
    %List(i) = pivot;    
    List(1) = List(j);
    List(j) = pivot;    
    
    swapCounter = swapCounter + 1;
    
    
    LList = List(1:j);
    RList = List(j+1:len);
    ifsCntr = ifsCounter;
    swapCntr = swapCounter;

end