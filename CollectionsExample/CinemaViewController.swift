//
//  ViewController.swift
//  CollectionsExample
//
//  Created by Delfín Hernández Gómez on 23/11/2020.
//

import UIKit

class CinemaViewController: UICollectionViewController {
    
    let CINEMA = 0
    let SERIES = 1
    let DOCUS = 2

    
    //Seccion para Cine
    var series: [CinemaItem] = []
    //Seccion para Series
    var cinema: [CinemaItem] = []
    //Seccion para documentales
    var documentals: [CinemaItem] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        loadInitialData()
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 3
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case CINEMA:
            return self.cinema.count
        case SERIES:
            return self.series.count
        case DOCUS:
            return self.documentals.count
        default:
            return 0
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: CinemaItemCollectionViewCell
        switch indexPath.section {
        case CINEMA:
            cell = instantiateCinemaCell(indexPath: indexPath)
        case SERIES:
            cell = instantiateSeriesCell(indexPath: indexPath)
        case DOCUS:
            cell = instantiateDocusCell(indexPath: indexPath)
        default:
            cell = instantiateCinemaCell(indexPath: indexPath)
            
        }
        
        return cell
        
    }
    
    func instantiateCinemaCell(indexPath: IndexPath) -> CinemaItemCollectionViewCell {
        
        var retCell: CinemaItemCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CinemaItem", for: indexPath) as! CinemaItemCollectionViewCell
        
        retCell.itemTitle.text = cinema[indexPath.row].itemTitle
        retCell.itemDescription.text = cinema[indexPath.row].itemDescription
        retCell.itemTimage.image = UIImage.init(named: "cineBG")
        
        return retCell
        
        
    }
    
    func instantiateSeriesCell(indexPath: IndexPath) -> CinemaItemCollectionViewCell {
        
        var retCell: CinemaItemCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CinemaItem", for: indexPath) as! CinemaItemCollectionViewCell
        
        retCell.itemTitle.text = series[indexPath.row].itemTitle
        retCell.itemDescription.text = series[indexPath.row].itemDescription
        retCell.itemTimage.image = UIImage.init(named: "cineBG")
        
        return retCell
        
        
    }
    
    func instantiateDocusCell(indexPath: IndexPath) -> CinemaItemCollectionViewCell {
        
        var retCell: CinemaItemCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CinemaItem", for: indexPath) as! CinemaItemCollectionViewCell
        
        retCell.itemTitle.text = documentals[indexPath.row].itemTitle
        retCell.itemDescription.text = documentals[indexPath.row].itemDescription
        retCell.itemTimage.image = UIImage.init(named: "cineBG")
        
        return retCell
        
        
    }
    
    
    func loadInitialData() {
        
        cinema = [
            CinemaItem(title: "Taxi", desc: "Esta mola mucho", image: ""),
            CinemaItem(title: "Cars", desc: "Esta va de coches", image: ""),
            CinemaItem(title: "Borat", desc: "Idolo de muchos", image: ""),
        ]
        
        series = [
            CinemaItem(title: "Taxi", desc: "Esta mola mucho", image: ""),
            CinemaItem(title: "Cars", desc: "Esta va de coches", image: ""),
            CinemaItem(title: "Borat", desc: "Idolo de muchos", image: ""),
        ]
        
        documentals = [
            CinemaItem(title: "Taxi", desc: "Esta mola mucho", image: ""),
            CinemaItem(title: "Cars", desc: "Esta va de coches", image: ""),
            CinemaItem(title: "Borat", desc: "Idolo de muchos", image: ""),
        ]
        
    }
    
    
    
    


}



