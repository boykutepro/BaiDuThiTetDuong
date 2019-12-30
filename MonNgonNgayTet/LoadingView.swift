//
//  LoadingView.swift
//  MonNgonNgayTet
//
//  Created by Thiện Tùng on 12/28/19.
//  Copyright © 2019 tung. All rights reserved.
//


import UIKit
 
public class CircleLoad : NSObject {
 
    //// Drawing Methods
 
    public class func drawCanvas1(master: CGFloat = 0.538) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
 
        //// Color Declarations
//        let color = UIColor(red: 0.091, green: 0.699, blue: 0.292, alpha: 1.000)
//        let color2 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
//        let color3 = UIColor(red: 0.078, green: 0.420, blue: 1.000, alpha: 1.000)
//        let color4 = UIColor(red: 0.977, green: 0.652, blue: 0.000, alpha: 1.000)
//        let color6 = UIColor(red: 0.654, green: 0.700, blue: 0.789, alpha: 0.219)
        let color = UIColor.white
        let color2 = UIColor.red
        let color3 = UIColor.red
        let color4 = UIColor.white
        let color6 = UIColor.lightGray
 
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.white.withAlphaComponent(0.86)
        shadow.shadowOffset = CGSize(width: 1.1, height: 1.1)
        shadow.shadowBlurRadius = 5
 
        //// Variable Declarations
        let rotationOrange: CGFloat = master * 360 - 90
        let rotationBlue: CGFloat = master * 360
        let rotationBlack: CGFloat = master * 360 - 180
        let rotationGreen: CGFloat = master * 360 - 270
 
        //// Group
        //// Group 2
        context!.saveGState()
        context!.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context!.beginTransparencyLayer(auxiliaryInfo: nil)
 
 
        //// Oval 4 Drawing
        context!.saveGState()
        context!.translateBy(x: 61.7, y: 63.3)
        context!.rotate(by: -rotationOrange * CGFloat(Double.pi) / 180)
        context!.scaleBy(x: 0.9, y: 0.9)
 
        let oval4Rect = CGRect(x: -63, y: -63, width: 126, height: 126)
        let oval4Path = UIBezierPath()
        oval4Path.addArc(withCenter: CGPoint(x: oval4Rect.midX, y: oval4Rect.midY), radius: oval4Rect.width / 2, startAngle: -90 * CGFloat(Double.pi)/180, endAngle: 0 * CGFloat(Double.pi)/180, clockwise: true)
 
        color4.setStroke()
        oval4Path.lineWidth = 2.5
        oval4Path.stroke()
 
        context!.restoreGState()
 
 
        //// Oval 2 Drawing
        context!.saveGState()
        context!.translateBy(x: 61.7, y: 63.3)
        context!.rotate(by: -rotationBlack * CGFloat(Double.pi) / 180)
        context!.scaleBy(x: 0.9, y: 0.9)
 
        let oval2Rect = CGRect(x: -63, y: -63, width: 126, height: 126)
        let oval2Path = UIBezierPath()
        oval2Path.addArc(withCenter: CGPoint(x: oval2Rect.midX, y: oval2Rect.midY), radius: oval2Rect.width / 2, startAngle: -90 * CGFloat(Double.pi)/180, endAngle: 0 * CGFloat(Double.pi)/180, clockwise: true)
 
        color2.setStroke()
        oval2Path.lineWidth = 2.5
        oval2Path.stroke()
 
        context!.restoreGState()
 
 
        //// Oval 3 Drawing
        context!.saveGState()
        context!.translateBy(x: 61.7, y: 63.3)
        context!.rotate(by: -rotationGreen * CGFloat(Double.pi) / 180)
        context!.scaleBy(x: 0.9, y: 0.9)
 
        let oval3Rect = CGRect(x: -63, y: -63, width: 126, height: 126)
        let oval3Path = UIBezierPath()
        oval3Path.addArc(withCenter: CGPoint(x: oval3Rect.midX, y: oval3Rect.midY), radius: oval3Rect.width / 2, startAngle: -90 * CGFloat(Double.pi)/180, endAngle: 0 * CGFloat(Double.pi)/180, clockwise: true)
 
        color.setStroke()
        oval3Path.lineWidth = 2.5
        oval3Path.stroke()
 
        context!.restoreGState()
 
 
        //// Oval Drawing
        context!.saveGState()
        context!.translateBy(x: 61.7, y: 63.3)
        context!.rotate(by: -rotationBlue * CGFloat(Double.pi) / 180)
        context!.scaleBy(x: 0.9, y: 0.9)
 
        let ovalRect = CGRect(x: -63, y: -63, width: 126, height: 126)
        let ovalPath = UIBezierPath()
        ovalPath.addArc(withCenter: CGPoint(x: ovalRect.midX, y: ovalRect.midY), radius: ovalRect.width / 2, startAngle: -90 * CGFloat(Double.pi)/180, endAngle: 0 * CGFloat(Double.pi)/180, clockwise: true)
 
        color3.setStroke()
        ovalPath.lineWidth = 2.5
        ovalPath.stroke()
 
        context!.restoreGState()
 
 
        //// Oval 5 Drawing
        context!.saveGState()
        context!.translateBy(x: 61.7, y: 63.3)
        context!.scaleBy(x: 0.85, y: 0.85)
 
        let oval5Path = UIBezierPath(ovalIn: CGRect(x: -63, y: -63, width: 126, height: 126))
        color6.setFill()
        oval5Path.fill()
 
        context!.restoreGState()
 
 
        context!.endTransparencyLayer()
        context!.restoreGState()
    }
 
}
