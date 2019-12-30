//
//  CircleView.swift
//  LoadingLikeABoss
//
//  Created by Razvigor Andreev on 2/22/16.
//  Copyright © 2016 Razvigor Andreev. All rights reserved.
//
 
import UIKit
 
@IBDesignable public class CircleView: UIView {
    
    var masterSlider: CGFloat = 0
    
    override public func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
 
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override public func draw(_ rect: CGRect) {
        
        CircleLoad.drawCanvas1(master: masterSlider)

    }
    
    
 
}
