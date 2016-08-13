//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Coder on 7/26/16.
//  Copyright © 2016 Coder. All rights reserved.
//
import UIKit
import XCTest




class FoodTrackerTests: XCTestCase {
    
    //MARK: FoodTracker Tests
    
    //Test to confirm that the Meal initializer returns when no name or nagative rating is provided.
    func testMealInitialization() {

        //Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //Failure cases.
        let noName = Meal(name : "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad raing", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negaive ratings are invalid, be positive")
    
    }
    
    }
