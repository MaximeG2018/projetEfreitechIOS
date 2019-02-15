//
//  SignInView.swift
//  finalProject
//
//  Created by Yassine FATIHI on 14/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

import UIKit

class SignInView: UIView {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var delegate: SignInViewDelegate?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        commontInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commontInit()
    }

    private func commontInit(){
        Bundle.main.loadNibNamed("SignInView", owner: self, options:nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBAction func buttonRegister() {
        delegate?.goToSignUp()
    }
    
    @IBAction func buttonLogin() {
        delegate?.login()
    }
}
