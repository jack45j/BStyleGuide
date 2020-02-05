//
//  StyleGuide+UIView.swift
//  StyleGuide
//
//  Created by Yi-Cheng Lin on 2020/1/24.
//  Copyright © 2020 Yi-Cheng Lin. All rights reserved.
//

import UIKit
extension StyleGuide where View: UIView {
	public static func background(color: UIColor) -> StyleGuide {
		return StyleGuide { $0.backgroundColor = color }
	}
	static func visible() -> StyleGuide {
		return StyleGuide { $0.isHidden = false }
	}
	static func notVisible() -> StyleGuide {
		return StyleGuide { $0.isHidden = true }
	}
	static func alpha(_ value: CGFloat) -> StyleGuide {
		return StyleGuide { $0.alpha = value }
	}
	static func tint(color: UIColor) -> StyleGuide {
		return StyleGuide { $0.tintColor = color }
	}
	static func tintAdjust(mode: UIView.TintAdjustmentMode) -> StyleGuide {
		return StyleGuide { $0.tintAdjustmentMode = mode }
	}
	static func clipsToBounds() -> StyleGuide {
		return StyleGuide { $0.clipsToBounds = true }
	}
	static func rounded(_ radius: CGFloat, corners: UIRectCorner = .allCorners, withBorder: CALayer.Border = .none) -> StyleGuide {
		return StyleGuide {
			$0.rounded(cornerRadius: radius, at: corners)
			let layer = $0.rounded(cornerRadius: radius, at: corners)
			guard let path = layer.path else { return }
			$0.addBorder(withBorder, path: path)
		}
	}
	static func bordered(color: CGColor = UIColor.black.cgColor, width: CGFloat) -> StyleGuide {
		return StyleGuide {
			$0.layer.borderColor = color
			$0.layer.borderWidth = width
		}
	}
}
