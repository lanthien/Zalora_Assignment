//
//  StringExtension.swift
//  Zalora_Assignment
//
//  Created by Diep Thien Lan on 10/30/19.
//  Copyright © 2019 Lan Thien. All rights reserved.
//

import Foundation

extension String {
    subscript (value:Range<Int>) -> Substring {
        let lowerBound = String.Index(encodedOffset: value.lowerBound)
        let upperBound = String.Index(encodedOffset: value.upperBound)
        return self[lowerBound..<upperBound]
    }
    
    subscript (value:Int) -> Substring {
        let lowerBound = String.Index(encodedOffset: value)
        let upperBound = String.Index(encodedOffset: value + 1)
        return self[lowerBound..<upperBound]
    }
    
    mutating func removeString(in range:Range<Int>) {
        let lowerBound = String.Index(encodedOffset: range.lowerBound)
        let upperBound = String.Index(encodedOffset: range.upperBound)
        self.removeSubrange(lowerBound..<upperBound)
    }
}
