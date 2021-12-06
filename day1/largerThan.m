function [count] = largerThan(numlist)
count = 0;
for k1 = 1:length(numlist)
    if k1 ~= 1
        if numlist{k1} > numlist{k1 - 1}
            count = count + 1;
        end
    end
end
end


