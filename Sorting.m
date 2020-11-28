ranges = [10;50;100;500;1000;5000;10000];

opSorted = zeros(length(ranges),4);
opUnsorted = zeros(length(ranges),4);
opRandom = zeros(length(ranges),4);

for i = 1:length(ranges)
    for j = 1:3
        
        if j == 1
            arr = linspace(10*ranges(i), 1, ranges(i));
            unSorted = arr.';    
        elseif j == 2
            arr = linspace(1, 10*ranges(i), ranges(i));
            unSorted = arr.';
        else    
            unSorted = randi(10*ranges(i), ranges(i), 1);
        end
        
        %disp(unSorted);
        [sortedQ, ifsQ, swapsQ] = quickSort(unSorted, 0, 0, 1);
        [sortedQ2, ifsQ2, swapsQ2] = quickSort(unSorted, 0, 0, 2);
        [sortedQ3, ifsQ3, swapsQ3] = quickSort(unSorted, 0, 0, 3);
        fprintf("******************************\nBubble Sort:\n")
        [sortedB, ifsB, swapsB] = bubbleSort(unSorted, 0, 0);
        %disp(sorted);
        %disp(ifs);
        %disp(swaps);
        
        if j == 1
            opUnsorted(i,1) = ifsB;
            opUnsorted(i,2) = ifsQ;
            opUnsorted(i,3) = ifsQ2;
            opUnsorted(i,4) = ifsQ3;
        elseif j == 2
            opSorted(i,1) = ifsB;
            opSorted(i,2) = ifsQ;
            opSorted(i,3) = ifsQ2;
            opSorted(i,4) = ifsQ3;
        else    
            opRandom(i,1) = ifsB;
            opRandom(i,2) = ifsQ;
            opRandom(i,3) = ifsQ2;
            opRandom(i,4) = ifsQ3;
        end
        
        
    end
end

figure()
loglog(ranges, opRandom, '^-')
legend( ...
    {'Bubble Sort','Quick Sort(pivot:Rightmost)','Quick Sort(pivot:Leftmost)','Quick Sort(pivot:Random)'}, "Location","northwest")
title('loglog plot for Random Array')
xlabel('Number of elements') 
ylabel('Number of Significant Operations')
grid on
exportgraphics(gcf, '01random.png', 'Resolution',300)

figure()
loglog(ranges, opSorted, '^-')
legend( ...
    {'Bubble Sort','Quick Sort(pivot:Rightmost)','Quick Sort(pivot:Leftmost)','Quick Sort(pivot:Random)'}, "Location","northwest")
title('loglog plot for already Sorted Array')
xlabel('Number of elements') 
ylabel('Number of Significant Operations') 
grid on
exportgraphics(gcf, '02Sorted.png','Resolution',300)

figure()
loglog(ranges, opUnsorted, '^-')
legend( ...
    {'Bubble Sort','Quick Sort(pivot:Rightmost)','Quick Sort(pivot:Leftmost)','Quick Sort(pivot:Random)'}, "Location","northwest")
title('loglog plot for Array sorted in Opposite direction')
xlabel('Number of elements') 
ylabel('Number of Significant Operations') 
grid on
exportgraphics(gcf, '03worst.png','Resolution',300)