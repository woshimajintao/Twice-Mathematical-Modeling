clc
clear

a=[[41462,70999,89981,29588]
    [28968,71282,86793,28285]
    [32251,85415,78577,27502]
    [47694,93747,72096,26820]
   [32265,101423,77318,27077]
   [27819,109150,75351,25811]
]

b= [8688,9310,9429,9062,6926,5345]
test=transpose([[33539,115276,72376,26530]
[36994,119349,68751,28870]
])
P=transpose(a)
T=b%T即真实值

[net,tr]=newrb(P,T,0.0,25,100,1)

%倒数第二个参数即神经元个数，尝试5以下的值时预测值与真实值重合度不好
%其他可以调节的参数只有倒数第三个和倒数第一个，这两个参数一般成反比调节
val_result=sim(net,P)%val_result即预测值
%画图
figure
plot(tr.epoch,tr.perf)
figure
plot(val_result,'r')
hold on
plot(b,'b-.')
figure
test_result=sim(net,test)
plot(test_result,'rd')


