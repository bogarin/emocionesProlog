numeros(1).
numeros(0).

numero(Valor):-
  (numeros(Valor) -> (Valor = 1 -> true);
  write(' ese valor no esta autorisado introduse  0  para un NO o  1 para un SI '),
   read(Val),numero(Val)).

primerPregunta:-
  write_ln('tuviste algun problema ultimamente? '),read(Res)
  ,(numero(Res) -> true;
  false).

segundaPregunta:-
  write_ln('algo te causo  alguna molestia emocional o fisicamente? '),read(Res)
  ,(numero(Res) -> true;
  false).

terceraPregunta:-
write_ln('hiciste algo que regulamente no haces? '),read(Res)
,(numero(Res) -> true;
false).

cuartaPregunta:-
write_ln('te incomoda lo que pueda pasar'),read(Res)
,(numero(Res) -> true;
false).

quintaPregunta:-
write_ln('isiste algo de que devas de contarselo a alguien?'),read(Res)
,(numero(Res) -> true;
false).

sestaPregunta:-
write_ln('es algo que no volverias hacer? '),read(Res)
,(numero(Res) -> true;
false).

septimaPregunta:-
write_ln('es algo que el resultado no esta en tus manos y estas inpaciente? '),read(Res)
,(numero(Res) -> true;
false).

octavaPregunta:-
write_ln('quieres esconderte para no ser notado o te pregunten? '),read(Res)
,(numero(Res) -> true;
false).

novenaPregunta:-
write_ln('tuviste buen dia? '),read(Res)
,(numero(Res) -> true;
false).

decimaPregunta:-
write_ln('esperas alguna noticia en particular? '),read(Res)
,(numero(Res) -> true;
false).

confucion:-
  write('ps ya nose has de ser mujer en sus dias!!!! ').


emociones:-
  (primerPregunta ->
    (segundaPregunta -> write('estas triste '),true;
    (terceraPregunta ->
      (cuartaPregunta -> (quintaPregunta ->
        (sestaPregunta ->
          (septimaPregunta -> write('estas preocupado '),true;confucion);
          (octavaPregunta -> write('estas avergonzado '),true;confucion));confucion);confucion)
    ;confucion ));(novenaPregunta ->
      (decimaPregunta -> write('estas emocionado '),true;
      write('estas feliz'),false) ;
      confucion)).
