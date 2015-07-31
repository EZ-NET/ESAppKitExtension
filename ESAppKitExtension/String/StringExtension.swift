//
//  StringExtension.swift
//  ESAppKitExtension
//
//  Created by Tomohiro Kumagai on H27/07/31.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import AppKit

extension String {
	
	public func sizeWithFont(font:NSFont?, maxWidth: CGFloat? = nil) -> NSSize {
		
		var attributes = [String:AnyObject!]()
		
		font.map { attributes[NSFontAttributeName] = $0 }
		
		if let width = maxWidth {
			
			let size = CGSize(width: width, height: 0.0)
			return NSAttributedString(string: self, attributes: attributes).boundingRectWithSize(size, options: NSStringDrawingOptions.UsesLineFragmentOrigin).size
		}
		else {
			
			let size = CGSizeZero
			return NSAttributedString(string: self, attributes: attributes).boundingRectWithSize(size, options: NSStringDrawingOptions(rawValue: 0)).size
		}
	}
}
