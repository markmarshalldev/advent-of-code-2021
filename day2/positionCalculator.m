function [depthCount, forwardCount] = positionCalculator(directions)
forwardCount = 0;
depthCount = 0;
for k1 = 1:length(directions)
    [direction, number] = parseString(directions{k1});
    if strcmp(direction, 'forward') == 1
        forwardCount = forwardCount + number;
    elseif strcmp(direction, 'up') == 1
        if (depthCount + number) > 0
            depthCount = 0;
        else
            depthCount = depthCount + number;
        end
    elseif strcmp(direction, 'down') == 1
        depthCount = depthCount - number;
    end
end

depthCount = -1 * depthCount;
end
