//
//  DataSource.swift
//  demo10
//
//  Created by admin on 2023-04-28.
//

import Foundation
import CoreLocation

class DataSource {
    var merveilles : [Merveille] {
        let pyramide = Merveille(titre:  "La pyramide de Khéops", coordonnes: CLLocationCoordinate2D(latitude: 29.978889, longitude: 31.133889), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Pyramide_de_Kh%C3%A9ops")!)
            
        let jardins = Merveille(titre: "Les jardins suspendus de Babylone", coordonnes: CLLocationCoordinate2D(latitude: 32.53554, longitude: 44.42753), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Jardins_suspendus_de_Babylone")!)
            
        let statue = Merveille(titre:"La statue chryséléphantine de Zeus", coordonnes:  CLLocationCoordinate2D(latitude: 38.6378, longitude: 21.63), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Statue_chrys%C3%A9l%C3%A9phantine_de_Zeus_%C3%A0_Olympie")!)

        let temple = Merveille(titre: "Le temple d'Artemis", coordonnes: CLLocationCoordinate2D(latitude: 37.9497, longitude: 27.3639), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Temple_d%27Art%C3%A9mis_%C3%A0_%C3%89ph%C3%A8se")!)
            
        let mausolee = Merveille(titre: "Le Mausolée d'Halicarnasse", coordonnes: CLLocationCoordinate2D(latitude: 37.03794, longitude: 27.42406), urlWiki: URL(string:"https://fr.wikipedia.org/wiki/Mausol%C3%A9e_d%27Halicarnasse")!)

        let colosse = Merveille(titre: "Le colosse de Rhodes", coordonnes: CLLocationCoordinate2D( latitude: 36.4511, longitude: 28.2278), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Colosse_de_Rhodes")!)

        let phare = Merveille(titre: "Le phare d'Alexandrie", coordonnes: CLLocationCoordinate2D(latitude: 31.2142, longitude: 29.885), urlWiki: URL(string: "https://fr.wikipedia.org/wiki/Phare_d%27Alexandrie")!)
        
        return [pyramide, jardins, statue, temple, mausolee, colosse, phare]
    }
}
