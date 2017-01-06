//
//  FantasticView.swift
//  FantasticView
//
//  Created by Marsel Tzatzo on 06/01/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

import UIKit

class FantasticView: UIView {

    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
            UIView.animate(withDuration: 2.0) {
                // We animate the layer's background color 
                // because view's background color is not animatable
                self.layer.backgroundColor = self.colors[self.colorCounter % self.colors.count].cgColor
                self.colorCounter += 1
            }
        }
        scheduledColorChanged.fire()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
