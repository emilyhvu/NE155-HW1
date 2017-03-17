function [E_log, h_input] = myLogPlot(h)

h_data=log10([0.0500;0.0250;0.0125;0.0063;0.0031;0.0016;0.0008;0.0004]);
E_data=log10([1.036126e-1;3.333834e-2;1.375409e-2;4.177237e-3;1.103962e-3;2.824698e-4;7.185644e-5;1.813937e-5]);
%param=[28.4315,1.7903];

k=28.4315;
p=1.7903;
E_log=[];

for i=1:numel(h)
    soln=log10(k)+p*log10(h(i));
    E_log=[E_log soln];    
end

plot(log10(h),E_log,'b-')
h_input=h.';
hold on
plot(h_data,E_data,'r*')

title('Log-Log Plot of E=kh^p')
xlabel('Log(h)')
ylabel('Log(E)')
%axis([0.75,6.25,0,13])

end