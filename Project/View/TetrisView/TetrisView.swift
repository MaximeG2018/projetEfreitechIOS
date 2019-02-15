//
//  TetrisView.swift
//  Project
//
//  Created by Maxime GOUÉNARD on 15/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

import UIKit

class TetrisView: UIView {

    @IBOutlet var contentView: UIView!
    
    var delegate: TetrisViewDelegate?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        commontInit()
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commontInit()
    }
    
    private func commontInit(){
        Bundle.main.loadNibNamed("TetrisView", owner: self, options:nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    @IBAction func backChangePassword() {
        
    }
}
