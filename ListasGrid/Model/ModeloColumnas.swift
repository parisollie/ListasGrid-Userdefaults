//
//  ModeloColumnas.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 19/04/23.
//


import Foundation
import Combine
import SwiftUI

//V-99,paso 1.1
class ModeloColumnas: ObservableObject {
    //Paso 1.2 ,creamos una instancia, este será un array.
    @Published var gridItem = [GridItem()]
    
    //Paso 1.3, Hacemos una función y le mandamos el número de columnas que queremos
    func columnas(num : Int){
        //Mandamos a llamar a nuestro grid Item
        gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        
        /*
         
         ----------------USER DEFAULTS- PERSISITIMOS DATOS----------------------------
         
         V-100,Paso 1.7 UserDefaults-Guardamos un registro en un valor, se guarda en la memoria
         y asì hacemos la persistencia de datos
         
        */
        
        //CLAVE - VALOR, guardamos el parámetro num
        UserDefaults.standard.set(num, forKey: "numero")
    }
    /*
       Paso 1.8,Mandamos a llamar la persistencia de datos con el constructor init
       INIT ES LO QUE SE INICIALIZA
    */
    init(){
        
        /*Si existe algo guardado en UserDefault,si no ponemos un numero
         ,le ponemos object y le ponemos un numero y le hacemos un casting */
        
        //Le pasamos la clave llamado "numero"
        if let num = UserDefaults.standard.object(forKey: "numero") as? Int {
            //SI EXISTE LE DECIMOS traeme el número de columnas guardadas
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        }else{
            //Le damos el número por defecto que es uno
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: 1)
        }
    }
    
    
}

