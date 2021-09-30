//
//  MenuButton.swift
//  Profile
//
//  Created by William Wung on 9/20/21.
//

import UIKit

class MenuButton: UIButton {
    required init(text: String) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        backgroundColor = UIColor(red: 130/255, green: 156/255, blue: 208/255, alpha: 1)
        layer.cornerRadius = 10
        
        heightAnchor.constraint(equalToConstant: ((UIScreen.main.bounds.height * 70 )/3)).isActive = true
        widthAnchor.constraint(equalToConstant: ((UIScreen.main.bounds.width * 3)/4)).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
