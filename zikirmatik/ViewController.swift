//
//  ViewController.swift
//  zikirmatik
//
//  Created by Aydın Uslu on 6.10.2023.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
 @IBOutlet weak var testbaglantisiLabel: UILabel!
 @IBOutlet weak var toplamLabel: UILabel!
 
    @IBOutlet weak var countButton: UIButton!
    var toplam:Int = 0
 var sifirla:Int = 0
 var myName:String = "Hedef Sayı Belirlenmedi"
 var sayiBitti = 0
 
 
 override func viewDidLoad() {
  super.viewDidLoad()
  countButton.layer.cornerRadius = 60
  testbaglantisiLabel.text = myName
  //  testbaglantisiLabel.text = "hedef:  \(myName)"
  toplamLabel.text = toplam.description
 }
 
 @IBAction func basButon(_ sender: Any) {
//  if toplamLabel.text != testbaglantisiLabel.text{
//   toplam += 1
//   toplamLabel.text = "\(toplam)"
//  }
//  if toplamLabel.text == testbaglantisiLabel.text,
//     toplamLabel.text == "Ok."{
//   toplamLabel.text = "Ok."
//   toplam = 0
//   
//  } else{
//  }
//  
  guard let counterStr = toplamLabel.text,
        let count = Int(counterStr) else { return }
  
  
  let final = Int(testbaglantisiLabel.text ?? "0") ?? 0
  
  if count >= final - 1 {
   toplamLabel.text = "\(final)  bitti"
  } else {
   toplam += 1
   toplamLabel.text = "\(toplam)"
  }
//
 }
 
 @IBAction func silButon(_ sender: Any) {
  
  toplamLabel.text = "\(sifirla)" //burada int => stringe dönüştürememek gibi temel bir konu eksiğim var. Sonuç için bir yol buldum...
  toplam = sifirla
 }
 
 @IBAction func ayarlaButon(_ sender: Any) {
  
 }
}

//soru 1: String, integer değişimi :)


//soru 2:  "testbaglantisi Label hedef belirledikten sonra [hedef: diyerek] değişebilmesi

//soru3: label köşelerinin daire vb. şekil değişimi

//soru5: bittiğinde müzik eklemek

//soru6: bittiğinde ekran değiştirmek

//soru 7:   2. ekrana geri geldiğinde hedef sayının (eski sayının) silinmesi

//soru 8 :  bitişteki ALGORİTMA DİZAYNI......
