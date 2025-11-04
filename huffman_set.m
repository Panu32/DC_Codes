clc;
clear all;
 
pkg load communications;

x= 1:4;
freq= [50,25,15,10];
p= freq/sum(freq);

[p_sorted, idx] = sort(p, 'descend');
x_sorted= x(idx);

dict = huffmandict(x_sorted, p_sorted);
disp("\n huffman dictionary is");
disp(dict);

avg_code_len =0;
for i= 1:length(x)
     total_code_len = p_sorted(i)* length(dict{i});
     avg_code_len = avg_code_len + total_code_len;
     end;

disp("\n avg code len =");
disp(avg_code_len);     