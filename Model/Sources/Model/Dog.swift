//
//  Dog.swift
//  SPMExample
//
//  Created by Arco on 2019/10/13.
//  Copyright © 2019 Arco. All rights reserved.
//

import Foundation
import Utility

public struct Dog: Equatable {
  public let name: String
  public let age: Int
  
  public static let sample = Dog(name: "Bill", age: 10)
}

public final class DogFactory {
  var timer: Timer!
  public var generateCallback: ((Dog) -> Void)?
  
  deinit {
    self.timer.invalidate()
    self.timer = nil
  }
  
  public init() {
    self.timer = coalesce(getTimer())(self.timer)
    self.timer.fire()
  }
  
  func getTimer() -> Timer {
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
      self?.generateCallback?(.sample)
    }
  }
}
