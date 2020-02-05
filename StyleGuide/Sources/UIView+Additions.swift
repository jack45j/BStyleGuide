//
//  UIView+Additions.swift
//  StyleGuide
//
//  Created by Yi-Cheng Lin on 2020/1/24.
//  Copyright © 2020 Yi-Cheng Lin. All rights reserved.
//

import UIKit
extension UIView {
	@discardableResult
    func rounded(cornerRadius: CGFloat, at corner: UIRectCorner) -> CAShapeLayer {
        let path = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: corner,
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )
        return mask(path: path.cgPath)
    }
    
    @discardableResult
	func addBorder(_ border: CALayer.Border, path: CGPath) -> CAShapeLayer {
        let borderLayer = CAShapeLayer()
        borderLayer.path = path
        borderLayer.fillColor = UIColor.clear.cgColor
		borderLayer.strokeColor = border.color.cgColor
        borderLayer.lineWidth = border.width * 2
        borderLayer.frame = bounds
        layer.addSublayer(borderLayer)
        return borderLayer
    }
	
	@discardableResult
    func mask(path: CGPath) -> CAShapeLayer {
        let mask = CAShapeLayer()
        mask.frame = bounds
        mask.path = path
        layer.mask = mask
        return mask
    }
}
