%EJERCICIO 2- Derivación de la función cos(x) en todo el periodo

function Ej2
%Parámetros
N= 100000;  %Numero de intervalos
w = pi;
t0 = 0;
tf = 2*pi;
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

%Calculo de derivada segunda
for i=1 : dim
  if(i == 1)
    ddy(i) = (1/(2*dt))*(-3*dy(i) + 4*dy(i+1) -1*dy(i+2));
  elseif(i == dim)
    ddy(i) = (1/(2*dt))*(3*dy(i) - 4*dy(i-1) + 1*dy(i-2));
  else
    ddy(i) = (1/(2*dt))*(-1*dy(i-1) + 0*dy(i) + 1*dy(i+1));
  endif
end

figure(1)
plot(t, y, "r", t,dy, "b", t,ddy,"g")
grid on



endfunction

Ej2

