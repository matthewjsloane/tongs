//
//  FIREncodable.swift
//  
//
//  Created by Matthew Sloane on 1/8/18.
//

import Foundation
import Firebase

protocol FIREncodable {
    func encode()
    var snapshot: DataSnapshot? { get }
}

extension FIREncodable {
    func updateFromCache<T: FIREncodable>(_ key: String, value: Any?) -> T? {
        return snapshot?.ref.child(key).setValue(value)
    }
}
