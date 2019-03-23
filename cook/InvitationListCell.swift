//
//  InvitationListCell.swift
//  cook
//
//  Created by Dominik Kolber on 3/23/19.
//  Copyright © 2019 Szymon Kolber. All rights reserved.
//

import UIKit

class InvitationListCell: UIView {
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.setFillColor(UIColor.red.cgColor)
        context.fill(bounds)
        context.roundCor
        
    }
    
}
