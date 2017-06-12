% Script_trabajo_especial
clear 
clc

epsilon1 = 0.1;
epsilon2 = 0.01;
epsilon3 = 0.001;

%comienza la prueba para epsilon 1

tic %comienza el cronometro para calcular la probabilidad

% Calculamos la probabilidad de dos fallos consecutivos
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon1);

tiempo = toc; %finaliza el cronometro para calcular la probabilidad y lo guarda en una variable

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Mostramos por pantalla el tiempo que tardo en calcular la probabilidad
fprintf('El tiempo, en segundos, para calcular la probabilidad fue de: %d\n', tiempo);

% Graficamos como fue evolucionando la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');


%probabilidad parcial los primeros y ultimos 20
probabilidad_parcial_primeros_veinte = std(todas_las_probabilidades(1:20))
probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end))




%comienza la prueba para epsilon 2


tic %comienza el cronometro para calcular la probabilidad

% Calculamos la probabilidad de dos fallos consecutivos
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon2);

tiempo = toc; %finaliza el cronometro para calcular la probabilidad y lo guarda en una variable

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Mostramos por pantalla el tiempo que tardo en calcular la probabilidad
fprintf('El tiempo, en segundos, para calcular la probabilidad fue de: %d\n', tiempo);

% Graficamos como fue evolucionando la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%probabilidad parcial los primeros y ultimos 20
probabilidad_parcial_primeros_veinte = std(todas_las_probabilidades(1:20))
probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end))



%comienza la prueba para epsilon 3


tic %comienza el cronometro para calcular la probabilidad

% Calculamos la probabilidad de dos fallos consecutivos
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon3);

tiempo = toc; %finaliza el cronometro para calcular la probabilidad y lo guarda en una variable

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Mostramos por pantalla el tiempo que tardo en calcular la probabilidad
fprintf('El tiempo, en segundos, para calcular la probabilidad fue de: %d\n', tiempo);
% Graficamos como fue evolucionando la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%probabilidad parcial los primeros y ultimos 20
probabilidad_parcial_primeros_veinte = std(todas_las_probabilidades(1:20))
probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end))


