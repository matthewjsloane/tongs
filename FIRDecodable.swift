//
//  FIRDecodable.swift
//  
//
//  Created by Matthew Sloane on 1/8/18.
//

import Foundation
import Firebase

protocol FIRDecodable {
    init?(data: DataSnapshot)
}
