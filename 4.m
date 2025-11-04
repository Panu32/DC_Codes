clear all;
close all;
clc;

n= input('Enter no. of code bits: ');
k= input('Enter no. of message bits: ');

p= [1 1 0; 1 0 1; 1 1 1; 0 1 1]; %6 5 7 3k
disp('Parity matrix: ');
disp(p);

I = eye(k);
G= [I,p];
disp('Generator matrix');
disp(G);

d= 0: 1: 2^k-1;
m = dec2bin(d);
disp('message words');
disp(m);

// Codewords
C= m*G;
for i= 1: 2^k
    for j = 1:n 
       C(i,j) = mod(C(i,j),2);
       endfor
     endfor  
disp("Code words are: ");
disp(C);

weight = sum(C,2);
disp("hamming weight of code");
disp(weight);

d= min(weight);
disp("minimum hamming weight(dmin): ");
disp(d);

H= [p', eye(n-k)];
disp('H = [transpose(P):I(n-k)]');
disp(H);

E= eye(n);
r= input('Enter no of recieved bits: );
s= r*H;

disp('Syndrome S = ');
disp(s);

for i= 1: n-k 
    s(1,i) = mod(s(1,i),2);
    endfor
h= H'
if(s= [0,0,0]){
disp('valid codeword')
}else{
  for i= 1:n
    if(s== h(i, :)){
      error =i;
      break;
      }
      
  }