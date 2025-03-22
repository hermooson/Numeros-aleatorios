%% Generador de números aleatorios
% Álvaro Fernández Albares

%En este script se encuentra por secciones 4 ejempos de posibles resultados
%al problema propuesto, cada sección es ejecutable indivivualmente.

%%
clc
clear

N=[1,2,3,4,5];
a= randperm(length(N)); % Se permuten de manera aleatoria el contenido de N

for i= 1:length(N) % Genera números aleatorios del 1 al 5
R1= a(i);
end

for j= 1:length(N)-1 % Genera números aleatorios del 1 al 5
R2= a(j);
end
 
c= R1+R2;

R7= mod(c,7)+1; % Se saca el módulo de la división

if R7 <= 7
Resultado1= R7
end

%%
clc 
clear

a=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
b=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
c= a*b;
d= mod(c, 7); % Se saca el módulo de la división

if d <= 7
Resultado2= d + 1
end

%%
clc
clear

R5=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
R2=randi([0,2], 1, 1); % Genera números aleatorios del 1 al 5

Resultado3= R5 + R2

%%
clc
clear

for i=1:2
R5(i)= randi([1,5], 1, 1); % Genera dos números aleatorios del 1 al 5
end

a= (R5(1)-1)*5+R5(2); %Se generan números del 1 al 25

if a <= 21
Resultado4= mod(a,7)+1 % Se limitan hasta 21 que es el entero mas proximo divisible entre siete
                       % Se saca el módulo de la división
end

