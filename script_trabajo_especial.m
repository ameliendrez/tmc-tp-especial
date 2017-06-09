% Script_trabajo_especial
clear 
clc

epsilon = 0.01;

% Calculamos la probabilidad para sacar cara
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');