//
//  CallViewController.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class CallViewController: UIViewController {

    private lazy var setting: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "setting")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var rightImage: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "callTop")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var magicImage: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "magicImage")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var flag: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "flag")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var dropdown: UIView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "dropdown")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var topLeftLabel: UILabel = {
        let view = UILabel()
        view.text = "Yeni Numara Al"
        return view
    }()

    private lazy var countryCode: UITextField = {
        let view = UITextField()
        view.text = "+1"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        return view
    }()

    private lazy var titleLable: UILabel = {
        let view = UILabel()
        view.text = "Direkt Chat"
        view.font = UIFont.systemFont(ofSize: 22)
        return view
    }()

    private lazy var multilinelable: UILabel = {
        let view = UILabel()
        view.text = "Telefon numarasını kayıt etmeden WhatsApp aracılığıyla mesaj gönderebilirsiniz"
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 18)
        return view
    }()

    private lazy var leftView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 4
        return view
    }()

    private lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.layer.cornerRadius = 30
        return view
    }()

    private lazy var bottomLable: UILabel = {
        let view = UILabel()
        view.text = "Mesaj Gönder"
        view.font = UIFont.boldSystemFont(ofSize: 22)
        view.textColor = UIColor.white
        view.textAlignment = .center
        return view
    }()

    private lazy var rightView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 4
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        layout()
    }

    private func layout() {
        addSettingIcon()
        addLable()
        addRightImage()
        addTitleLable()
        addMagicImage()
        addLeftView()
        addRightView()
        addFlagImage()
        addMultiLine()
        addBottomView()
    }

    func addSettingIcon() {
        self.view.addSubview(setting)
        setting.snp.makeConstraints { maker in
            maker.left.equalTo(20)
            maker.width.equalTo(40)
            maker.height.equalTo(40)
            maker.top.equalTo(40)
        }
    }

    func addLable() {
        view.addSubview(topLeftLabel)
        topLeftLabel.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.right.equalTo(-12)
        }
    }

    func addRightImage() {
        view.addSubview(rightImage)
        rightImage.snp.makeConstraints { make in
            make.top.equalTo(45)
            make.right.equalTo(-130)
        }
    }

    func addTitleLable() {
        view.addSubview(titleLable)
        titleLable.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.left.equalTo(20)
        }
    }

    func addMagicImage() {
        view.addSubview(magicImage)
        magicImage.snp.makeConstraints { make in
            make.top.equalTo(140)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(200)
        }
    }

    func addLeftView() {
        view.addSubview(leftView)
        leftView.snp.makeConstraints { make in
            make.top.equalTo(340)
            make.left.equalTo(22)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
    }

    func addRightView() {
        view.addSubview(rightView)
        rightView.snp.makeConstraints { make in
            make.top.equalTo(340)
            make.left.equalTo(112)
            make.right.equalTo(-20)
            make.height.equalTo(40)
        }

        rightView.addSubview(countryCode)
        countryCode.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.left.equalTo(12)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }

    func addFlagImage() {
        leftView.addSubview(flag)
        flag.snp.makeConstraints { make in
            make.top.equalTo(6)
            make.left.equalTo(12)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }

        leftView.addSubview(dropdown)
        dropdown.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.left.equalTo(50)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }

    }

    func addMultiLine() {
        view.addSubview(multilinelable)
        multilinelable.snp.makeConstraints { make in
            make.top.equalTo(400)
            make.left.equalTo(60)
            make.right.equalTo(-60)
        }

    }

    func addBottomView() {
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(500)
            make.height.equalTo(60)
            make.right.equalTo(-70)
            make.left.equalTo(70)
        }
        bottomView.addSubview(bottomLable)
        bottomLable.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }

}

