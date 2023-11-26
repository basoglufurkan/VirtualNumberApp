//
//  MessagesListCell.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit

class MessagesListCell : UITableViewCell {

    var country: CountryList = .uk {
        didSet {
            titleLabel.text = country.getName()
            titleSub.text = country.getMaskedPhoneNumber()
            coloredLabel.text = country.getGreenText()
            flag.image = country.getFlagIcon()
            titlePopular.text = country.getPopularText()
            popularImags.image = country.getPopularImage()
            popularImags.snp.updateConstraints({ make in
                make.left.equalTo(country.getPopularTrailing())
            })

            titlePopular.snp.updateConstraints({ make in
                make.left.equalTo(country.getPopularTrailing()+15)
            })
        }
    }

    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15)
        view.text = "U.Kingdom"
        return view
    }()

    private lazy var titlePopular: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 10)
        view.text = "U.Kingdom"
        view.textColor = .red
        return view
    }()

    private lazy var coloredLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15)
        view.text = "8 mevcut numara"
        view.textColor = UIColor.green
        return view
    }()

    private lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.layer.cornerRadius = 15
        return view
    }()

    private lazy var bottomLable: UILabel = {
        let view = UILabel()
        view.text = "AL"
        view.font = UIFont.boldSystemFont(ofSize: 16)
        view.textColor = UIColor.white
        view.textAlignment = .center
        return view
    }()

    private lazy var rightLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.text = "Başarılı"
        view.textColor = UIColor.green
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

    private lazy var popularImags: UIImageView = {
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
//        addTitleRight()
        addBottomView()
        addTitleColored()
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

        self.contentView.addSubview(popularImags)
        popularImags.snp.makeConstraints { make in
            make.left.equalTo(160)
            make.top.equalTo(20)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }

        self.contentView.addSubview(titlePopular)
        titlePopular.snp.makeConstraints { make in
            make.left.equalTo(180)
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

    func addTitleColored() {
        self.contentView.addSubview(coloredLabel)
        coloredLabel.snp.makeConstraints { make in
            make.left.equalTo(80)
            make.top.equalTo(55)
        }
    }

//    func addTitleRight() {
//        self.contentView.addSubview(rightLabel)
//        rightLabel.snp.makeConstraints { make in
//            make.right.equalTo(-30)
//            make.top.equalTo(30)
//        }
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addBottomView() {
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(20)
            make.height.equalTo(30)
            make.right.equalTo(-20)
            make.width.equalTo(60)
        }
        view.addSubview(bottomLable)
        bottomLable.snp.makeConstraints { make in
            make.top.equalTo(25)
            make.right.equalTo(-40)
        }
    }

}
