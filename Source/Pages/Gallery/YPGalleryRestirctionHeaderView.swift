//
//  YPGalleryRestirctionHeaderView.swift
//  YPImagePicker
//
//  Created by Dmitry Stepanets on 27.12.2021.
//

import UIKit
import Stevia

class YPGalleryRestirctionHeaderView: UICollectionReusableView {
    //Private
    private let restrictionImageView = UIImageView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private let separatorView = UIView()
    private let manageButton = UIButton()
    
    //Public
    var onManageTap: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        prepareIcon()
        prepareLabels()
        prepareSeparator()
        prepareManageButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func handleManageButton() {
        onManageTap?()
    }
}

//MARK: - Prepare
private extension YPGalleryRestirctionHeaderView {
    func prepareIcon() {
        restrictionImageView.translatesAutoresizingMaskIntoConstraints = false
        restrictionImageView.image = YPIcons().restriction
        restrictionImageView.backgroundColor = .white
        restrictionImageView.tintColor = .darkGray
        restrictionImageView.contentMode = .scaleAspectFit
        restrictionImageView.layer.cornerRadius = 10
        restrictionImageView.clipsToBounds = true
        addSubview(restrictionImageView)
        
        restrictionImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        restrictionImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        restrictionImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        restrictionImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
    }
    
    func prepareLabels() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        titleLabel.textColor = .black
        titleLabel.text = "Limited Access to Media"
        titleLabel.setContentCompressionResistancePriority(.fittingSizeLevel, for: .vertical)
        addSubview(titleLabel)
        
        titleLabel.leftAnchor.constraint(equalTo: restrictionImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: restrictionImageView.centerYAnchor).isActive = true
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.font = UIFont.systemFont(ofSize: 14)
        subtitleLabel.textColor = .black
        subtitleLabel.numberOfLines = 0
        subtitleLabel.lineBreakMode = .byWordWrapping
        subtitleLabel.text = "You've given SquareOffs access to a select number of photos or videos."
        addSubview(subtitleLabel)
        
        subtitleLabel.topAnchor.constraint(equalTo: restrictionImageView.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 8).isActive = true
    }
    
    func prepareSeparator() {
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        addSubview(separatorView)
        
        separatorView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 8).isActive = true
        separatorView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        let right = separatorView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8)
        right.priority = .init(rawValue: 999)
        right.isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func prepareManageButton() {
        manageButton.translatesAutoresizingMaskIntoConstraints = false
        manageButton.addTarget(self, action: #selector(handleManageButton), for: .touchUpInside)
        manageButton.setTitle("Manage", for: .normal)
        manageButton.setTitleColor(YPColors().tintColor, for: .normal)
        manageButton.contentHorizontalAlignment = .left
        addSubview(manageButton)
        
        manageButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        manageButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        manageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        manageButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 8).isActive = true
        
        let bottom = manageButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        bottom.priority = .init(rawValue: 999)
        bottom.isActive = true
    }
}
