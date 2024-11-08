//
//  ProductCell.swift
//  MVVM Products
//
//  Created by Muhammad Ahmed on 08/11/2024.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var ProductBackgroundView: UIView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productCategoryLabel: UILabel!
    @IBOutlet weak var rateButton: UIButton!
    @IBOutlet weak var productDescriptionlabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var product : Product? {
        didSet{ //property Observer
            productDetailConfiguration()
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func productDetailConfiguration(){
        guard let product else {return}
        productTitleLabel.text = product.title
        productDescriptionlabel.text = product.description
        productCategoryLabel.text = product.category
        priceLabel.text = "$\(product.price)"
        rateButton.setTitle("$\(product.rating.rate)", for: .normal)
        productImageView.setImage(with: product.image)
    }
    
}
