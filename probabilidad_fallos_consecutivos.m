
function [probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon)

  % Inicializo las variables
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  cantidad_experimentos = 0;
  todas_las_probabilidades = [];
  
  
  % Mientras el algoritmo no converge
   while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, cantidad_experimentos)
  
    % La probabilidad anterior es la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
  
    % Realizo las pruebas
    prueba1= my_mex_service(36626800);
    prueba2= my_mex_service(36626800);
      
    % Actualizo la cantidad de tiradas
    cantidad_experimentos = cantidad_experimentos+ 1;
    
    % Se comprueba si cumple la condicion buscada
    if ((prueba1==0)&&(prueba2)==0)
      casos_favorables = casos_favorables + 1;
    end
    
    % Calculo la probabilidad actual
    probabilidad_actual = casos_favorables / cantidad_experimentos;
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        
  end
  
  % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end
