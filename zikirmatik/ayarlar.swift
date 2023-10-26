//
//  ayarlar.swift
//  zikirmatik
//
//  Created by Aydın Uslu on 7.10.2023.
//

import UIKit

class ayarlar: UIViewController {
    
    @IBOutlet weak var ayarlarlabel: UILabel!
    @IBOutlet weak var ayarlartextfield: UITextField!
    
    var ilkdosya = ""
    var userName = ""
    
    override func viewDidLoad() {
        ayarlarlabel.text = ilkdosya
        ayarlarlabel.text = "Hedef SAyı:\(ayarlartextfield.text!)"
        
        let kaydedilen = UserDefaults.standard.object(forKey: "secim2")
        
        if let ikincikaydedilen = kaydedilen as? String{
            ayarlarlabel.text =  ikincikaydedilen
        }
    }
    
    @IBAction func kaydetbutonu(_ sender: Any) {
        
        UserDefaults.standard.set(ayarlartextfield.text!, forKey: "secim2")
        ayarlarlabel.text = "Hedef Sayı \n\(ayarlartextfield.text!)"
        userName = (ayarlartextfield.text!)
//        performSegue(withIdentifier: "toViewCont", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toViewCont" {
            let destinationVC = segue.destination as! ViewController
            destinationVC.myName = userName
        }
    }
}
    
//    @IBAction func testseguebuton(_ sender: Any) {
    
//}
