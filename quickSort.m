function [sortedList, ifsCntr, swapCntr] = quickSort(List, ifsCounter, swapCounter, type)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
    [r, ~] = size(List);
    
    ifsCounter = ifsCounter + 1;
    if r > 1
       
       if type == 1    
           [LList, RList, ifsCounter, swapCounter] = orderElement( ...
               List, ifsCounter, swapCounter);
       elseif type == 2
           [LList, RList, ifsCounter, swapCounter] = orderElement2( ...
               List, ifsCounter, swapCounter);
       elseif type == 3
           [LList, RList, ifsCounter, swapCounter] = orderElement3( ...
               List, ifsCounter, swapCounter);
       end
       [LSubList, ifsCounter, swapCounter] = quickSort( ...
           LList(1:end-1), ifsCounter, swapCounter, type);
       
       LList = [LSubList; LList(end)];
       
       [RList, ifsCounter, swapCounter] = quickSort( ...
           RList, ifsCounter, swapCounter, type);
       
       sortedList = [LList ; RList];
       ifsCntr = ifsCounter;
       swapCntr = swapCounter;
       
    else
       ifsCounter = ifsCounter + 1;
       sortedList = List;
       ifsCntr = ifsCounter;
       swapCntr = swapCounter;
    end
end

