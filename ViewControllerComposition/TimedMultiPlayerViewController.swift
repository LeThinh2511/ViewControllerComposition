//
//  TimedMultiPlayerViewController.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import UIKit

class TimedMultiPlayerViewController: UIViewController {
    var timeBar: TimeBarViewController?
    var players: MultiPlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "players", let players = segue.destination as? MultiPlayerScoreViewController {
            self.players = players
        }
        
        if segue.identifier == "timeBar", let timeBar = segue.destination as? TimeBarViewController {
            self.timeBar = timeBar
        }
    }
}
