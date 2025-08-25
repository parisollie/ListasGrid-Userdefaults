//
//  Modelo.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 10/04/23.
//

import Foundation
//Vid72, le damos un identificar a nuestro registro.
struct Modelo: Identifiable {
    let id = UUID()
    let emoji : String
    let nombre : String
    let descripcion : String
}
//Llenamos nuestra lista ,tipo base de datos 
let lista: [Modelo] = [
    Modelo(
           emoji: "🙋🏼‍♂️",
           nombre: "Mano alzada",
           descripcion: "Persona que levanta la mano para preguntar."),
       Modelo(
           emoji: "🥑",
           nombre: "Aguacate",
           descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
       Modelo(
           emoji: "🍕",
           nombre: "Pizza",
           descripcion: "Comida chatarra creada en Italia."),
       Modelo(
           emoji: "🧩",
           nombre: "Pieza de rompecabezas",
           descripcion: "Los rompecabezas o puzzles son piezas comúnmente planas que combinadas correctamente forman una figura, un objeto o una escena. ... Por diversión, entretenimiento o como una forma de relajarse"),
       Modelo(
           emoji: "🗽",
           nombre: "Estatua de la Libertad",
           descripcion: "Estatua ubicada en Nuva York."),
    Modelo(
           emoji: "🙋🏼‍♂️",
           nombre: "Mano alzada",
           descripcion: "Persona que levanta la mano para preguntar."),
       Modelo(
           emoji: "🥑",
           nombre: "Aguacate",
           descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
       Modelo(
           emoji: "🍕",
           nombre: "Pizza",
           descripcion: "Comida chatarra creada en Italia."),
       Modelo(
           emoji: "🧩",
           nombre: "Pieza de rompecabezas",
           descripcion: "Los rompecabezas o puzzles son piezas comúnmente planas que combinadas correctamente forman una figura, un objeto o una escena. ... Por diversión, entretenimiento o como una forma de relajarse"),
       Modelo(
           emoji: "🗽",
           nombre: "Estatua de la Libertad",
           descripcion: "Estatua ubicada en Nuva York."),
    Modelo(
           emoji: "🙋🏼‍♂️",
           nombre: "Mano alzada",
           descripcion: "Persona que levanta la mano para preguntar."),
       Modelo(
           emoji: "🥑",
           nombre: "Aguacate",
           descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
       Modelo(
           emoji: "🍕",
           nombre: "Pizza",
           descripcion: "Comida chatarra creada en Italia."),
       Modelo(
           emoji: "🧩",
           nombre: "Pieza de rompecabezas",
           descripcion: "Los rompecabezas o puzzles son piezas comúnmente planas que combinadas correctamente forman una figura, un objeto o una escena. ... Por diversión, entretenimiento o como una forma de relajarse"),
       Modelo(
           emoji: "🗽",
           nombre: "Estatua de la Libertad",
           descripcion: "Estatua ubicada en Nuva York."),
]

