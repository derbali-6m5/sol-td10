//
//  Merveille.swift
//  demo10
//
//  Created by admin on 2023-04-28.
//

import Foundation
import CoreLocation
import MapKit

class Merveille: NSObject {
    internal init(titre: String, coordonnes: CLLocationCoordinate2D, urlWiki: URL) {
        self.titre = titre
        self.coordonnes = coordonnes
        self.urlWiki = urlWiki
    }
    var titre : String
    var coordonnes : CLLocationCoordinate2D
    var urlWiki : URL
}

extension Merveille: MKAnnotation{
    var coordinate: CLLocationCoordinate2D {
        return self.coordonnes
    }
    
    var title: String? {
        return self.titre
    }
}

