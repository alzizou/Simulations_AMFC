function out = External_Product3(inp1,inp2)

out = zeros(3,1);

out(1) = inp1(2)*inp2(3) - inp1(3)*inp2(2);
out(2) = -1 * (inp1(1)*inp2(3) - inp1(3)*inp2(1));
out(1) = inp1(1)*inp2(2) - inp1(2)*inp2(1);

end