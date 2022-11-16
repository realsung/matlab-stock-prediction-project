%function [date, trade, n] = plottingTradeAmount(date, trade, n)

date = datetime(date, 'InputFormat', 'yyyy/MM/dd');
date = date(day(date) == 1);
trade = trade(day(date) == 1);

%figure()
%plot(date, trade);

figure()
hold on
xlabel('month')
ylabel('trade')
title('Trade Amount')
plot(trade);
legend('trade')
%for i = 1:n
%    coef = polyfit(1:size(trade), trade, i);
%    y = polyval(coef, 1:size(trade), i);
%    plot(1:size(trade), y);
%end

hold off