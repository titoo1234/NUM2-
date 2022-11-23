function s = plotbezier(B,t)
% Opis:
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne točke in
% seznam parametrov
%
% Definicija:
% h = plotbezier(B,t)
%
% Vhodni podatki:
% B matrika velikosti n+1 x d, ki predstavlja kontrolne točke
% Bezierjeve krivulje stopnje n v d-dimenzionalnem prostoru,
% t seznam parametrov dolžine k, pri katerih računamo vrednost
% Bezierjeve krivulje

tocke = bezier(B,t);
[n,m]= size(B); 
% for i=1:n
% %     scatter(B(i,1)',B(i,2)','X')
% %     hold on 
% %     line(B(i,1)',B(i,2)')
%     plot(B(i,1),B(i,2),'-o')
%     hold on 
% end
s = plot(B(:,1),B(:,2),'-o');
% plot(B);
hold on
plot(tocke(:,1),tocke(:,2));

end
