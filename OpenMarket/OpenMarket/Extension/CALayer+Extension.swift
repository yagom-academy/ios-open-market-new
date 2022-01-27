//
//  CALayer+Extension.swift
//  OpenMarket
//
//  Created by kakao on 2022/01/27.
//

import UIKit

extension CALayer {
    func addBorder(_ edges: [UIRectEdge], color: UIColor, borderWidth: CGFloat) {
        for edge in edges {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: borderWidth)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - borderWidth, width: frame.width, height: borderWidth)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: borderWidth, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - borderWidth, y: 0, width: borderWidth, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
}
