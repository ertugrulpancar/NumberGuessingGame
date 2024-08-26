//
//  guessScreenVC.swift
//  numberGuessingHame
//
//  Created by Ertuğrul Pancar on 25.08.2024.
//

import UIKit

class guessScreenVC: UIViewController {
    @IBOutlet weak var labelKalanHak: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var labelyardim: UILabel!
    
    var rasgeleSayi: Int?
    var kalanHak = 5
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rasgeleSayi = Int.random(in: 0...100)
        print("Rasgele Sayi: \(rasgeleSayi!)")

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if let gelenVeri = sender as? Bool {
            let gidilecekVc = segue.destination as! resultScreenVC
            gidilecekVc.sonuc = gelenVeri
        }
        
    }
    
    @IBAction func tahminEt(_ sender: UIButton) {
        labelyardim.isHidden = false
        kalanHak = kalanHak - 1
        
        if let veri = textFieldGirdi.text{
            
            if let tahmin = Int(veri){
                if kalanHak != 0 {
                    if tahmin == rasgeleSayi!{
                        let sonuc = true
                        performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                    }
                    if tahmin > rasgeleSayi!{
                        labelyardim.text = "AZALT"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"
                    }
                    if tahmin < rasgeleSayi! {
                        labelyardim.text = "ARTTIR"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"
                    }
                    
                }else{
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                }
                textFieldGirdi.text = ""
            }
        }
    }
}
