//
//  ViewController.swift
//  demo10
//
//  Created by admin on 2023-04-26.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    let manager = CLLocationManager()
    let montreal = CLLocation(latitude: 45.52116, longitude: -73.56431)
    let cegepValleyfield = CLLocation(latitude: 45.25355, longitude: -74.13481)
    let startPostion = CLLocation(latitude: 37.33104629, longitude: -122.03067027)
 
    override func viewDidLoad() {
        super.viewDidLoad()
        //afficher Montreal sur une carte
        let montreal2D: CLLocationCoordinate2D = montreal.coordinate
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: montreal2D, span: span)
        mapView.mapType = .hybrid
        mapView.setRegion(region, animated: true)
        
        // Do any additional setup after loading the view.
        print("Distance entre Cégep Colval et Centre ville de Montréal est \(round(cegepValleyfield.distance(from: montreal)/1000)) kilomètres")
        
        //setup du manager
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last?.coordinate)
        print("Distance à partie Position initiale est  \(round((locations.last)!.distance(from: startPostion))) mètres")
    }


}

