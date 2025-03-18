//
//  ContentView.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Vid72,creamos nuestra lista
        NavigationView{
            //Vid 72,mandamos a llamar a nuestra lista
            List(lista){item in
                NavigationLink(
                    //Vid74,mandamos a llamar los parametros
                    destination: VistaDetalle(items: item)){
                        HStack{
                            //Vid73,mandamos a llamar al emoji
                            emoji(emoji: item)
                            Text(item.nombre)
                                .font(.subheadline)
                        }
                    }
                    
            }.navigationTitle("Lista")
        }
    }
}

//Vid 73
struct emoji: View {
    let emoji : Modelo
    var body: some View{
        ZStack{
            //Vid73,accedemos al emoji
            Text(emoji.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                )
        }
    }
}
//Vid74,enviar parametros
struct VistaDetalle: View {
    
    let items : Modelo
    
    var body: some View{
        VStack(alignment: .leading, spacing: 3, content: {
            HStack{
                emoji(emoji: items)
                Text(items.nombre).font(.largeTitle)
                Spacer()
            }
            Text(items.descripcion).padding(.top)
            Spacer()
        })
        .padding(.all)
        .navigationBarTitle("Emojis")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
