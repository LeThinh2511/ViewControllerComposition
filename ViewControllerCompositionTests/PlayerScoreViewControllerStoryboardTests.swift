//
//  PlayerScoreViewControllerStoryboardTests.swift
//  ViewControllerCompositionTests
//
//  Created by ThinhLe on 3/26/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import XCTest
@testable import ViewControllerComposition

class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    func test_playerOneStoryboardInitialVC_isPlayerScoreViewController() { XCTAssert(makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updateNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        _ = vc.view
        vc.name = "le thinh"
        XCTAssertEqual(vc.nameLabel.text, "le thinh")
    }
    
    func test_playerOneStoryboard_scoreSetter_updateScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        _ = vc.view
        vc.score = "0000"
        XCTAssertEqual(vc.scoreLabel.text, "0000")
    }
    
    // MARK: Helper
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        return storyboard.instantiateInitialViewController() as! PlayerScoreViewController
    }
}
