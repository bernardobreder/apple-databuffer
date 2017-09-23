//
//  DataBuffer.swift
//  codegenv
//
//  Created by Bernardo Breder on 28/10/16.
//  Copyright © 2016 Bernardo Breder. All rights reserved.
//

import Foundation

open class DataBuffer {
    
    private var _array: [Data] = []
    
    private var _size: Int = 0
    
    public init() {
    }
    
    public var size: Int {
        return _size
    }
    
    public func write(data: Data) {
        _array.append(data)
        _size = _size + data.count
    }
    
    public func write(string: String) {
        if let data = string.data(using: .utf8) { write(data: data) }
    }
    
    public func writeln(string: String) {
        write(string: string + "\n")
    }
    
    public func writeln() {
        write(string: "\n")
    }
    
    public func data() -> Data {
        var data = Data(capacity: _size)
        for item in _array { data.append(item) }
        return data
    }
    
}
