///
//  ListaTerremotos1HTableViewController.swift
//  EarthquakeApp
//
//  Created by  on 20/2/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyXMLParser

/*struct Terremoto1H{
 var lugar: String
 var magnitud: String
 var latitud: Double
 var longitud: Double
 }*/

class ListaTerremotos1MTableViewController: UITableViewController {
    var terremotos = [Terremoto]()
    var nuevoTerremoto: Terremoto!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        Alamofire.request("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.quakeml")
            .responseData { response in
                if let data = response.data {
                    let xml = XML.parse(data)
                    
                    for terremoto in xml["q:quakeml","eventParameters","event"] {
                        let lugar = terremoto["description","text"].text ?? "?"
                        let magnitud = terremoto["magnitude","mag","value"].text ?? "?"
                        let latitud =  terremoto["origin","latitude","value"].text ?? "?"
                        let longitud = terremoto["origin","longitude","value"].text ?? "?"
                        
                        self.terremotos.append(Terremoto(lugar: lugar, magnitud: magnitud, latitud: Double(latitud)!, longitud: Double(longitud)!))
                        
                    }
                    self.tableView.reloadData()
                }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return terremotos.count
    }
    
    @IBOutlet weak var Celda: UILabel!
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "terremotos1M", for: indexPath) as! TerremotoTableViewCell
        
        if terremotos.count == 0 {
            cell.titulo.text = "No se han registrado terremotos"
        }
        else {
            cell.titulo.text = "Lugar: " + terremotos[indexPath.row].lugar
        }
        
        //cell.titulo.text = "Lugar: " + terremotos[indexPath.row]
        cell.magnitud.text = "Magnitud: " + terremotos[indexPath.row].magnitud
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarTerremotos1M" {
            let destino = segue.destination as! MapaViewController
            
            destino.terremoto = self.terremotos[self.tableView.indexPathForSelectedRow!.row]
            
            
            
        }
    }
}


