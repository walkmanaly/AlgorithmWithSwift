//
//  Stack.swift
//  AlgorithmWithSwift
//
//  Created by Nick on 2019/6/29.
//  Copyright © 2019 Nick. All rights reserved.
//

import Foundation

// 数组实现

class ArrayStack {
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

// protocol

protocol Stack {
    associatedtype Element
    
    var size: Int { get }
    var isEmpty: Bool { get }
    var peek: Element? { get }
    
    mutating func push(object: Element)
    mutating func pop() -> Element?
    
}

struct IntStack: Stack {
    typealias Element = Int
    
    var size: Int { return stack.count }
    var isEmpty: Bool { return stack.isEmpty }
    var peek: Int? { return stack.last }
    
    private var stack = [Element]()
    
    mutating func push(object: Int) {
        stack.append(object)
    }
    
    mutating func pop() -> Int? {
        return stack.last
    }
}
