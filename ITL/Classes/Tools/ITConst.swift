//
//  ITConst.swift
//  ITL
//
//  Created by 张俊鹏 on 2017/11/29.
//  Copyright © 2017年 JWAJDL. All rights reserved.
//

import UIKit

//RGBA颜色设置

let screenW : CGFloat = UIScreen.main.bounds.width
let screenH : CGFloat = UIScreen.main.bounds.height


func rgb(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
    return UIColor.init(red: r / 255.0,
                        green: g / 255.0,
                        blue: b / 255.0,
                        alpha: 1.0)
}
//背景色
func ITBackgroundColor() -> UIColor{
    return rgb(55, 162, 133)
}

func colorFromHex(_ Hex: UInt32) -> UIColor {
    return UIColor.init(red: CGFloat((Hex & 0xFF0000) >> 16) / 255.0,
                        green: CGFloat((Hex & 0xFF00) >> 8) / 255.0,
                        blue: CGFloat((Hex & 0xFF)) / 255.0,
                        alpha: 1.0)
}
