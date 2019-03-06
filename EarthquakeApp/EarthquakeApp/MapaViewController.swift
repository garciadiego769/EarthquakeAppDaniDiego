//
//  MapaViewController.swift
//  EarthquakeApp
//
//  Created by  on 27/2/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import UIKit

import MapKit
import SafariServices

//import AEXML
import Alamofire


class MapaViewController: UIViewController {
    var latitud: Double!
    var longitud: Double!
    var terremoto: Terremoto!
    
    @IBOutlet weak var Mapa: MKMapView!
    
    let anotacion = MKPointAnnotation()
    
    let regionRadius: CLLocationDistance = 1500000
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        Mapa.setRegion(coordinateRegion, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Centrar el mapa
        let initialLocation = CLLocation(latitude: terremoto.latitud, longitude: terremoto.longitud)
        centerMapOnLocation(location: initialLocation)
        
        // Poner la chincheta
        anotacion.coordinate = initialLocation.coordinate
        
        self.Mapa.addAnnotation(anotacion)
        anotacion.title = terremoto.lugar
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
