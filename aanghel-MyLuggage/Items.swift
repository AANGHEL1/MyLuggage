//
//  Items.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/9/21.
//


let items = [
    Item(name: "Tshirt",
        type: .tshirt,
        amount: "0",
        weight: 0.2),
    Item(name: "Pants",
        type: .pants,
        amount: "0",
        weight: 0.8),
    Item(name: "Cap",
        type: .cap,
        amount: "0",
        weight: 0.2),
    Item(name: "Swimsuit",
        type: .swimsuit,
        amount: "0",
        weight: 0.7),
    Item(name: "Beach Bag",
        type: .beachbag,
        amount: "0",
        weight: 0.9),
    Item(name: "Sun Glasses",
        type: .sunglasses,
        amount:"0",
        weight: 0.08),
    Item(name: "Socks",
        type: .socks,
        amount:"0",
        weight: 0.1),
    Item(name: "Shoes",
        type: .shoes,
        amount:"0",
        weight: 1),
    Item(name: "Toothbrush",
        type: .toothbrush,
        amount:"0",
        weight: 0.02),
    Item(name: "Toothpaste",
        type: .toothpaste,
        amount:"0",
        weight: 0.17),
    Item(name: "Sun Lotion",
        type: .sunlotion,
        amount:"0",
        weight: 0.35),
    Item(name: "Pajama",
        type: .pajama,
        amount:"0",
        weight: 0.3),
    Item(name: "Underwear",
        type: .underwear,
        amount:"0",
        weight: 0.2),
    Item(name: "Beachball",
        type: .beachball,
        amount:"0",
        weight: 0.16),
    Item(name: "Camera",
        type: .camera,
        amount:"0",
        weight: 1),
    Item(name: "Beanie",
        type: .beanie,
        amount:"0",
        weight: 0.15),
    Item(name: "Jumper",
        type: .jumper,
        amount:"0",
        weight: 0.5),
    Item(name: "Jacket",
        type: .jacket,
        amount:"0",
        weight: 0.8),
    Item(name: "Skis",
        type: .skis,
        amount:"0",
        weight: 6.8),
    Item(name: "Ski Goggles",
        type: .skigoggles,
        amount:"0",
        weight: 0.3),
    Item(name: "Sweater",
        type: .sweater,
        amount:"0",
        weight: 0.5),
    Item(name: "Boots",
        type: .boots,
        amount:"0",
        weight: 1.5),
    Item(name: "Scarf",
        type: .scarf,
        amount:"0",
        weight: 0.3),
    Item(name: "Gloves",
        type: .gloves,
        amount:"0",
        weight: 0.15),
    
]

import Foundation


class Item {
    enum `Type`: String {
        case tshirt = "tshirt"
        case pants = "pants"
        case cap = "cap"
        case swimsuit = "swimsuit"
        case beachbag = "beachbag"
        case sunglasses = "sunglasses"
        case socks = "socks"
        case shoes = "shoes"
        case toothbrush = "toothbrush"
        case toothpaste = "toothpaste"
        case sunlotion = "sunlotion"
        case pajama = "pajama"
        case underwear = "underwear"
        case beachball = "beachball"
        case camera = "camera"
        case beanie = "beanie"
        case jumper = "jumper"
        case jacket = "jacket"
        case skis = "skis"
        case skigoggles = "skigoggles"
        case sweater = "sweater"
        case boots = "boots"
        case scarf = "scarf"
        case gloves = "gloves"
    }
    var name: String
    var type: Type
    var amount: String
    var weight:Double
    init(name: String, type: Type, amount:String, weight:Double) {
        self.name = name
        self.type = type
        self.amount = amount
        self.weight = weight
    }
      
}
