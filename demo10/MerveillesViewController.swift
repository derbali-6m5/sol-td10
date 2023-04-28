//
//  MerveillesViewController.swift
//  demo10
//
//  Created by admin on 2023-04-28.
//

import UIKit
import MapKit
import CoreLocation
import SafariServices

class MerveillesViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var merveilles: [Merveille] = DataSource().merveilles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //centrer la carte autour des 7 merveilles
        let span = MKCoordinateSpan(latitudeDelta: 33, longitudeDelta: 33)
        let region = MKCoordinateRegion(center: self.merveilles.first!.coordinate, span: span)
        self.mapView.setRegion(region, animated: true)
        
        //ajouter des pins sur la carte
        self.mapView.delegate  = self
        self.mapView.addAnnotations(self.merveilles)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let merveille = annotation as? Merveille
        let view: MKAnnotationView
        
        if let recyclee = self.mapView.dequeueReusableAnnotationView(withIdentifier: "annotionID"){
            recyclee.annotation = annotation
            view = recyclee
        }else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "annotionID")
        }
        
        //ajouter l'info bulle
        view.canShowCallout = true
        //ajouter un bouton d'action à l'info bulle
        if(merveille?.urlWiki != nil){
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        return view
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let merveille = view.annotation as? Merveille
        if(merveille?.urlWiki != nil){
            let safari = SFSafariViewController(url: merveille!.urlWiki)
            present(safari, animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
