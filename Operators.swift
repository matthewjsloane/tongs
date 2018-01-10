//
//  Operators.swift
//  
//
//  Created by Matthew Sloane on 1/8/18.
//

import Foundation
import Firebase

precedencegroup DecodingPrecedence {
    associativity: left
    higherThan: CastingPrecedence
}
precedencegroup EncodingPrecedence {
    associativity: left
    higherThan: CastingPrecedence
}

infix operator <-* : DecodingPrecedence
infix operator *-> : EncodingPrecedence



func <-* <T>(key: String, snapshot: DataSnapshot) -> T? {
    return Decoder.decode(key, snapshot: snapshot)
}
func <-* <T: FIRDecodable>(key: String, snapshot: DataSnapshot) -> T? {
    return Decoder.decode(key, snapshot: snapshot)
}
func <-* <T: FIRDecodable>(key: String, snapshot: DataSnapshot) -> [T]? {
    return Decoder.decode(key, snapshot: snapshot)
}
//
//func *-> <T: FIREncodable>(key: String, value: Any?) -> T {
//    return Encoder.encode(key, value: value)
//}

