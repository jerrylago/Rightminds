//
//  AnswerButton.swift
//  Rightmind
//
//  Created by Jerry LaGore on 1/18/20.
//  Copyright © 2020 Jerry LaGore. All rights reserved.
//

import UIKit

class AnswerButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeButtonCool()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makeButtonCool()
    }
    
    func makeButtonCool() {
        layer.cornerRadius = 8
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2
    }

}
