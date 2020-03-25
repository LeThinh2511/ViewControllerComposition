//
//  MultiPlayerScoreViewController.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import UIKit

class MultiPlayerScoreViewController: UIViewController {
    var playerOne: PlayerScoreViewController?
    var playerTwo: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playerOne", let playerOne = segue.destination as? PlayerScoreViewController {
            self.playerOne = playerOne
        }
        
        if segue.identifier == "playerTwo", let playerTwo = segue.destination as? PlayerScoreViewController {
            self.playerTwo = playerTwo
        }
    }
}
