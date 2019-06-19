clc
clear

a=[[41462,89981,29588,8688]
    [28968,86793,28285,9310]
    [32251,78577,27502,9429]
    [47694,72096,26820,9062]
   [32265,77318,27077,6926]
   [27819,75351,25811,5345]
]

b= [70999,71282,85415,93747,101423,109150]
test=transpose([[33539,72376,26530,5405]
[36994,68751,28870,3672]
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
plot(val_result,'*')
hold on
plot(b,'k')
figure
test_result=sim(net,test)
plot(test_result,'rd')


