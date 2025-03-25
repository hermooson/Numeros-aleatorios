%% Generador de números aleatorios
% Álvaro Fernández Albares

%En este script se encuentra por secciones 4 ejempos de posibles resultados
%al problema propuesto, cada sección es ejecutable indivivualmente.

%%
clc
clear

Resultado1= zeros(1, 1E4);

for k= 1: 1E4
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
Resultado1(k)= R7
end
end

figure;
histogram(Resultado1, 'Normalization', 'probability');
xlabel('Numeros del 1 al 7');
ylabel('Frecuencia de repetición');
title('Ejemplo 1');
grid on;


%%
clc 
clear

Resultado2= zeros(1, 1E4);

for k= 1: 1E4
a=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
b=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
c= a*b;

d= mod(c, 7); % Se saca el módulo de la división
if d <= 7
Resultado2(k)= d+1
end
end

figure;
histogram(Resultado2, 'Normalization', 'probability');
xlabel('Numeros del 1 al 7');
ylabel('Frecuencia de repetición');
title('Ejemplo 2');
grid on;
%%


clc
clear

Resultado3= zeros(1, 1E4);

for k= 1: 1E4
R5=randi([1,5], 1, 1); % Genera números aleatorios del 1 al 5
R2=randi([0,2], 1, 1); % Genera números aleatorios del 1 al 5

Resultado3(k)= R5 + R2
end

figure;
histogram(Resultado3, 'Normalization', 'probability');
xlabel('Numeros del 1 al 7');
ylabel('Frecuencia de repetición');
title('Ejemplo 3');
grid on;


%%
clc
clear

Resultado4= zeros(1, 1E4);

for k= 1: 1E4
fuera_rango = false;
while ~fuera_rango
for i=1:2
R5(i)= randi([1,5], 1, 1); % Genera dos números aleatorios del 1 al 5
end

a= (R5(1)-1)*5+R5(2); %Se generan números del 1 al 25

if a <= 21
Resultado4(k)= mod(a,7)+1 % Se limitan hasta 21 que es el entero mas proximo divisible entre siete
                          % Se saca el módulo de la división
fuera_rango = true;
end
end
end

figure;
histogram(Resultado4, 'Normalization', 'probability');
xlabel('Numeros del 1 al 7');
ylabel('Frecuencia de repetición');
title('Ejemplo 4');
grid on;
