function cm = cmpl(bin)
    bin = num2str(bin);
    [d,l] = size(bin);
    for i=1:l
        if bin(i) == '1'
            cm(i) = '0';
        end
        if bin(i) == '0'
            cm(i) = '1';
        end
    end
end