//
//  Softmax.swift
//  MLKit
//
//  Created by Kesav Mulakaluri on 1/8/16.
//  Copyright © 2016 Kesav Mulakaluri. All rights reserved.
//

import Foundation

public struct Softmax: MLBlock {
    
    /// The name of the Softmax block.
    public let name: String
    
    /// Initializes a Softmax block with name `name`.
    public init(name: String) {
        self.name = name
    }
    
    /// Applies the softmax function to `input`.
    public func apply(input: Matrix) -> Matrix {
        return MLComputeOptions.computeDevice.applySoftmax(input)
    }
}