function [slide] = slideGenerator(A)
slide = {};
for k1 = 1:length(A)
    if k1 ~= length(A) && k1 ~= (length(A) - 1)
        slide{k1} = (A{k1} + A{k1 + 1} + A{k1 + 2});
    end
end
end


