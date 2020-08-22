%HECHOS

deben(distanciamiento).
deben(limpiar).
deben(capacitar).
deben(entrenar).
deben(respetar_horarios_del_COE).
deben(desinfectar).

tiene_utilizar(mascarilla).
tiene_utilizar(guantes).
tiene_utilizar(alcohol).

tiene_evitar(tocarse_el_rostro).
tiene_evitar(escupir).
tiene_evitar(contacto_fisico).

persona_con(covid_confirmado).
persona_con(sintomatologia_covid).
persona_con(contacto_con_caso_covid).
persona_con(grupo_de_atencion_prioritaria).
persona_con(mayores_60_años).

vulnerable(persona,adulto_mayor).
vulnerable(persona,enfermedad_respiratoria).

%¿Cuál es la distancia minima?
lugar_abierto(distancia,minima_1_metro).
lugar_cerrado(distancia,minima_2_metros).

%Cuál es el tiempo minimo de lavado y desinfeccion de manos?
lavado_de_manos(tiempo,minimo_40_segundos).
desinfeccio_de_manos(tiempo,minimo_20_segundos).

%REGLAS
%
%¿Cuáles son los implementos de uso obligatorio?
uso_obligatorio(X):-tiene_utilizar(X).

% ¿Qué deben de indicar y proveer los empleadores a sus empleados?
empleadores_deben(X,Y):-deben(X),tiene_utilizar(Y).

%¿Cuáles son las personas que no pueden laborar?
no_puede_trabajar(PERSONA,X):-persona_con(PERSONA),tiene_evitar(X).

%¿Qué tipo de persona es vulnerable a contagio?
es_vulnerable(Persona,X):-vulnerable(Persona,X).

%¿La edad de una persona vulnerable a contagio?
edad_vulnerable(X,si):-X>=60,!.
edad_vulnerable(X,no):-X<60,!.







