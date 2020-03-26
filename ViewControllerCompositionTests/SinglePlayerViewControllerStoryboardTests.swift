//
//  SinglePlayerViewControllerStoryboardTests.swift
//  ViewControllerCompositionTests
//
//  Created by ThinhLe on 3/26/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import XCTest
@testable import ViewControllerComposition

class SinglePlayerViewControllerStoryboardTests: XCTestCase {
    func test_singlePlayerGameStoryboardInitialViewController_isSingleViewController() {
        let storyboard = UIStoryboard(name: "SinglePlayerGame", bundle: nil)
        XCTAssert(storyboard.instantiateInitialViewController() is SinglePlayerViewController)
    }
    
    func test_singlePlayerViewController_player_isPlayerScoreViewController() {
        let storyboard = UIStoryboard(name: "SinglePlayerGame", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        XCTAssertNotNil(vc.player)
    }
}
