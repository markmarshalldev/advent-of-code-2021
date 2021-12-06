function [depthCount, forwardCount] = aimPositionCalculator(directions)
forwardCount = 0;
depthCount = 0;
aim = 0;
for k1 = 1:length(directions)
    [direction, number] = parseString(directions{k1});
    if strcmp(direction, 'forward') == 1
        forwardCount = forwardCount + number;
        depthChange = aim * number;
        depthCount = depthCount + depthChange;
    elseif strcmp(direction, 'up') == 1
        aim = aim - number;
    elseif strcmp(direction, 'down') == 1
        aim = aim + number;
    end
end
end
