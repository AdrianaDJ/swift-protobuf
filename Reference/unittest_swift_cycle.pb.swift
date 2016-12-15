/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_cycle.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2015 Google Inc.  All rights reserved.
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf


//  Cycles in the Message graph can cause problems for the mutable classes
//  since the properties on the mutable class change types. This file just
//  needs to generate source, and that source must compile, to ensure the
//  generated source works for this sort of case.

//  You can't make a object graph that spans files, so this can only be done
//  within a single proto file.

struct ProtobufUnittest_CycleFoo: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_CycleFoo"}
  public var protoMessageName: String {return "CycleFoo"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "a_foo", json: "aFoo", swift: "aFoo"),
    2: .unique(proto: "a_bar", json: "aBar", swift: "aBar"),
    3: .unique(proto: "a_baz", json: "aBaz", swift: "aBaz"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = ProtobufUnittest_CycleFoo
    var unknown = SwiftProtobuf.UnknownStorage()
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil

    init() {}

    func decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleFoo.self, value: &_aFoo)
      case 2: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBar.self, value: &_aBar)
      case 3: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBaz.self, value: &_aBaz)
      default: break
      }
    }

    func traverse(visitor: inout SwiftProtobuf.Visitor) throws {
      if let v = _aFoo {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1)
      }
      if let v = _aBar {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 2)
      }
      if let v = _aBaz {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 3)
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _aFoo != other._aFoo {return false}
      if _aBar != other._aBar {return false}
      if _aBaz != other._aBaz {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._aFoo = _aFoo
      clone._aBar = _aBar
      clone._aBaz = _aBaz
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  public var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  public mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  public var hasABar: Bool {
    return _storage._aBar != nil
  }
  public mutating func clearABar() {
    return _storage._aBar = nil
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  public var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  public mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_CycleFoo) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

struct ProtobufUnittest_CycleBar: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_CycleBar"}
  public var protoMessageName: String {return "CycleBar"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "a_bar", json: "aBar", swift: "aBar"),
    2: .unique(proto: "a_baz", json: "aBaz", swift: "aBaz"),
    3: .unique(proto: "a_foo", json: "aFoo", swift: "aFoo"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = ProtobufUnittest_CycleBar
    var unknown = SwiftProtobuf.UnknownStorage()
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil

    init() {}

    func decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBar.self, value: &_aBar)
      case 2: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBaz.self, value: &_aBaz)
      case 3: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleFoo.self, value: &_aFoo)
      default: break
      }
    }

    func traverse(visitor: inout SwiftProtobuf.Visitor) throws {
      if let v = _aBar {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1)
      }
      if let v = _aBaz {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 2)
      }
      if let v = _aFoo {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 3)
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _aBar != other._aBar {return false}
      if _aBaz != other._aBaz {return false}
      if _aFoo != other._aFoo {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._aBar = _aBar
      clone._aBaz = _aBaz
      clone._aFoo = _aFoo
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  public var hasABar: Bool {
    return _storage._aBar != nil
  }
  public mutating func clearABar() {
    return _storage._aBar = nil
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  public var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  public mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  public var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  public mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_CycleBar) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

struct ProtobufUnittest_CycleBaz: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_CycleBaz"}
  public var protoMessageName: String {return "CycleBaz"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "a_baz", json: "aBaz", swift: "aBaz"),
    2: .unique(proto: "a_foo", json: "aFoo", swift: "aFoo"),
    3: .unique(proto: "a_bar", json: "aBar", swift: "aBar"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = ProtobufUnittest_CycleBaz
    var unknown = SwiftProtobuf.UnknownStorage()
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil

    init() {}

    func decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBaz.self, value: &_aBaz)
      case 2: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleFoo.self, value: &_aFoo)
      case 3: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_CycleBar.self, value: &_aBar)
      default: break
      }
    }

    func traverse(visitor: inout SwiftProtobuf.Visitor) throws {
      if let v = _aBaz {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1)
      }
      if let v = _aFoo {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 2)
      }
      if let v = _aBar {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 3)
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _aBaz != other._aBaz {return false}
      if _aFoo != other._aFoo {return false}
      if _aBar != other._aBar {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._aBaz = _aBaz
      clone._aFoo = _aFoo
      clone._aBar = _aBar
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  public var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  public mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  public var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  public mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  public var hasABar: Bool {
    return _storage._aBar != nil
  }
  public mutating func clearABar() {
    return _storage._aBar = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_CycleBaz) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}
