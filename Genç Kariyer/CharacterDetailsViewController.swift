//
//  CharacterDetailsViewController.swift
//  Genç Kariyer
//
//  Created by Mert Şide on 20.02.2018.
//  Copyright © 2018 Mert Şide. All rights reserved.
//

import UIKit

class CharacterDetailsViewController: UIViewController {

    @IBOutlet var CharacterDetailsView: UIView!
    
    @IBOutlet var TitleLabel: UILabel!
    @IBOutlet var DetailsLabel: UILabel!
    
    let type1Title: String = "1. POPÜLER OPTİMİST (İYİMSER)"
    let type1Details: String = """
Arzusu: Eğlenmek.

Duygusal ihtiyaçları: ilgi, şefkat, onay ve kabul görmek.

En güçlü yönleri: Bilgisi olsun olmasın her yerde her zaman herşey hakkında konuşabilir. Coşkulu bir kişiliğe, iyimserliğe, espri duygusuna, Öykü anlatma yeteneğine sahiptir. İnsanlardan hoşlanır

En zayıf yönleri: Düzensizdir, ayrıntıları ya da isim- leri hatırlayamaz, abartır, hiçbir şey hakkında ciddi değildir. İşlerin yapılmasında başkalarına güvenir, kolay aldanır ve saftır.

Bunalıma girdiği zaman: Yaşam eğlenceli değildir ve hiç kimse onu sevmiyordur.

Korktuğu şeyler: Sevilmemek, sıkılmak, saate bağlı olarak yaşamak ya da harcadığı paranın kaydını tutmak

Hoşlandığı insan tipi: Dinleyen, gülen, Öven ve onaylayan.

Hoşlanmadığı insan tipi: Eleştiren, esprilerine yanıt vermeyen, kendisinin şirin olduğunu düşünmeyen.

İşteki değerli yanları: Renkli yaratıcılığı, iyimserliği, rahatlatıcı olması, başkalarını neşelendirip eğlendirmesi.

Gelişme ortamı: Düzenli olur, çok konuşmaz ve saate bakmayı öğrenirse.

Lider olarak: Başkalarını heyecanlandırır, ikna eder, esin kaynağı olur, cezbeder ve eğlendirir, fakat unutkandır ve sabırlı olamaz.

Eş tercihi: Duyarlı ve ciddi Mükemmeliyetçi Melankoliklere yakındır, fakat kendisine sürekli yetersiz ve aptal muamelesi yapılmasından çabuk sıkılır.

Strese tepkileri: Sahneyi terketme, alışverişe çıkma, eğlenceli bir grup bulma, bahaneler yaratma ve başkalarını suçlama.

Bilinen özellikleri: Sürekli konuşma, yüksek ses, parlak gözler, hareketli eller, renkli ifadeler, coşku ve kolay kaynaşma yeteneği.

"""
    
    let type2Title: String = "2.GÜÇLÜ KOLERİK (ASABİ)"
    let type2Details: String = """
Arzusu: Kontrol altına almak.

Duygusal ihtiyaçları: İtaat duygusu, başarıları için takdir görme, yeteneklerine güven.

En güçlü  yönleri: Herşeyin sorumluluğunu alabilir, çabuk ve doğru yargıda bulunma yeteneğine sahiptir.

En zayıf özellikleri: Çok zorba ve tahakkümcü davranışları vardır, duyarsız ve sabırsızdır, görevleri devretmeye ve başkalarına güvenmeye isteksizdir.

Bunalıma girdiği zaman: Yaşamı kontrolü altında tutamaz ve insanlar işleri onun gibi yapmazsa.

Korktuğu şeyler: Herhangi bir şeyin kontrolünü kaybetmek, örneğin bir işi kaybetmek, terfi edilmemek, ciddi biçimde hasta olmak, asi bir çocuğa ya da kendisini desteklemeyen bir eşe sahip olmak.

Hoşlandığı insan tipi: Destekleyici ve boyun egen, olayları kendi bakış açısıyla gören, hemen işbirliği yapan ve puanı başkalarının almasına izin veren. Hoşlanmadığı insan tipi: Tembel ve sürekli çalışmakla ilgilenmeyen, otoritesine karşı gelen, bağımsız davranan ya da sadık olmayan.

İşteki değerli yanları: Herkesten daha kısa zamanda daha çok şey başarabilir, genellikle haklıdır, ama soruna yol açabilir.

Gelişme ortamı: Başkalarının karar vermesine olanak tanır, otoriteyi dağıtır, daha sabırlı olur, herkesin kendisi gibi üretmesini beklemezse.

Lider olarak: Sorumluluk alma duygusu vardır, neyin iyi sonuç vereceğini hemen sezinleyebilir, başaracağına içtenlikle inanır, ama daha pasif insanları da bunaltabilir.

Eş tercihi: Sessizce itaat eden, otoritesine karşı gelmeyen, ama asla yeterince başarılı olmayan ya da kendi projeleri için heyecan duymayan Barışçıl Soğukkanlılar.

Strese tepkileri: Kontrolü sıkılaştırır, daha çok çalışır, uygulamaya yönelir ve suçluyu başından savar.

Bilinen özellikleri: Tezcanlı tutum, kontrolü çabuk yakalama, özgüven, hiç durmama ve gücünü kullanma.

"""
    
