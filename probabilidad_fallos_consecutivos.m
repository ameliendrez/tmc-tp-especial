
function [probabilidad, todas_las_probabilidades] = probabilidad_fallos_consecutivos(epsilon)

  % Inicializo las variables que necesito
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_casos = 0;
  todas_las_probabilidades = [];
  
  
  % Mientras el algoritmo no converge
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_casos)
  
    % La probabilidad anterior es la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
  
    % Arrojo la moneda
    
    
    prueba1 = my_mex_service(36626800);
    
    if (prueba1 == 0)
      
      prueba2 = my_mex_service(36626800);
      
      if (prueba2 == 0)
        casos_favorables = casos_favorables + 1;
        
       end

    end      
    % Actualizo la cantidad de tiradas
    total_de_casos = total_de_casos+ 1;
    
    % Chequeo de qué lado cayó
    
    end
    
    % Calculo la probabilidad actual
    probabilidad_actual = casos_favorables / total_de_casos;
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        

  
  % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end



