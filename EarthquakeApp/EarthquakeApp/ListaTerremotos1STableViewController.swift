//
//  ListaTerremotos1STableViewController.swift
//  EarthquakeApp
//
//  Created by  on 27/2/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyXMLParser

class ListaTerremotos1STableViewController: UITableViewController {


    var terremotos = [String]()
    var magnitud = [String]()
    var nuevoTerremoto: String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        Alamofire.request("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.quakeml")
            .responseData { response in
                if let data = response.data {
                    let xml = XML.parse(data)
                    
                    for terremoto in xml["q:quakeml","eventParameters","event"] {
                        self.terremotos.append(terremoto["description","text"].text ?? "?")
                        self.magnitud.append(terremoto["magnitude","mag","value"].text ?? "?")
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "terremotos", for: indexPath) as! TerremotoTableViewCell
        
        cell.titulo.text = "Lugar: " + terremotos[indexPath.row]
        cell.magnitud.text = "Magnitud: " + magnitud[indexPath.row]
        return cell
    }
    

}
