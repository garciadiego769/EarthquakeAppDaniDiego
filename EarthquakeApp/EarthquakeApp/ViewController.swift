//
//  ViewController.swift
//  EarthquakeApp
//
//  Created by  on 30/1/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import Alamofire
import SwiftyXMLParser
import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Alamofire.request("https://itunes.apple.com/us/rss/topgrossingapplications/limit=10/xml")
         .responseData { response in
         if let data = response.data {
         let xml = XML.parse(data)
         for app in xml.feed.entry {
         print(app.title.text!)
         } */
        /* print(xml.feed.entry[0].title.text) // outputs the top title of iTunes app raning. */
        /* }
         } */
        
        /* Alamofire.request("http://opendata.euskadi.eus/contenidos/prevision_tiempo/met_forecast/opendata/met_forecast.xml") */
        /* HEMOS CAMBIADO LA DIRECCIÓN DE 'opendata' (linea anterior) a 'www' (linea siguiente) PARA QUE NO DE PROBLEMAS CON EL CERTIFICADO SSL */
        
        
        /*Alamofire.request("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.quakeml")
            .responseData { response in
                if let data = response.data {
                    let xml = XML.parse(data)*/
        
        
                    /* for app in xml.feed.weatherForecast {
                     print(app.title.text!)
                     } */
                    
                    /* LO SIGUIENTE FUNCIONA (Y LO PRINTAMOS MAS ABAJO) */
                    /* self.fecha = (xml.weatherForecast.forecasts.forecast[0].forecastDateText.text!) */
                    
                    /*(xml)
                    for terremoto in xml["q:quakeml","eventParameters","event"] {*/
                    
                    
                        /* print("Día: \(forecast.attributes["forecastData"]!)") */
                        
                        
                        /* print(terremoto["description","text"].text)*/
                        
                        
                        /*for terremoto in terremoto.cityForecastDataList.cityForecastData {
                            print(" Localidad: \(cityForecastData.attributes["cityName"]!)")
                            print(" Pronóstico: \(cityForecastData.symbol.descriptions.es.text!)")
                            print(" Máxima: \(cityForecastData.tempMax.text!)º")
                            print(" Mínima: \(cityForecastData.tempMin.text!)º")
                            print("--------------")*/
                        
                        
                        /*}
                    }
                }*/
                
                        
    }


}


