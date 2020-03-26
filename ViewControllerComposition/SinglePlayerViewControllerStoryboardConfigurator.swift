//
//  SinglePlayerViewControllerStoryboardConfigurator.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/26/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import Foundation
import UIKit

class SinglePlayerViewControllerStoryboardConfigurator: NSObject {
    var observation: NSKeyValueObservation?
    
    @IBOutlet private weak var player: UIViewController? {
        didSet {
            observation = player?.observe(\.parent, changeHandler: { (player, changes) in
                if let singlePlayerViewController = player.parent as? SinglePlayerViewController {
                    singlePlayerViewController.player = player as? PlayerScoreViewController
                }
            })
        }
    }
}
