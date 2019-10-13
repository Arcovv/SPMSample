//
//  ViewController.swift
//  SPMExample
//
//  Created by Arco on 2019/10/13.
//  Copyright © 2019 Arco. All rights reserved.
//

import UIKit
import Utility
import Model

class ViewController: UIViewController {
  var dogFactory: DogFactory?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    self.dogFactory = coalesce(.init())(self.dogFactory)
    self.dogFactory?.generateCallback = { dog in
      print("Generate \(dog)")
    }
  }
}

