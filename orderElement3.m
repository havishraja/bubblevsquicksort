function [LList, RList, ifsCntr, swapCntr] = orderElement3(List, ifsCounter, swapCounter)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    i = 1;
    [len, ~] = size(List);

    a = 1;
    b = len + 1;
    r = (b-a).*rand(1) + a;
    pivot = List(fix(r));

    List(fix(r)) = [];
    len = len - 1;
    j = len;   
    
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
    
    %swapCounter = swapCounter + 1;
    
    
    LList = [List(1:j);pivot];
    RList = List(j+1:len);
    ifsCntr = ifsCounter;
    swapCntr = swapCounter;

end