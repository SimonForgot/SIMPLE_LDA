function w= DO_Lda(data,color)


d1=data(1:50,1:2)';
d2=data(51:100,1:2)';
u0v=mean(d1,2);
u1v=mean(d2,2);
u0=zeros(2,50);
u1=zeros(2,50);
for i=1:50
  u0(:,i)=u0v;
  u1(:,i)=u1v;
endfor;
E1=(d1-u0)*(d1-u0)';
E2=(d2-u1)*(d2-u1)';
Sw=E1+E2;
w=inv(Sw)*(u0v-u1v);
w=w/norm(w);
fprintf('DONE');


