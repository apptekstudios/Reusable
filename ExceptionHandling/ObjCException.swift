//
//  ObjCException.swift
//  Pods
//
//

import Foundation

extension ObjCException {
  static func catchExceptions<T>(_ tryBlock: @escaping ()->T) throws -> T {
    var resultOptional: T?
    try ObjCException.catch {
      resultOptional = tryBlock()
    }
    guard let result = resultOptional else {
      throw ObjCExceptionError.noResult
    }
    return result
  }
  
  enum ObjCExceptionError: Error {
    case noResult
  }
}
