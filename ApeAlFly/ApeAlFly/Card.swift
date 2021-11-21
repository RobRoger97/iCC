//
//  Card.swift
//  ApeAlFly
//
//  Created by Roberta Ruggiero on 18/11/21.
//

import Foundation
import SwiftUI

struct Card {
    let titolo : String
    let testo : String
    let image : String
    let border : String
    let tag : String
//    Definiiamo il colore associato al tag
    let color : Color
}

var first_card = Card(titolo: "Rianima gli oggetti",testo: "Riusciresti ad animare i seguenti cerchi? \n Cosa potrebbero diventare? \n Usa la tua creatività e divertiti a trasformare le seguenti figure in oggetti!", image: "circles", border:"border", tag: "drawing", color: Color.green)
var second_card = Card(titolo: "Prova del testo",testo: "Prova del titolo", image: "circles", border:"border", tag: "writing", color: Color.red)
var third_card = Card(titolo: "Rianima gli oggetti",testo: "Prova del titolo", image: "circles", border:"border",tag: "writing", color: Color.red)
var fourth_card = Card(titolo: "Rianima gli oggetti",testo:"Prova del titolo", image: "circles",border:"border", tag: "drawing", color: Color.green)
var fifth_card = Card(titolo: "Rianima gli oggetti",testo: "Prova del titolo", image: "circles", border:"border",tag: "logic", color: Color.orange)
var sixth_card = Card(titolo: "Rianima gli oggetti",testo: "Prova del titolo", image: "circles", border:"border",tag: "logic", color: Color.orange)
//var seventh_card = Card(titolo: "Rianima gli oggetti",testo: "Prova del titolo", image: "circles", border:"border",tag: "script", color: Color.white)
//var eighth_card = Card(titolo: "Rianima gli oggetti",testo: "Prova del titolo", image: "circles", border:"border",tag: "script", color: Color.white)
var basic_know_card = Card(titolo: "Basic Knowledge", testo: "Lo sapevi che la creatività è una cosa molto bella?", image: "", border: "", tag: "basic knowledge", color: Color.blue)
