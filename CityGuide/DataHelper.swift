//
//  DataHelper.swift
//  CityGuide
//
//  Created by Beyza Arslan on 27.08.2021.
//

import UIKit

class DataHelper {
        
    static func getIcerikListesi() -> [ozellik] {
        
        var ozellikListesi = [ozellik]()
        
        var i = ozellik()
        i.id = 34
        i.baslik = "İstanbul"
        i.image = "istanbul.jpg"
        
        var mekan = Mekan()
        mekan.id = 341
        mekan.image = "ayasofya.jpg"
        mekan.baslik = "Ayasofya"
        mekan.aciklama = "İstanbul'un en gözde mekanlarından biridir. İnsanlık tarihinde önemli bir yere sahip olan Ayasofya tarih boyu kültür beşiği olmuştur."
        mekan.baslikGaleri = "Ayasofya"
        mekan.galeriImage = "ayasofya.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 342
        mekan.image = "kizkulesi.jpg"
        mekan.baslik = "Kız Kulesi"
        mekan.aciklama = "Üsküdar'ın sembolü haline gelen kule, Üsküdar’da Bizans devrinden kalan tek eserdir."
        mekan.baslikGaleri = "Kız Kulesi"
        mekan.galeriImage = "kizkulesi.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 343
        mekan.image = "kapalicarsi.jpg"
        mekan.baslik = "Kapalıçarşı"
        mekan.aciklama = "Kapalıçarşı, İstanbul kentinin merkezinde Beyazıt, Nuruosmaniye ve Mercan semtlerinin ortasında yer alan dünyanın en büyük çarşısı ve en eski kapalı çarşılarından biri."
        mekan.baslikGaleri = "Kapalıçarşı"
        mekan.galeriImage = "kapalicarsi.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 344
        mekan.image = "galatakulesi.jpg"
        mekan.baslik = "Galata Kulesi"
        mekan.aciklama = "Galata Kulesi ya da müze olarak kullanılmaya başlaması sonrasındaki adıyla Galata Kulesi Müzesi, Türkiye'nin İstanbul şehrinin Beyoğlu ilçesinde bulunan bir kuledir."
        mekan.baslikGaleri = "Galata Kulesi"
        mekan.galeriImage = "galatakulesi.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.baslikGaleri = "Dolmabahçe Sarayı"
        mekan.galeriImage = "dolmabahce.jpg"
        i.yerler.append(mekan)
        
        ozellikListesi.append(i)
/*
        i.baslikGaleri = ["Kız Kulesi", "Ayasofya", "Kapalıçarşı", "Galata Kulesi", "Dolmabahçe Sarayı", "İstiklal Caddesi"]
        i.galeriImage = ["kizkulesi.jpg", "ayasofya.jpg", "kapalicarsi.jpg", "galatakulesi.jpg", "dolmabahce.jpg", "istiklal.jpg"]
        */
            
        
        i = ozellik()
        i.id = 35
        i.baslik = "Paris"
        i.image = "paris.jpg"
        
        mekan = Mekan()
        mekan.id = 351
        mekan.image = "eyfel.jpg"
        mekan.baslik = "Eyfel Kulesi"
        mekan.aciklama = "Eyfel Kulesi, Paris'teki demir kule. Kule, aynı zamanda tüm dünyada Fransa'nın sembolü halini almıştır."
        mekan.baslikGaleri = "Eyfel Kulesi"
        mekan.galeriImage = "eyfel.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 352
        mekan.image = "notredame.jpg"
        mekan.baslik = "Notre Dame Katedrali"
        mekan.aciklama = "Paris, Fransa'da bulunan dünyaca ünlü bir katedraldir. Meryem Ana'ya ithafen isimlendirilmiştir."
        mekan.baslikGaleri = "Notre Dame Katedrali"
        mekan.galeriImage = "notredame.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 353
        mekan.image = "louvre.jpg"
        mekan.baslik = "Louvre Müzesi"
        mekan.aciklama = "Louvre Müzesi; dünyanın en büyük sanat müzesidir. Fransa'nın başkenti Paris'te, Louvre Sarayı'na kurulmuştur."
        mekan.baslikGaleri = "Louvre Müzesi"
        mekan.galeriImage = "louvre.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 354
        mekan.image = "alexanderkopru.jpg"
        mekan.baslik = "Alexander Köprüsü"
        mekan.aciklama = "Pont Alexandre III, Paris'teki Seine Nehri'ni kapsayan bir güverte kemeri köprüsüdür."
        mekan.baslikGaleri = "Alexander Köprüsü"
        mekan.galeriImage = "alexanderkopru.jpg"
        i.yerler.append(mekan)
        
        ozellikListesi.append(i)
        
        /*
        i.baslikGaleri = ["Eyfel Kulesi", "Notre Dame Katedrali", "Louvre Müzesi", "Lüksemburg Bahçeleri", "Pantheon", "Alexander Köprüsü"]
        i.galeriImage = ["eyfel.jpg", "notredame.jpg", "louvre.jpg", "luxembourg.jpg", "pantheon.jpg", "alexanderkopru.jpg"]
        */
            
        
        i = ozellik()
        i.id = 36
        i.baslik = "Roma"
        i.image = "roma.jpg"
        
        mekan = Mekan()
        mekan.id = 361
        mekan.image = "trevi.jpg"
        mekan.baslik = "Trevi Çeşmesi"
        mekan.aciklama = "Üç yolun kavşağında bulunduğu için Trevi adı konulduğu varsayıldığı gibi, üç yeraltı su yolunun bu noktada toplanmasının isminin nedeni olduğu iddiası da vardır."
        mekan.baslikGaleri = "Trevi Çeşmesi"
        mekan.galeriImage = "trevi.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 362
        mekan.image = "novana.jpg"
        mekan.baslik = "Navona Meydanı"
        mekan.aciklama = "İtalya'nın başkenti Roma'da bulunan bir meydandır. MS 1. yüzyılda inşa edilen Domitianus Stadyumu'nun bulunduğu yere inşa edilmiştir."
        mekan.baslikGaleri = "Navona Meydanı"
        mekan.galeriImage = "novana.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 363
        mekan.image = "petrus.jpg"
        mekan.baslik = "Aziz Petrus Meydanı"
        mekan.aciklama = "Vatikan devleti ve şehrinde yer alan, dünyanın en büyük meydanlarından biridir."
        mekan.baslikGaleri = "Aziz Petrus Meydanı"
        mekan.galeriImage = "petrus.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 364
        mekan.image = "kolezyum.jpg"
        mekan.baslik = "Kolezyum"
        mekan.aciklama = "Flavianus Amfitiyatro olarak da bilinen Kolezyum bir arenadır."
        mekan.baslikGaleri = "Kolezyum"
        mekan.galeriImage = "kolezyum.jpg"
        i.yerler.append(mekan)
        
        ozellikListesi.append(i)
        
        /*
        i.baslikGaleri = ["Kolezyum", "Navona Meydanı", "Aziz Petrus Meydanı", "Trevi Çeşmesi", "Kutsal Melek Kalesi", "Aziz Petrus Bazilikası"]
        i.galeriImage = ["kolezyum.jpg", "novana.jpg", "petrus.jpg", "trevi.jpg", "kutsalMelek.jpg", "bazilika.jpg"]
        */
        
        
        i = ozellik()
        i.id = 37
        i.baslik = "Londra"
        i.image = "londra.jpg"
        
        mekan = Mekan()
        mekan.id = 371
        mekan.image = "buckingham.jpg"
        mekan.baslik = "Buckingham Sarayı"
        mekan.aciklama = "Buckingham Sarayı, Birleşik Krallık hükümdarlarının yönetim merkezi ve Londra'daki ikametgahı."
        mekan.baslikGaleri = "Buckingham Sarayı"
        mekan.galeriImage = "buckingham.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 372
        mekan.image = "trafalgar.jpg"
        mekan.baslik = "Trafalgar Meydanı"
        mekan.aciklama = "Trafalgar Meydanı, Londra'nın merkezinde, National Art Gallery'nin ana giriş kapısının baktığı önemli meydan."
        mekan.baslikGaleri = "Trafalgar Meydanı"
        mekan.galeriImage = "trafalgar.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 373
        mekan.image = "british.jpg"
        mekan.baslik = "British Museum"
        mekan.aciklama = "Dünya'nın her yanından getirilen seçkin Antik Çağ yapıtları ve etnografya koleksiyonlarını kapsayan müze."
        mekan.baslikGaleri = "British Museum"
        mekan.galeriImage = "british.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 374
        mekan.image = "londonEye.jpg"
        mekan.baslik = "London Eye"
        mekan.aciklama = "London Eye, 135 metre yükseklikte, Avrupa'da bilinen en yüksek dönme dolaptır."
        mekan.baslikGaleri = "London Eye"
        mekan.galeriImage = "londonEye.jpg"
        i.yerler.append(mekan)
      
        ozellikListesi.append(i)
        
        /*
        i.baslikGaleri = ["Buckingham Sarayı", "Trafalgar Meydanı", "British Museum", "London Eye", "Londra Doğa Tarihi Müzesi", "Tower Bridge"]
        i.galeriImage = ["buckingham.jpg", "trafalgar.jpg", "british.jpg", "londonEye.jpg", "natureMuseum.jpg", "towerBridge"]
        */
        
        
        i = ozellik()
        i.id = 38
        i.baslik = "Edinburgh"
        i.image = "edinburg.jpg"
        
        mekan = Mekan()
        mekan.id = 381
        mekan.image = "edingburhCastle.jpg"
        mekan.baslik = "Edinburgh Kalesi"
        mekan.aciklama = "İskoçya'nın en önemli turistik görsellerinden sayılmaktadır. Edinburgh'un merkezinde olup Castle Rock'dadır."
        mekan.baslikGaleri = "Edinburgh Kalesi"
        mekan.galeriImage = "edingburhCastle.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 382
        mekan.image = "royalMile.jpg"
        mekan.baslik = "Royal Mile"
        mekan.aciklama = "Royal Mile, İskoçya'nın Edinburgh şehrinin Eski Kent bölgesinin ana caddesini oluşturan bir dizi caddedir."
        mekan.baslikGaleri = "Royal Mile"
        mekan.galeriImage = "royalMiler.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 383
        mekan.image = "holyrood.jpg"
        mekan.baslik = "Holyrood Sarayı"
        mekan.aciklama = "Edinburgh'daki Palace of Holyrood House veya Holyrood Sarayı Britanya kraliyet ailesinin İskoçya'daki rezidansıdır."
        mekan.baslikGaleri = "Holyrood Sarayı"
        mekan.galeriImage = "holyrood.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 384
        mekan.image = "scottAnıtı.jpg"
        mekan.baslik = "Scott Anıtı"
        mekan.aciklama = "İskoç yazar Sir Walter Scott'un Victoria Gotik anıtıdır."
        mekan.baslikGaleri = "Scott Anıtı"
        mekan.galeriImage = "scottAnıtı.jpg"
        i.yerler.append(mekan)
        
        ozellikListesi.append(i)
        
        /*
        i.baslikGaleri = ["Edinburgh Kalesi", "Royal Mile", "Holyrood Sarayı", "Scott Anıtı", "Arthur's Seat", "İskoçya Ulusal Müzesi"]
        i.galeriImage = ["edingburhCastle.jpg", "royalMile.jpg", "holyrood.jpg", "scottAnıtı.jpg", "ArthursSeat.jpg", "scothlanMuseum.jpg"]
        */
        
        i = ozellik()
        i.id = 39
        i.baslik = "Zürih"
        i.image = "zürih.jpg"
        
        mekan = Mekan()
        mekan.id = 391
        mekan.image = "Uetliberg.jpg"
        mekan.baslik = "Uetliberg"
        mekan.aciklama = "Kentin, gölün ve Alpler’in oluşturduğu enfes manzaranın tadını çıkartmaya niyetlendiğinizde, deniz seviyesinden 867 metre yükseklikteki Uetliberg’in zirvesine çıkabilirsiniz."
        mekan.baslikGaleri = "Uetliberg"
        mekan.galeriImage = "Uetliberg.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 392
        mekan.image = "kunsthaus.jpg"
        mekan.baslik = "Zürih Sanatevi"
        mekan.aciklama = "Zürih Sanatevi İsviçre'nin Zürih şehrindeki sanat müzesi. İsviçre'nin en önemli sanat koleksiyonlarından biridir."
        mekan.baslikGaleri = "Zürih Sanatevi"
        mekan.galeriImage = "kunsthaus.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 393
        mekan.image = "bahnhofstrasse.jpg"
        mekan.baslik = "Bahnhofstrasse"
        mekan.aciklama = "Zürih’in ana caddelerinden biri olan Bahnhofstrasse, dünyanın en pahalı caddelerinden biri kabul ediliyor. İstasyondan göle kadar uzanan cadde, alışveriş çılgınlığı için paha biçilemez bir yer."
        mekan.baslikGaleri = "Bahnhofstrasse"
        mekan.galeriImage = "bahnhofstrasse.jpg"
        i.yerler.append(mekan)
        
        mekan = Mekan()
        mekan.id = 394
        mekan.image = "lindenhof.jpg"
        mekan.baslik = "Lindenhof"
        mekan.aciklama = "Limmat Nehri’nin doğusunda, adı “Ihlamur Ağacı Bahçesi” anlamına gelen bölge, Roma döneminden günümüze gelen kalıntıları ile tanınıyor."
        mekan.baslikGaleri = "Lindenhof"
        mekan.galeriImage = "lindenhof.jpg"
        i.yerler.append(mekan)
        
        ozellikListesi.append(i)
        
        /*
        i.baslikGaleri = ["Zürih Gölü", "Rietberg Müzesi", "Uetliberg", "Zürih Sanatevi", "Bahnhofstrasse", "Lindenhof"]
        i.galeriImage = ["zurichLake.jpg", "rietbergMüzesi.jpg","Uetliberg.jpg", "kunsthaus.jpg", "bahnhofstrasse.jpg", "lindenhof.jpg"]
        */
        
        i = ozellik()
        i.id = 40
        i.baslik = "Atina"
        i.image = "atina.jpg"
        ozellikListesi.append(i)
        
        i = ozellik()
        i.id = 41
        i.baslik = "Amsterdam"
        i.image = "amsterdam.jpg"
        ozellikListesi.append(i)
        
        i = ozellik()
        i.id = 42
        i.baslik = "Madrid"
        i.image = "madrid.jpg"
        ozellikListesi.append(i)
        
        i = ozellik()
        i.id = 43
        i.baslik = "Prag"
        i.image = "prag.jpg"
        ozellikListesi.append(i)
        
        i = ozellik()
        i.id = 44
        i.baslik = "Venedik"
        i.image = "venedik.jpg"
        ozellikListesi.append(i)
        
        i = ozellik()
        i.id = 45
        i.baslik = "Milan"
        i.image = "milan.jpg"
        ozellikListesi.append(i)
        
        return ozellikListesi
    }
    
}
