//
//  SignUpView.swift
//  finalProject
//
//  Created by Yassine FATIHI on 14/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

import UIKit


class SignUpView: UIView {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passInput: UITextField!
    @IBOutlet weak var passConfirmInput: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var validationEmail: UILabel!
    @IBOutlet weak var validationPassword: UILabel!
    
    @IBOutlet weak var ErrorField: UILabel!
    var delegate: SignUpViewDelegate?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        commontInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commontInit()
    }
    
    private func commontInit(){
        Bundle.main.loadNibNamed("SignUpView", owner: self, options:nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBAction func buttonGoToLogin() {
        delegate?.goToSignIn()
    }
    @IBAction func buttonSignUp() {
        delegate?.createRegister()
    }
}
