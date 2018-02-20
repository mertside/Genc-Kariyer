//
//  CharacterQuestionsViewController.swift
//  Genç Kariyer
//
//  Created by Mert Şide on 15.02.2018.
//  Copyright © 2018 Mert Şide. All rights reserved.
//

import UIKit

class CharacterQuestionsViewController: UIViewController {

    @IBOutlet var QuestionCounterLabel: UILabel!
    @IBOutlet var Answer1Button: UIButton!
    @IBOutlet var Answer2Button: UIButton!
    @IBOutlet var Answer3Button: UIButton!
    @IBOutlet var Answer4Button: UIButton!

    @IBOutlet var ResultsButton: UIButton!
    
    @IBOutlet var AnswersView: UIView!
    
    @IBOutlet var TempLabel: UILabel! // REMOVE !!!
    
    var questionCounter = Int(0)
    var answerToDisplay = Int(0)
    var totalNumberOfQuestions = Int(40)
    var character1Counter = Int(0)
    var character2Counter = Int(0)
    var character3Counter = Int(0)
    var character4Counter = Int(0)
    
    var characterCounters = [0, 0, 0, 0]
    
    let answers = ["CANLI", "MACERAPEREST", "ANALİTİK", "UYUMLU",
                   "OYUNCU", "İKNA EDİCİ", "ISRARCI", "BARIŞÇIL",
                   "SOSYAL", "GÜÇLÜ İRADELİ","ÖZVERİLİ", "UYSAL",
                   "İNANDIRICI", "REKABETÇİ", "DÜŞÜNCELİ", "KONTROLLÜ",
                   "HAYAT VEREN", "BECERİKLİ", "SAYGILI", "ÇEKİNGEN",
                   "HAYAT DOLU", "KENDİNE GÜVENLİ", "DUYARLI", "HALİNDEN MEMNUN",
                   "YÖNLENDİRİCİ", "OLUMLU", "PLANLAYICI", "SABIRLI",
                   "GÜNÜ YAŞAYAN", "KENDİNDEN EMİN", "PROGRAMLI", "UTANGAÇ",
                   "İYİMSER", "AÇIKSÖZLÜ", "DÜZENLİ", "NAZİK",
                   "KOMİK", "ETKİLİ", "SADIK", "DOSTÇA DAVRANAN",
                   "HOŞ", "CESUR", "AYRINTICI", "POLİTİK",
                   "NEŞELİ", "GÜVENLİ", "KÜLTÜRLÜ", "TUTARLI",
                   "ESİN KAYNAĞI", "BAĞIMSIZ", "İDEALİST", "ZARARSIZ",
                   "SICAK KANLI", "KARARLI", "DERİN", "İNCE ESPRİLİ",
                   "KOLAY KAYNAŞAN", "HAREKETE GEÇİREN", "MÜZİKSEVER", "ARABULUCU",
                   "KONUŞKAN", "AZİMLİ", "İNCE DÜŞÜNCELİ", "HOŞ GÖRÜLÜ",
                   "ENERJİK", "LİDER", "FANATİK (SADIK)", "İYİ DİNLEYİCİ",
                   "ŞİRİN", "ŞEF", "ORGANİZATÖR", "KANAATKAR",
                   "POPÜLER", "ÜRETKEN", "MÜKEMMELİYETÇİ", "TATLI",
                   "FIKIR FIKIR", "GÖZÜ PEK", "TERBİYELİ", "DENGELİ",
                   "YÜZSÜZ", "ZORBA", "SIKILGAN", "İFADESİZ",
                   "DİSİPLİNSİZ", "ANLAYIŞSIZ", "AFFETMEYEN", "COŞKUSUZ",
                   "KENDİNİ TEKRARLAYAN", "KARŞI GELEN", "KİNCİ", "SUSKUN",
                   "UNUTKAN", "DOBRA", "TELAŞLI", "KORKAK",
                   "LAF KESEN", "SABIRSIZ", "GÜVENSİZ", "KARARSIZ",
                   "NE YAPACAĞI BELİRSİZ", "ŞEFKATSİZ", "SEVİLMEYEN", "YAŞAMDAN KOPUK",
                   "GELİŞİGÜZEL", "DİK KAFALI", "ZOR BEĞENEN", "TEREDDÜTLÜ",
                   "GÖZ YUMAN", "KİBİRLİ", "KÖTÜMSER", "RENKSİZ",
                   "KOLAY SİNİRLENEN", "İDDİACI", "YABANCILAŞMIŞ", "AMAÇSIZ",
                   "SAF", "KÜSTAH", "OLUMSUZ TUTUMLU", "KAYITSIZ",
                   "TANINMAK İSTEYEN", "İŞ KOLİK", "YANLIZLIĞA SIĞINAN", "ENDİŞELİ",
                   "KONUŞKAN", "PATAVATSIZ", "FAZLA HASSAS", "ÜRKEK",
                   "DÜZENSİZ", "OTORİTER", "BUNALIMLI", "ŞÜPHECİ",
                   "TUTARSIZ", "HOŞ GÖRÜSÜZ", "İÇE DÖNÜK", "UMURSAMAZ",
                   "DAĞINIK", "KARAMSAR", "GEVELEYEN", "İNSAN KULLANAN",
                   "HAVA ATAN", "İNATÇI", "KUŞKUCU", "UYUŞUK",
                   "GÜRÜLTÜCÜ", "SIKÇA EMİR VEREN", "YANLIZLIĞI SEVEN", "TEMBEL",
                   "KAFASI DAĞINIK", "ÖFKELİ", "ŞÜPHECİ", "AĞIRKANLI",
                   "YERİNDE DURAMAYAN", "ACELECİ", "İNTİKAMCI", "GÖNÜLSÜZ",
                   "DEĞİŞKEN", "KURNAZ", "TENKİTÇİ (NEGATİF ELEŞTİREN)", "ÖDÜN VEREN"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionCounter = questionCounter + 1
        ResultsButton.isHidden = true
        
        Answer1Button.setTitle("\(answers[answerToDisplay])", for: .normal)
        Answer2Button.setTitle("\(answers[answerToDisplay + 1])", for: .normal)
        Answer3Button.setTitle("\(answers[answerToDisplay + 2])", for: .normal)
        Answer4Button.setTitle("\(answers[answerToDisplay + 3])", for: .normal)
        answerToDisplay = answerToDisplay + 4
        
        AnswersView.isHidden = false

        QuestionCounterLabel.text = "\(questionCounter) / \(totalNumberOfQuestions)"

        TempLabel.text = "1:\(characterCounters[0]) | 2:\(characterCounters[1]) | 3:\(characterCounters[2]) | 4:\(characterCounters[3])"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answer1ButtonAction(_ sender: Any) {
        AnswersView.isHidden = true
        characterCounters[0] = characterCounters[0] + 1
        // character1Counter = character1Counter + 1
        if (questionCounter < totalNumberOfQuestions) {
            viewDidLoad()
        } else {
            ResultsButton.isHidden = false
        }
    }
    @IBAction func answer2ButtonAction(_ sender: Any) {
        AnswersView.isHidden = true
        characterCounters[1] = characterCounters[1] + 1
        // character2Counter = character2Counter + 1
        if (questionCounter < totalNumberOfQuestions) {
            viewDidLoad()
        } else {
            ResultsButton.isHidden = false
        }
    }
    @IBAction func answer3ButtonAction(_ sender: Any) {
        AnswersView.isHidden = true
        characterCounters[2] = characterCounters[2] + 1
        // character3Counter = character3Counter + 1
        if (questionCounter < totalNumberOfQuestions) {
            viewDidLoad()
        } else {
            ResultsButton.isHidden = false
        }
    }
    @IBAction func answer4ButtonAction(_ sender: Any) {
        AnswersView.isHidden = true
        characterCounters[3] = characterCounters[3] + 1
        // character4Counter = character4Counter + 1
        if (questionCounter < totalNumberOfQuestions) {
            viewDidLoad()
        } else {
            ResultsButton.isHidden = false
        }
    }
    /*
    @IBAction func nextQuestionButtonAction(_ sender: Any) {
        
        if (questionCounter < totalNumberOfQuestions) {
            viewDidLoad()
        } else {
            NextQuestionButton.isHidden = true
            ResultsButton.isHidden = false
        }
        
    }
    */
    @IBAction func resultsButtonAction(_ sender: Any) {
        /*
        if( character1Counter > character2Counter &&
            character1Counter > character3Counter &&
            character1Counter > character4Counter) {
            characterType = 0
        }
        if( character2Counter > character1Counter &&
            character2Counter > character3Counter &&
            character2Counter > character4Counter) {
            characterType = 1
        }
        if( character3Counter > character2Counter &&
            character3Counter > character4Counter &&
            character3Counter > character1Counter) {
            characterType = 2
        }
        if( character4Counter > character1Counter &&
            character4Counter > character2Counter &&
            character4Counter > character3Counter) {
            characterType = 3
        }
        */
        self.performSegue(withIdentifier: "characterResultsSegue",sender: self)
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CharacterReportViewController
        {
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
