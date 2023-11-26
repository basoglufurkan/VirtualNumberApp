//
//  HomeViewController.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    let cellId = "AdCell"

    private lazy var viewBottom: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 2
        return view
    }()

    private lazy var lableBottom: UIView = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 18)
        view.text = "    Yeni Numara Al      "
        view.textAlignment = .center
        view.textColor = UIColor.black
        return view
    }()


    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    private lazy var setting: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "setting")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var help: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "help")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var titleLabel: UIView = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20)
        view.text = "Anasayfa"
        return view
    }()

    private lazy var tableView: UITableView = {
        let view = UITableView()
        return view
    }()

    private lazy var callImage: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "cl")
        view.contentMode = .scaleAspectFit
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        print("item 1 loaded")
        self.layout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tab 1")
    }

    private func layout() {
        self.view.addSubview(setting)
        setting.snp.makeConstraints { maker in
            maker.right.equalTo(-20)
            maker.width.equalTo(40)
            maker.height.equalTo(40)
            maker.top.equalTo(40)
        }

        self.view.addSubview(help)
        help.snp.makeConstraints { maker in
            maker.right.equalTo(-70)
            maker.width.equalTo(22)
            maker.height.equalTo(22)
            maker.top.equalTo(51)
        }
        self.addLable()
//        self.addCard()
        addTableView()
        addBottomView()
    }

    func addLable() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(30)
            make.top.equalTo(100)
        }
    }

    private lazy var ad: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "ad")
        view.contentMode = .scaleAspectFit
        return view
    }()

    func addCard() {
        view.addSubview(ad)
        ad.snp.makeConstraints { maker in
            maker.right.equalTo(0)
            maker.left.equalTo(0)
            maker.height.equalTo(140)
            maker.top.equalTo(140)
        }
    }

    func addTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AdCell.self, forCellReuseIdentifier: cellId)
        tableView.reloadData()
        tableView.snp.makeConstraints { maker in
            maker.right.equalTo(0)
            maker.left.equalTo(0)
            maker.height.equalTo(200)
            maker.top.equalTo(140)
        }
    }

    func addBottomView() {
        self.view.addSubview(viewBottom)
        viewBottom.layer.cornerRadius = 27
        viewBottom.snp.makeConstraints { make in
            make.left.equalTo(60)
            make.right.equalTo(-60)
            make.height.equalTo(55)
            make.top.equalTo(380)
        }

        self.viewBottom.addSubview(callImage)
        callImage.snp.makeConstraints { make in
            make.left.equalTo(50)
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.top.equalTo(14)
        }

        self.viewBottom.addSubview(lableBottom)
        lableBottom.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            make.top.equalTo(0)
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)as! AdCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}


