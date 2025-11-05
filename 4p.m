clear all;
clc;
close all;

n= input('Enter no of code bits');
k= input('Enter no of message bits');

p= [1 1 0; 1 0 1; 1 1 1; 0 1 1]; %6 5 7 3k
disp(p);

I = eye(k);

G= [I,p];

d= 0:1:2^k-1;
m= dec2bin(d);

C= m*G;

//convert everything 2 bin
for i= 1: 2^k
   for j= 1:n
      C(i,j) = mod(C(i,j),2);
      endfor
    endfor

r= input("Enter no of received bits:");

H= [p', eye(n-k)];
h= H';

s= r*h;

for i= 1: n-k
     s(1,i)= mod(s(1,i),2);
        endfor;

 E= eye(n)  ;
 if(s===[0,0,0]){
    disp('Valid Codeword');
 }     
 else{
    for i= 1:n
       if( s== h(i, :)){
            error=i;
            break;

       }
 }

 disp ("Corrected code word is", r+ E(errror, :));



