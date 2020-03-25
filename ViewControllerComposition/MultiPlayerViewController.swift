//
//  MultiPlayerViewController.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import UIKit

class MultiPlayerViewController: UIViewController {
    var players: MultiPlayerScoreViewController? {
        return children.first as? MultiPlayerScoreViewController
    }
}
