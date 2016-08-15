//
//  RatingControl.swift
//  \
//
//  Created by Coder on 7/30/16.
//  Copyright © 2016 Coder. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties 2
    var rating = 0 {
        didSet {
        setNeedsLayout()
        }
    }
    
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5

// MARK: Initialization
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + spacing))
            button.frame = buttonFrame
        
        
        }
        
        
    updateButtonSelectionStates()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        
        
        super.init(coder: aDecoder)
        
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        
        
        for _ in 0..<5 {
        let button = UIButton()
            
        button.setImage(emptyStarImage, for: .normal)
        button.setImage(filledStarImage, for: .selected)
        button.setImage(filledStarImage, for: [.highlighted, .selected])
            
        button.adjustsImageWhenHighlighted = false
            
//        button.backgroundColor = UIColor.red()
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), for: .touchDown)
        ratingButtons += [button]
        addSubview(button)
        }
        
    }
    
    override public var intrinsicContentSize: CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (44 * starCount) + (spacing * (starCount - 1))
        return CGSize(width: width, height: 44)
        
    
        }
    
   
    // MARK: Button Action
    
    func ratingButtonTapped(_ button: UIButton) {
        
        rating = ratingButtons.index(of: button)! + 1
        
    }
    
    func updateButtonSelectionStates() {
        
        for (index, button) in ratingButtons.enumerated(){
            button.isSelected = index < rating
        }
        
    }

}

