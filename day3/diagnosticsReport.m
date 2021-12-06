function [gamma, epsilon] = diagnosticsReport(diagnostics)
u = unique(diagnostics);
[n,b] = histc(diagnostics,u);
[~,is] = sort(n,'descend');
m = diagnostics(arrayfun(@(x) find(b==x,1,'first'),is));
mostPopular = m(1, :);
leastPopular = m(2, :);
gammaBinary = '';
epsilonBinary = '';

for idx = 1:numel(mostPopular)
    element = mostPopular(idx);
    gammaBinary = append(gammaBinary, mat2str(element));
end

for idx = 1:numel(leastPopular)
    element = leastPopular(idx);
    epsilonBinary = append(epsilonBinary, mat2str(element));
end

gamma = bin2dec(gammaBinary);
epsilon = bin2dec(epsilonBinary);
end


