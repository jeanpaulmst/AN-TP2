%EJERCICIO 4- Obtención de la función Derivada de 𝒚(𝒕) = (𝒆^-𝒑𝒕)*𝒔𝒊𝒏(𝒘 𝒕)

function Ej4
%Parámetros
N= 100;  %Numero de intervalos
w = 4;
t0 = 0;
tf = 8;
dt=(tf-t0) /N;
p=0.5;

dim = N+1; %Numero de elementos en los vectores !!!!! IMPORTANTE


%Calculo de la función
for k=1 : dim
  t(k) = t0 + dt*(k-1);
  y(k) = exp(-p*t(k))*sin(w*t(k));

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

figure(1)
plot(t, y, "r", t,dy, "b")
grid on



endfunction

Ej5
