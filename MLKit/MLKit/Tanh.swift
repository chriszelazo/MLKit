//
//  Tanh.swift
//  MLKit
//
//  Created by Kesav Mulakaluri on 1/3/16.
//  Copyright © 2016 Kesav Mulakaluri. All rights reserved.
//

import Foundation

public struct Tanh: Activation {
    
    /// The name of the Tanh activation block.
    public let name: String
    
    /// Initializes a Tanh MLBlock with name `name`.
    public init(name: String) {
        self.name = name
    }
    
    /// Applies the Tanh function to `input`.
    public func apply(_ input: Matrix) -> Matrix {
        return MLComputeOptions.computeDevice.applyTanh(input)
    }
    
    /// Applies the derivative of the Tanh function to `input`.
    public func applyDerivative(_ input: Matrix) -> Matrix {
        return MLComputeOptions.computeDevice.applyTanhDerivative(input)
    }
}
