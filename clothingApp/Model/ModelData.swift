//
//  ModelData.swift
//  clothingApp
//
//  Created by Gerard Mata Carrera on 06/10/2020.
//

import SwiftUI

struct BagModel: Identifiable {
    @AppStorage("numberOfBuyElements") var numberOfElementsToBuy = 0
    var id = UUID().uuidString
    var image : String
    var title: String
    var price: String
    var text: String
}

var text = "Whether you are heading to work or travelling, a trendy handbag or clutch will add as the perfect accessory with your outfit. Carry your daily essentials in style as you have a choice of shopping for bags."

var bags = [
    BagModel(image: "bag1", title: "Office Bag", price: "$234", text: text),
    BagModel(image: "bag5", title: "Stylus Bag", price: "$434", text: text),
    BagModel(image: "bag6", title: "Round Belt", price: "$134", text: text),
    BagModel(image: "bag2", title: "Belt Bag", price: "$294", text: text),
    BagModel(image: "bag3", title: "Hang Top", price: "$204", text: text),
    BagModel(image: "bag4", title: "Old Fashion", price: "$334", text: text)
]


var scroll_Tabs = ["Hand Bag","Jewellery","Footwear","Dresses","Beauty"]
