//
//  PaisViewCell.swift
//  Sem11
//
//  Created by krlos90 on 25/11/23.
//

import UIKit

class PaisViewCell: UITableViewCell {

    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblPoblacion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
