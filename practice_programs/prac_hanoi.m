function prac_hanoi(nd, p1, p2, p3)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if nd == 1
    fprintf('Disk %d from peg-%d to peg-%d\n',nd, p1, p2);
    return;
end
prac_hanoi(nd - 1, p1, p3, p2);
fprintf('Disk %d from peg-%d to peg-%d\n',nd, p1, p2);
prac_hanoi(nd - 1, p3, p2, p1);
end

