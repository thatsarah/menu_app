//
//  List.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 05/11/23.
//

import Foundation

class List {
    
       static var popsicleList: [Popsicle] = [Popsicle(f: "Flocos", p: 5, fav: true), Popsicle(f: "Groselha", p: 2, fav: false) ]
    
    static var popsivleFavList: [Popsicle] = []
        
    static func addPopsicles() -> [Popsicle] {
        var newPops: [Popsicle] = []
        for picoles in popsicleList {
            if picoles.favorite {
                newPops.append(picoles)            }
        }     
        return newPops

    }
    
    static func addFavorites() -> [Popsicle] {
        var newFavs: [Popsicle] = []
        for picoles in popsivleFavList {
            if picoles.favorite {
                newFavs.append(picoles)            }
        }     
        return newFavs
        
    }

    }

