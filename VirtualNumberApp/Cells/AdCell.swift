//
//  AdCell.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class AdCell : UITableViewCell {
    
    private lazy var viewAd: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()

    private lazy var lableAd: UIView = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 11)
        view.textColor = UIColor.white
        view.textAlignment = .center
        view.text = "Ad"
        return view
    }()

    private lazy var adImage: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "adIcon")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var infoImage: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "infoIcn")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var titleAd: UIView = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 15)
        view.textColor = .black
        view.text = "v-Sim"
        return view
    }()

    private lazy var descriptionAd: UIView = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.textColor = .gray
        view.numberOfLines = 2
        view.text = "Dunya capinda 400 \nmilyondan fazla kisi bu ...."
        return view
    }()

    private lazy var viewBlue: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()

    private lazy var lableWhite: UIView = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 15)
        view.text = "YŪkleyin"
        view.textAlignment = .center
        view.textColor = UIColor.white
        return view
    }()

    
   

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func layout() {
        addViewAd()
        addImage()
        addTitle()
        addSubtitle()
        addInfoImage()
        addBlueView()
        
    }

    func addViewAd() {
        self.contentView.addSubview(viewAd)
        viewAd.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.width.equalTo(28)
            make.height.equalTo(20)
            make.top.equalTo(0)
        }

        viewAd.addSubview(lableAd)
        lableAd.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            make.top.equalTo(0)
        }
    }
    func addImage() {
        self.contentView.addSubview(adImage)
        adImage.snp.makeConstraints { make in
            make.left.equalTo(40)
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(0)
        }
    }

    func addTitle() {
        self.contentView.addSubview(titleAd)
        titleAd.snp.makeConstraints { make in
            make.left.equalTo(150)
            make.right.equalTo(70)
            make.top.equalTo(0)
        }
    }

    func addSubtitle() {
        self.contentView.addSubview(descriptionAd)
        descriptionAd.snp.makeConstraints { make in
            make.left.equalTo(150)
            make.right.equalTo(70)
            make.top.equalTo(20)
        }
    }

    func addInfoImage() {
        self.contentView.addSubview(infoImage)
        infoImage.snp.makeConstraints { make in
            make.right.equalTo(-12)
            make.width.equalTo(22)
            make.height.equalTo(22)
            make.top.equalTo(0)
        }
    }

    func addBlueView() {
        self.contentView.addSubview(viewBlue)
        viewBlue.layer.cornerRadius = 12
        viewBlue.backgroundColor = UIColor.tintColor
        viewBlue.snp.makeConstraints { make in
            make.left.equalTo(150)
            make.width.equalTo(110)
            make.height.equalTo(25)
            make.top.equalTo(55)
        }

        self.viewBlue.addSubview(lableWhite)
        lableWhite.contentMode = .center
        lableWhite.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(0)
            make.top.equalTo(0)
        }
    }


}

