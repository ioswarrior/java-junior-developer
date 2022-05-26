//
//  QuestionsCollectionViewCell.swift
//  JavaJuniorDeveloper
//
//  Created by Muller Alexander on 26.05.2022.
//

import UIKit

class QuestionsCollectionViewCell: UICollectionViewCell {
    
    static var id = "\(Bundle.main.bundleIdentifier!) . \(NSStringFromClass(QuestionsCollectionViewCell.self))"
    
    let titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .label
        $0.font = .preferredFont(for: .title3, with: .traitBold)
        
        return $0
    }(UILabel(frame: .zero))
    
    var questionsCountLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .label
        $0.font = .preferredFont(for: .headline)
        
        return $0
    }(UILabel(frame: .zero))
    
    let imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        return $0
    }(UIImageView(image: nil))
    
    func configure(title: String, questionsCount: String, image: UIImage) {
        titleLabel.text = title
        questionsCountLabel.text = questionsCount
        imageView.image = image
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .secondarySystemGroupedBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension QuestionsCollectionViewCell {
    private func setupConstraints() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(questionsCountLabel)
        contentView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageView.leadingAnchor.constraint(greaterThanOrEqualTo: titleLabel.trailingAnchor, constant: 5),
            questionsCountLabel.topAnchor.constraint(greaterThanOrEqualTo: titleLabel.bottomAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: questionsCountLabel.bottomAnchor, constant: 12),
            questionsCountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageView.leadingAnchor.constraint(greaterThanOrEqualTo: questionsCountLabel.trailingAnchor, constant: 5),
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            contentView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8),
            contentView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 0.8)
        ])
    }
}
