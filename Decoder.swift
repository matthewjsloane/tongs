//
//  Decoder.swift
//  
//
//  Created by Matthew Sloane on 1/8/18.
//

import Foundation
import Firebase

public struct Decoder {
    static func decode<T>(_ path: String, snapshot: DataSnapshot) -> T? {
        return snapshot.childSnapshot(forPath: path).value as? T
    }
    
    static func decode<T: FIRDecodable>(_ path: String, snapshot: DataSnapshot) -> T? {
        return T.init(data: snapshot.childSnapshot(forPath: path))
    }
    
    static func decode<T: FIRDecodable>(_ path: String, snapshot: DataSnapshot) -> [T?] {
        var items: [T] = []
        
        snapshot.childSnapshot(forPath: path).children.forEach { (childSnapshot) in
            
            items.append((T.init(data: childSnapshot as! DataSnapshot))!)
        }
        
        return items
    }
}
