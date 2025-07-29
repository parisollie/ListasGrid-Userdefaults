# List and Grids Seccion 16 (A) User Defaults

A new iOS project.

## Getting Started

This project is a starting point for a iOS application.

This application contains the following knowledge:

- User Defaults
  
- Vstack,Zstack,Htsack,Aligment,Padding
  
- Slider

- iOS 17

- NavigationLink

- Grid & List

## Teoría

USER DEFAULTS- PERSISISTIMOS DATOS

Nos permite guardar un registro en un valor, valor que persiste y se queda guardado 
en la memoria de la aplicación.Este no se borra cuando se detiene la aplicación o cuando se cierra.

La única manera de borrarlo es:
- Uno que nosotros mismos tengamos un botón donde lo eliminemos o alguna acción que lo elimine.
- Y la otra es eliminar la aplicación.
- Es una manera de persistir un registro. 
- User defaults funciona exactamente igual en UIkit y SwiftUI.


Guardamos un registro en un valor, se guarda en la memoria y así hacemos la persistencia de datos.

Siempre va con el INIT()

Mandamos a llamar la persistencia de datos con el constructor init,
INIT ES LO QUE SE INICIALIZA, para saber si hay algo guardado.

Ejemplo:

//CLAVE - VALOR, guardamos el parámetro num
UserDefaults.standard.set(num, forKey: "numero")


## The aplication look like this :

![Captura de Pantalla 2024-05-26 a la(s) 13 04 39](https://github.com/user-attachments/assets/ff817184-3f3b-4ecd-b59a-019b04deccb7)
