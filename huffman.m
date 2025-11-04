clc;
clear all;
close all;

pkg load communications;

x= 1:5;
p= [0.4 0.2 0.2 0.1 0.1];

disp("\nsymbols are ");
disp(x);
disp("\nLength od symbols are");
disp(length(x));

disp("\n Respective Probabilities are");
disp(p);

[p_sorted, idx]= sort (p, 'descend');
x_sorted= x(idx);

dict = huffmandict(x_sorted, p_sorted);
disp("\n huffman dictionary is");
disp(dict);

avg_code_len =0;
for i= 1:length(x)
    total_code_len = p_sorted(i)*length(dict{i});
    avg_code_len= avg_code_len+  total_code_len;

  end
  disp("avg_code_len = ");
    disp(avg_code_len);  
