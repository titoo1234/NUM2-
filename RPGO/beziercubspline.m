function B = beziercubspline(u,D)
% Opis:
% beziercubspline izračuna sestavljeno Bezierjevo krivuljo stopnje 3,
% ki je dvakrat zvezno odvedljiva v stikih
%
% Definicija:
% B = beziercubspline(u,D)
%
% Vhodna podatka:
% u seznam parametrov delitve dolžine m+1,
% D matrika, v kateri vsaka izmed m+3 vrstic predstavlja eno
% kontrolno točko sestavljene krivulje
%
% Izhodni podatek:
% B celični seznam dolžine m, v kateri je vsak element matrika
% s štirimi vrsticami, ki določajo kontrolne točke kosa
% sestavljene krivulje
[m,n] = size(u)
[w,v] = size(D)
B = cell(m-1,1);

delDif = zeros(m-1,n)
for i = 1:(m-1)
    delDif(i,:) = deljenaDifTocke(u,1,i)
end
b = zeros(4,v);
b(1,:) = D(1,:);
b(2,:) = D(2,:);
b(3,:) = delDif(2,:)/(delDif(2,:) +delDif(1,:)) * D(2,:) + delDif(1,:)/(delDif(2,:) +delDif(1,:)) * D(3,:);
druga = (delDif(2,:) + delDif(3,:))/(delDif(1,:)+delDif(2,:)+delDif(3,:)) * D(3,:) + delDif(1,:)/(delDif(1,:)+delDif(2,:)+delDif(3,:)) * D(4,:);
b(4,:) = delDif(2,:)/(delDif(2,:) +delDif(1,:)) * b(3,:) + delDif(1,:)/(delDif(2,:) +delDif(1,:)) * druga;
% b(4,:) = [-2.16666667 0.16666667]
B{1} = b

m
for i = 3 : (m-1)
b = zeros(4,v);
b(2,:) = (delDif(i-1,:) + delDif(i,:))/(delDif(i-2,:)+delDif(i-1,:)+delDif(i,:)) * D(i,:) + delDif(i-2,:)/(delDif(i-2,:)+delDif(i-1,:)+delDif(i,:)) * D(i+1,:);
b(3,:) = delDif(i,:)/(delDif(i-2,:)+delDif(i-1,:)+delDif(i,:)) * D(i,:) + (delDif(i-1,:) + delDif(i-2,:))/(delDif(i-2,:)+delDif(i-1,:)+delDif(i,:)) * D(i+1,:);
prejsna = B{i-2};
b(1,:) = prejsna(4,:);
if i < (m-1) 
druga = (delDif(i,:) + delDif(i+1,:))/(delDif(i-1,:)+delDif(i,:)+delDif(i+1,:)) * D(i+1,:) + delDif(i-1,:)/(delDif(i-1,:)+delDif(i,:)+delDif(i+1,:)) * D(i+2,:);
else
druga = delDif(m-1,:)/(delDif(m-2,:)+delDif(m-1,:)) * D(m,:) + delDif(m-2,:)/(delDif(m-2,:)+delDif(m-1,:)) * D(m+1,:);
end
b(4,:) = delDif(i,:)/(delDif(i-1,:)+delDif(i,:)) * b(3,:) + delDif(i-1,:)/(delDif(i-1,:)+delDif(i,:)) * druga
B{i-1} = b
end
b = zeros(4,v);
b(3,:) = D(w-1,:);
b(4,:) = D(w,:);
b(2,:) = delDif(m-1,:)/(delDif(m-2,:)+delDif(m-1,:)) * D(m,:) + delDif(m-2,:)/(delDif(m-2,:)+delDif(m-1,:)) * D(m+1,:);
prejsna = B{m-2};
b(1,:) = prejsna(4,:);
B{m-1} = b
end