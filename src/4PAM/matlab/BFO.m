SNR_dB = 4;
SNR = 10^(SNR_dB/10);
beta = 1;

sigma = 1/sqrt(2*SNR);
fun1 = zeros(100,100);
fun2 = zeros(100,100);
fun3 = zeros(100,100);
i = 0;

for a = linspace(0.001,1/sqrt(5),100)
    j = 0;
    b = sqrt(2-a^2);

    sig_a = sqrt(sigma^2+beta*a^2);
    sig_b = sqrt(sigma^2+beta*b^2);
    
    for c = linspace(0.33/sqrt(5),2/sqrt(5),100)


            fun1(i+1,j+1) = ((1/50)*exp((-((c-a)^2))/sig_a^2) - (1/50)*exp((-((b-c)^2))/sig_b^2) + (1/50)*exp((-(b^2))/sig_b^2)...
                +(1/(2*(((c-a)/sig_a)+1)))*exp(-((c-a)^2)/(2*sig_a^2))-(1/(2*(((b-c)/sig_b)+1)))*exp(-((b-c)^2)/(2*sig_b^2))...
                +(1/(2*((b/sig_b)+1)))*exp(-(b^2)/(2*sig_b^2)))^2;
            
            
            fun2(i+1,j+1) = ((1/50)*exp((-(c-a)^2)/sig_a^2) + (1/50)*exp((-(c+a)^2)/sig_a^2) - (1/50)*exp((-a^2)/sig_a^2)...
                +(1/(2*(((c-a)/sig_a)+1)))*exp(-(c-a)^2/(2*sig_a^2))+(1/(2*(((c+a)/sig_a)+1)))*exp(-(c+a)^2/(2*sig_a^2))...
                -(1/(2*((a/sig_a)+1)))*exp(-a^2/(2*sig_a^2)))^2;
            
            
            fun3(i+1,j+1) = ((1/50)*exp((-(b-c)^2)/sig_b^2) - (1/50)*exp((-b^2)/sig_b^2) + (1/50)*exp((-(c+a)^2)/sig_a^2)...
                - (1/50)*exp((-a^2)/sig_a^2)+ (1/(2*(((b-c)/sig_b)+1)))*exp(-(b-c)^2/(2*sig_b^2))-...
                (1/(2*(((b)/sig_b)+1)))*exp(-b^2/(2*sig_b^2))...
                +(1/(2*(((c+a)/sig_a)+1)))*exp(-(c+a)^2/(2*sig_a^2))...
                -(1/(2*((a/sig_a)+1)))*exp(-a^2/(2*sig_a^2)))^2;
            j = j+1;
            
    end
    i = i+1;
end
fig = gcf
aa = linspace(0.001,1/sqrt(5),100);
cc = linspace(0.33/sqrt(5),2/sqrt(5),100);
[a,c] = meshgrid(aa,cc); 

surfc(a,c,fun2)
%hold on;
%surf(a,c,fun2)
%hold on;
%surf(a,c,fun3)
%hold on;
xlabel('a')
ylabel('c')
zlabel('Function')
ax = gca;
ax.FontSize = 30;
%view(15,115)
%saveas(gcf,'surface.jpg')
%cleanfigure;
%matlab2tikz('bfo.tex')


