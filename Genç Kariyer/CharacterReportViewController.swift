//
//  CharacterReportViewController.swift
//  Genç Kariyer
//
//  Created by Mert Şide on 17.02.2018.
//  Copyright © 2018 Mert Şide. All rights reserved.
//

import UIKit

class CharacterReportViewController: UIViewController {

    @IBOutlet var CharacterReportView: UIView!
    
    //@IBOutlet var TempLabel: UILabel!
    
    @IBOutlet var FirstCharacterButton: UIButton!
    @IBOutlet var SecondCharacterButton: UIButton!
    @IBOutlet var ThirdCharacterButton: UIButton!
    @IBOutlet var FourthCharacterButton: UIButton!
    
    let type1Title: String = "POPÜLER OPTİMİST (İYİMSER)"
    let type2Title: String = "GÜÇLÜ KOLERİK (ASABİ)"
    let type3Title: String = "MÜKEMMELİYETÇİ MELANKOLİK"
    let type4Title: String = "BARIŞÇIL SOĞUKKANLI"
    
    var characterResults = Int(0)
    var characterCounters: [Int] = [0, 0, 0, 0]
    // let cQVC = CharacterQuestionsViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstCharacterButton.setTitle("\(type1Title): %\(Double(characterCounters[0]) / 0.4)", for: .normal)
        FirstCharacterButton.backgroundColor = UIColor.yellow
        
        SecondCharacterButton.setTitle("\(type2Title): %\(Double(characterCounters[1]) / 0.4)", for: .normal)
        SecondCharacterButton.backgroundColor = UIColor.red
        
        ThirdCharacterButton.setTitle("\(type3Title): %\(Double(characterCounters[2]) / 0.4)", for: .normal)
        ThirdCharacterButton.backgroundColor = UIColor.blue
        
        FourthCharacterButton.setTitle("\(type4Title): %\(Double(characterCounters[3]) / 0.4)", for: .normal)
        FourthCharacterButton.backgroundColor = UIColor.green
        
        //TempLabel.text = "\(characterType)"
        /*
        switch characterResults {
        case 1:
            TitleLabel.text = type2Title
            DetailsLabel.text = type2Details
            CharacterReportView.backgroundColor = UIColor.red
        case 2:
            TitleLabel.text = type3Title
            DetailsLabel.text = type3Details
            CharacterReportView.backgroundColor = UIColor.blue
        case 3:
            TitleLabel.text = type4Title
            DetailsLabel.text = type4Details
            CharacterReportView.backgroundColor = UIColor.green
        default:
            TitleLabel.text = type1Title
            DetailsLabel.text = type1Details
            CharacterReportView.backgroundColor = UIColor.yellow
        }
        */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func firstCharacterButtonAction(_ sender: Any) {
        characterResults = 0
        self.performSegue(withIdentifier: "characterDetailsSegue",sender: self)
    }
    
    @IBAction func secondCharacterButtonAction(_ sender: Any) {
        characterResults = 1
        self.performSegue(withIdentifier: "characterDetailsSegue",sender: self)
    }
    
    @IBAction func thirdCharacterButtonAction(_ sender: Any) {
        characterResults = 2
        self.performSegue(withIdentifier: "characterDetailsSegue",sender: self)
    }
    
    @IBAction func fourthCharacterButtonAction(_ sender: Any) {
        characterResults = 3
        self.performSegue(withIdentifier: "characterDetailsSegue",sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CharacterDetailsViewController
        {
            let vc = segue.destination as? CharacterDetailsViewController
            vc?.characterResults = characterResults
            /*
            let vc = segue.destination as? CharacterReportViewController
            if(
                character1Counter > character2Counter &&
                    character1Counter > character3Counter &&
                    character1Counter > character4Counter) {
                vc?.characterResults = 0
            } else if(
                character2Counter > character1Counter &&
                    character2Counter > character3Counter &&
                    character2Counter > character4Counter) {
                vc?.characterResults = 1
            } else if(
                character3Counter > character2Counter &&
                    character3Counter > character4Counter &&
                    character3Counter > character1Counter) {
                vc?.characterResults = 2
            } else if(
                character4Counter > character1Counter &&
                    character4Counter > character2Counter &&
                    character4Counter > character3Counter) {
                vc?.characterResults = 3
            }
            */
            vc?.characterCounters[0] = characterCounters[0]
            vc?.characterCounters[1] = characterCounters[1]
            vc?.characterCounters[2] = characterCounters[2]
            vc?.characterCounters[3] = characterCounters[3]
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
