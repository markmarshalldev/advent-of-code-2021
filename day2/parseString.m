function [direction, number] = parseString(string)
number = 0;
direction = '';
Keys = {'forward' 'up', 'down'};

for k1 = 1:length(Keys)
    Index = strfind(string, Keys{k1});
    if ~isnan(Index)
        direction = Keys{k1};
        number = sscanf(string(Index(1) + length(Keys{k1}):end), '%g', 1);
    end
end


