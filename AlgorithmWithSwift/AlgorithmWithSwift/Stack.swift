//
//  Stack.swift
//  AlgorithmWithSwift
//
//  Created by Nick on 2019/6/29.
//  Copyright © 2019 Nick. All rights reserved.
//

import Foundation


class Stack {
    var stack: [Any]
    var isEmpty: Bool { return stack.isEmpty }
    var peek: Any? { return stack.last }
    
    init() {
        stack = [Any]()
    }
    
    func push(_ object: Any) {
        stack.append(object)
    }
    
    func pop() -> Any? {
        if stack.isEmpty {
            return nil
        } else {
            return stack.removeLast()
        }
    }
    
}
