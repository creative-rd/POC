//
//  RestAPIParser.swift
//  RESTAPI
//
//  Created by Rahul Dubey on 10/22/17.
//  Copyright © 2017 Rahul Dubey. All rights reserved.
//

import UIKit

enum RequestType: String {
  case GET
  case POST
}

enum HTTPHeaderField: String {
  case contentType = "Content-Type"
  case applicationJSON = "application/json"
  case timeOut = "60"
}


final class RestAPIHelper: NSObject {
  
  static func replaceNameString(string: String, with name: String) -> String {
    return string.replacingOccurrences(of: kCustomerName, with: "\(name)")
  }
  
  static func replacePasswordString(string: String, with password: String) -> String {
    return string.replacingOccurrences(of: kCustomerPassword, with: "\(password)")
  }
  
  static func parseToDictionary(_ data: Data) -> JSONDictionary? {
    guard let parsedJson = try? JSONSerialization.jsonObject(with: data, options:.allowFragments) as? JSONDictionary else {
      return nil
    }
    return parsedJson
  }
  
  static func parseToArray(_ data: Data) -> JSONArray? {
    guard let json = try? JSONSerialization.jsonObject(with: data, options:.allowFragments) as? JSONArray else {
      return nil
    }
    return json
  }
  
}
