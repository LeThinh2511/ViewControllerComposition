//
//  TimeBarViewController.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import Foundation
import UIKit

final class TimeBarViewController: UIViewController {
    @IBOutlet weak var timeBar: UIView!
    
    var progress: Float = 1 {
        didSet {
            
        }
    }
}
