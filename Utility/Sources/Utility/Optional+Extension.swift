//
//  Optional+Extension.swift
//  SPMExample
//
//  Created by Arco on 2019/10/13.
//  Copyright © 2019 Arco. All rights reserved.
//

import Foundation

public func coalesce<T>(_ default: T) -> (T?) -> T {
  return { maybe in
    maybe ?? `default`
  }
}
