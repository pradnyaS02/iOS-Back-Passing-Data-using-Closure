//
//  InputViewController.swift
//  closureAss
//
//  Created by Pradnya M. S. Suryavanshi on 15/07/21.
//

import UIKit

class InputViewController: UIViewController {
    
    
    var closureVC3:((String,String,String)->())?
    

    @IBOutlet weak var id:UITextField?
    @IBOutlet weak var name:UITextField?
    @IBOutlet weak var add:UITextField?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    @IBAction func senddata(){
        if let vc=self.storyboard?.instantiateViewController(identifier: "transViewController") as? transViewController{
            
            if let uid=id?.text,let uname=name?.text,let uadd=add?.text{
            
                closureVC3?(uid,uname,uadd)
                print(uid)
            }
        self.navigationController?.popViewController(animated: true)
        
    }
}
}
