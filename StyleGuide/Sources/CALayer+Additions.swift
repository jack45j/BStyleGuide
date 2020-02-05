//
//  CALayer+Additions.swift
//  StyleGuide
//
//  Created by Yi-Cheng Lin on 2020/1/24.
//  Copyright © 2020 Yi-Cheng Lin. All rights reserved.
//

import UIKit
extension CALayer {
	public struct Border {
		public static let none = Border(color: .clear, width: 0)
		public static let thin = Border(color: .black, width: 1)
        public static let thick = Border(color: .black, width: 3)

		var color: UIColor
		var width: CGFloat
		
		init(color: UIColor, width: CGFloat) {
			self.color = color
			self.width = width
		}
	}
}
