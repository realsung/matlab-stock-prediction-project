date = datetime(date, 'InputFormat', 'yyyy/MM/dd');
date = date(day(date) == 1);
trade = trade(day(date) == 1);
price = price(day(date) == 1);

figure()
hold on

scatter(trade, price);
xlabel('trade');
ylabel('price');
title('주가-거래량 회귀분석');