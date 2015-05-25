//
//  BouncingButton.swift
//  BouncingButtons
//
//  Created by Samuel Goodwin on 3/4/15.
//  Copyright (c) 2015 Roundwall Software. All rights reserved.
//

import UIKit

class BouncingButton: UIButton {
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        super.touchesBegan(touches, withEvent: event)
        
        let layer = self.layer
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            layer.transform = CATransform3DMakeScale(0.9, 0.9, 0.9)
        })
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        super.touchesEnded(touches, withEvent: event)
        
        let layer = self.layer
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            layer.transform = CATransform3DIdentity
        })
    }
}
