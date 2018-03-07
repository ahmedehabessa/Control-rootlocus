%Q1
k=1;
 sys=tf([2*k 2*k],[1  9 18 0 0])
 figure
rlocus(sys);

%Q2 
k=1;
sys2=tf([1*k 9*k],[1 4 11 0])
figure
rlocus(sys2);

%Q3
a=.672;
k=2.36;
Gs=tf([0 1],[1 0 1])
GcGs=tf(conv([k k],[1 a]),[1 0 1 0])
sys3=feedback(Gs,1)
figure
step(sys3)
sys5=feedback(GcGs,1)
figure
step(sys5)

%Q4
k=1;
sys4=tf([10*k 3*k],[1 3 2 0])
figure
bode(sys4)

