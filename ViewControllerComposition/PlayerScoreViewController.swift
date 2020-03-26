//
//  PlayerScoreViewController.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import Foundation
import UIKit

class PlayerScoreViewController: UIViewController {
    @IBOutlet private(set) weak var nameLabel: UILabel!
    @IBOutlet private(set) weak var scoreLabel: UILabel!
    
    var name: String? {
        get { return nameLabel.text }
        set { nameLabel.text = newValue }
    }
    
    var score: String? {
        get { return scoreLabel.text }
        set { scoreLabel.text = newValue }
    }
}
