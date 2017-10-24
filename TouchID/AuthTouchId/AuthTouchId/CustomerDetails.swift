//  CustomerDetails.swift
//  AuthTouchId
//
//  Created by Rahul Dubey on 10/23/17.
//  Copyright © 2017 Rahul Dubey. All rights reserved.
//

import Foundation

public struct CustomerDetails {
  
  var name: String
  var ssn: String
  var address: String
  var phoneNumber: String
  var email: String
  
  var custid: String
  var accountopendate: String
  var dob: String
  

  init(name: String, ssn: String, address: String, phoneNumber: String, email:String, custid: String, dob: String, accountopendate: String) {
    self.name = name
    self.ssn = ssn
    self.address = address
    self.phoneNumber = phoneNumber
    self.email = email
    self.custid = custid
    self.dob = dob
    self.accountopendate = accountopendate
  }
}

