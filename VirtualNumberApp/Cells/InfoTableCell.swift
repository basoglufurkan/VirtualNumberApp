//
//  InfoTableCell.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit

class InfoTableCell : UITableViewCell {

    var country: CountryList = .uk {
        didSet {
            titleLabel.text = country.getName()
            flag.image = country.getFlagIcon()
            titleSub.text = country.getPhoneNumber()
            rightLabel.text = country.getRightText()
            rightLabel.textColor = country.getRightTextColor()
            rightImage.image = country.getTickIcon()
        }
    }

    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15)
        view.text = "U.Kingdom"
        return view
    }()

    private lazy var rightLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.text = "Başarılı"
        view.textColor = UIColor.green
        return view
    }()

    private lazy var rightImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "tickGreen")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var titleSub: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 13)
        view.text = "+44 7352 998717"
        return view
    }()

    private lazy var flag: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "flag")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var view: UIView = {
        let view = UIView()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.layout()
    }

    private func layout() {
        self.contentView.addSubview(view)
        view.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
        addFlagIcon()
        addTitleLable()
        addTitleSub()
        addTitleRight()
    }

    func addFlagIcon() {
        self.contentView.addSubview(flag)
        flag.snp.makeConstraints { maker in
            maker.left.equalTo(20)
            maker.width.equalTo(50)
            maker.height.equalTo(50)
            maker.top.equalTo(12)
        }
    }

    func addTitleLable() {
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(80)
            make.top.equalTo(20)
        }
    }

    func addTitleSub() {
        self.contentView.addSubview(titleSub)
        titleSub.snp.makeConstraints { make in
            make.left.equalTo(80)
            make.top.equalTo(40)
        }
    }

    func addTitleRight() {
        self.contentView.addSubview(rightLabel)
        rightLabel.snp.makeConstraints { make in
            make.right.equalTo(-30)
            make.top.equalTo(30)
        }
        self.contentView.addSubview(rightImage)
        rightImage.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.top.equalTo(30)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