    let type3Title: String = "3. MÜKEMMELİYETÇİ MELANKOLİK"
    let type3Details: String = """
Arzusu: Düzgün yapmak.

Duygusal ihtiyaçları: denge duygusu, mekân, sessizlik, duyarlılık ve destek.

En güçlü yönleri: Planlama yeteneği vardır, uzun vadeli hedefler belirler, yüksek standart ve ideallere sahiptir, iyi analiz yapar.

En zayıf yönleri: Kolaylıkla bunalıma girer, hazırlık için çok zaman harcar, ayrıntılara odaklanır, olumsuzlukları hatırlar, başkalarına şüpheyle yaklaşır.

Bunalıma girdiği zaman. Yaşam düzensizdir, standartlarını tutturamaz, hiç kimse ona aldırış etmiyordur.

Korktuğu şeyler: Gerçek duygularını kimsenin anlamamasından yakınmak, hatalar yapmak, standartlarından ödün vermek zorunda kalmak.

Hoşlandığı insan tipi: Ciddi, entelektüel, derin ve akıllıca sohbet edebilen.

Hoşlanmadığı insan tipi: Zekâsı düşük, unutkan, geciken, düzensiz, yapay, kaçamak yanıt veren ve ne yapacağı se/ilcmeyen.

İşteki değerli yanları: Ayrıntı duygusu, analiz tutkusu, sabırlı olma, yüksek standartta performans, acı çekenlere karşı şefkat gösterme.

Gelişme ortamı: Hayatı çok ciddiye almaz ve başka larının mükemmeliyetçi olmasında ısrar etmezse.

Lider olarak: İyi organizasyon yapar, insanların duygularına karşı duyarlıdır, yaratıcılığı vardır, kaliteli performans ister.

Eş tercihi: Kişilikleri ve sosyal becerileri için Popüler Optimistlere yakındır, ama kısa zamanda onları susturup bir programa bağlar ve bir karşılık alamadığı zaman bunalıma girer.

Strese tepkileri: Kabuğuna çekilir, bir kitaba dalar, bunalıma girer, vazgeçer ve sorunlarını herkese anlatır.

Bilinen özellikleri: Ciddi, duyarlı, terbiyeli tutum, kendini küçümseyen yorumlar, titiz ve bakımlı görünüş (hippi tipi entelektüeller, müzisyenler, şairler hariç olmak üzere tabii; bunlar elbiselere ve görünüşe dikkat etmenin dünyevi bir tavır olduğunu ve insanı içsel güçlerinden uzaklaştırdığını düşünürler.

"""
    
    let type4Title: String = "4. BARIŞÇIL SOĞUKKANLI"
    let type4Details: String = """
Arzusu: Hiç çatışma yaşamamak, huzuru korumak

Duygusal ihtiyaçları: Saygı duygusu, değer verildiğini hissetme, anlayış, duygusal destek.

En güçlü yönleri: Dengeli, hatta düzenlidir, ince bir espri duygusu vardır ve kişiliğinden genellikle hoşlanılır.

En zayıf yönleri: Kararsızdır, coşkusu ve enerjisi yetersizdir, açıkça görülen kusurları yoktur ama gizli bir demirden iradeye sahiptir.

Bunalıma girdiği zaman: Hayat çelişkilerle dolu olur, kişisel olarak göğüs germek zorunda kalıp kimse yardım etmek istemez ve sorumluluk kendi üzerinde kalırsa.

Korktuğu şeyler: Büyük bir kişisel sorunla uğraş mak, sorumluluk taşımak, büyük değişiklikler yapmak zorunda kalmak.

Hoşlandığı insan tipi: Onun adına karar verecek, güçlü yönlerini kabul edecek, ihmal etmeyecek, saygı gösterecek insanlar.

Hoşlanmadığı insan tipi: Fazla hırslı, çok gürültücü ve ondan çok şey bekleyen insanlar.

İşteki değerli yanları: İşbirliği yapar, sakinleştirici bir etkisi vardır, huzuru sağlar, çekişen kişiler arasında arabuluculuk yapar, sorunları objektif olarak çözer.

Gelişme ortamı: Hedef belirleyip kendisini motive eder, daha fazlasını yapmayı ve beklenenden çabuk davranmayı arzular, başkalarının sorunlarını hallettiği gibi kendi sorunlarıyla da yüzleşebilirse.

Lider olarak: Sakin ve kendisine hakimdir, ani karar vermez, herkes tarafından sevilir ve zararsızdır, so run çıkarmaz, fakat sık sık yeni parlak fikirlerle de ortaya çıkmaz.

Eş tercihi: Güçlü yönlerine ve kararlılıklarına saygı duyduğu için Güçlü Koleriklere yakındır, fakat Barışçıl Soğukkanlı daha sonra oraya buraya çekiştirilip küçük görülmekten yorgun düşer.

Strese tepkileri: Kaçar, televizyon seyreder, yemek yer, yaşama uyum sağlayamaz.

Bilinen özellikleri: Sakin yaklaşım, rahat duruş, mümkün olan her an oturma ya da uzanma.

"""
    var characterResults = Int(0)
    var characterCounters: [Int] = [0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch characterResults {
        case 1:
            TitleLabel.text = type2Title
            DetailsLabel.text = type2Details
            CharacterDetailsView.backgroundColor = UIColor.red
        case 2:
            TitleLabel.text = type3Title
            DetailsLabel.text = type3Details
            CharacterDetailsView.backgroundColor = UIColor.blue
        case 3:
            TitleLabel.text = type4Title
            DetailsLabel.text = type4Details
            CharacterDetailsView.backgroundColor = UIColor.green
        default:
            TitleLabel.text = type1Title
            DetailsLabel.text = type1Details
            CharacterDetailsView.backgroundColor = UIColor.yellow
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CharacterReportViewController
        {
            let vc = segue.destination as? CharacterReportViewController
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
