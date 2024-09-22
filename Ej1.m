%EJERCICIO 1- Derivación de la función seno en un punto

function Ej1
%Parámetros
N= 100000;  %Numero de intervalos
w = pi;
t0 = 0;
tf = 10;
dt=(tf-t0) /N;

dim = N+1; %Numero de elementos en los vectores !!!!! IMPORTANTE


%Calculo de la función seno
for k=1 : dim
  t(k) = t0 + dt*(k-1);
  y(k) = sin(t(k));

end

%Calculo de la derivada
for k=1 : dim
  if(k == 1)
    dy(k) = (1/(2*dt))*(-3*y(k) + 4*y(k+1) -1*y(k+2));

  elseif(k == dim)
    dy(k) = (1/(2*dt))*(3*y(k) - 4*y(k-1) + 1*y(k-2));

  else
    dy(k) = (1/(2*dt))*(-1*y(k-1) + 0*y(k) + 1*y(k+1));
  endif
end

puntoDy = dy(pi/10);
Err = abs(puntoDy - cos(pi/10))


figure(1)
plot(t, y, "r", t,dy, "b")
grid on



endfunction

Ej1
