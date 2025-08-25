//
//  ModeloColumnas.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 19/04/23.
//

import Foundation
import Combine
import SwiftUI

//V-99,paso 1.1 creamos una clase y usamos el Observable
class ModeloColumnas: ObservableObject {
    /*
       Paso 1.2 ,usamos el published porque se ocupará en otro lados
       así que creamos una instancia, este será un array.
    */
    @Published var gridItem = [GridItem()]
    
    // Paso 1.3, Hacemos una función y le mandamos el número de columnas que queremos
    func columnas(num : Int){
        // Mandamos a llamar a nuestro grid Item
        gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        
        /*
         
         ----------------USER DEFAULTS- PERSISISTIMOS DATOS----------------------------
         
         V-100,Paso 2.0 UserDefaults-Guardamos un registro en un valor, se guarda en la memoria y así hacemos la persistencia de datos.
         
        CLAVE - VALOR, guardamos el parámetro num y le ponemos su llave con lo que lo manda
        remos a llamar
         
        */
        UserDefaults.standard.set(num, forKey: "numero")
    }
    /*
       Paso 2.1,Mandamos a llamar la persistencia de datos con el constructor init,
       INIT ES LO QUE SE INICIALIZA PRIMERAMENTE, para saber si hay algo guardado.
    */
    init(){
        
        /*
          Si existe algo guardado en UserDefault,sino ponemos un número
         ,le ponemos object y le ponemos un número y le hacemos un casting */
        
        // Le pasamos la clave llamado "numero"
        if let num = UserDefaults.standard.object(forKey: "numero") as? Int {
            // SI EXISTE LE DECIMOS traeme el número de columnas guardadas
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        }else{
            // SINO Le damos el número por defecto que es uno por si no hay nada guardado aún.
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: 1)
        }
    }
    
    
}

