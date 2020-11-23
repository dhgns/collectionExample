//
//  CinemaItemCollectionViewCell.swift
//  CollectionsExample
//
//  Created by Delfín Hernández Gómez on 23/11/2020.
//

import UIKit

class CinemaItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemTimage: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadViewFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    func loadViewFromNib() {
        
        //Cargamos el contenido de CinemaItemCollectionViewCell.xib
        let nib = UINib(nibName: "CinemaItemCollectionViewCell", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        
        //Ajustamos la vista del xib al tamaño que nos pasa (implicitamente) el storyboard
        itemView.frame = bounds
        
        //Como somos un objeto visual, podemos añadir subviews
        addSubview(itemView)
        
    }
    
    
}
