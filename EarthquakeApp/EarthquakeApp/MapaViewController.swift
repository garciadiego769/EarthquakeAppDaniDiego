//
//  MapaViewController.swift
//  EarthquakeApp
//
//  Created by  on 27/2/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import UIKit
import MapKit


class MapaViewController: UIViewController {
    @IBOutlet weak var Mapa: MKMapView!
    let anotacion = MKPointAnnotation()
    
    override func viewDidLoad() {
        let localizacionInicial = CLLocation(latitude: 21.282778, longitude: -157.829444)
        super.viewDidLoad()
        anotacion.coordinate = CLLocationCoordinate2D(latitude: 122.81, longitude: 38.81)
        
        Mapa.addAnnotation(anotacion)
        anotacion.title = "Hola que tal"
        
        //anotacion.coordinate = center
        // Do any additional setup after loading the view.
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
