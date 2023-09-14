//
//  TileCollectionViewCell.swift
//  Carousel
//
//  Created by jason brown on 18/06/1402 AP.
//

import UIKit

struct TileCollectionViewCellViewModel{
    let name: String
    let backgroundColor: UIColor
}
class TileCollectionViewCell: UICollectionViewCell {
    static let identifier = "TileCollectionViewCell"
    private let label: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    //Mark - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        contentView.layer.cornerRadius = 6
        contentView.layer.borderWidth = 1.5
        contentView.layer.borderColor = UIColor.quaternaryLabel.cgColor
        //contentView.backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    //Mark - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = contentView.bounds 
    }
    
    func configure(with viewModel: TileCollectionViewCellViewModel){
        
        contentView.backgroundColor = viewModel.backgroundColor
        label.text = viewModel.name
    }
    
}
