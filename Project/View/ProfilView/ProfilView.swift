//
//  ProfilView.swift
//  finalProject
//
//  Created by Yassine FATIHI on 14/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

import UIKit

class ProfilView: UIView {


    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var errorPassword: UILabel!
    
    var delegate: ProfilViewDelegate?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        commontInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commontInit()
    }

    private func commontInit(){
        Bundle.main.loadNibNamed("ProfilView", owner: self, options:nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBAction func logout(){
        delegate?.goToSignIn()
    }
    
    @IBAction func newPassword(){
        delegate?.changePassword()
    }
    
    @IBAction func surprise() {
        delegate?.goToSurprise()
    }
}
