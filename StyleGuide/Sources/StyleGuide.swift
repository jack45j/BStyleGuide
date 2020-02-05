//
//  StyleGuide.swift
//  StyleGuide
//
//  Created by Yi-Cheng Lin on 2020/1/24.
//  Copyright © 2020 Yi-Cheng Lin. All rights reserved.
//

import UIKit
public struct StyleGuide<View: UIView> {
	let styling: (View) -> Void
}

public protocol Styleable {}
extension UIView: Styleable {}
public extension Styleable where Self: UIView {
	func apply(_ style: StyleGuide<Self>...) {
		style.forEach { $0.styling(self) }
	}
}
