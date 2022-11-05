//
//  RipeningModel.swift
//  Avocados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
