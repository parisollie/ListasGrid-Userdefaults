//
//  GridList.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 10/04/23.
//
import SwiftUI

import Foundation

struct GridList: View {
   
    //V-99,Paso 1.4 usamos el  @ObservedObject
    @ObservedObject var grid = ModeloColumnas()
  
    var body: some View {
        NavigationView{
        
            ScrollView(){
                //Paso 1.5 Traemos el gridItem de ModeloColumnas
                LazyVGrid(columns: grid.gridItem,spacing: 30) {
                    //Traemos nuestros emojis
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationBarTitle("Grids")
            //V-98,Paso 1.0 ponemos el toolbar
            .toolbar{
                ToolbarItem{
                    //Ponemos nuestro menú
                    Menu("Opciones"){
                        Section{
                            Button("1 columna"){
                              //Paso 1.6,Le mandamos nuestro de columnas a ejecutar y accedemos a la función que nos pedira el número de columnas.
                                grid.columnas(num: 1)
                            }
                            Button("2 columnas"){
                                //V-101
                                grid.columnas(num: 2)
                            }
                            Button("3 columnas"){
                                grid.columnas(num: 3)
                            }
                            Button("4 columnas"){
                                grid.columnas(num: 4)
                            }
                            //Paso 1.9,removemos lo que hay en la memoria
                            Button("DESTRUIR UD"){
                                UserDefaults.standard.removeObject(forKey: "numero")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}
