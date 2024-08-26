//
//  resultScreenVC.swift
//  numberGuessingHame
//
//  Created by Ertuğrul Pancar on 25.08.2024.
//

import UIKit

class resultScreenVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    var sonuc: Bool?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "Sonuç Ekranı"
        print(sonuc!)
        
        if sonuc! {
            labelSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
        }else{
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
        }

        
        
        
        
        
        
        
        
    }
    

    @IBAction func tekrarOyna(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
