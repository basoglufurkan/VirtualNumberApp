//
//  ChatViewController.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class ChatViewController: UIViewController {

    let list: [CountryList] = [.uk, .usa, .france, .mexico, .portugal, .philipinse, .vietnam]
    let cellId = "MessagesListCell"
    private lazy var setting: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "setting")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var leftArrow: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "leftArrow")
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
        view.text = "Yeni Numara Al"
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
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

        self.view.addSubview(leftArrow)
        leftArrow.snp.makeConstraints { maker in
            maker.width.equalTo(40)
            maker.height.equalTo(40)
            maker.top.equalTo(40)
            maker.left.equalTo(20)
        }
        self.addLable()
        addTableView()
    }

    func addLable() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(30)
            make.top.equalTo(100)
        }
    }

    private lazy var tableView: UITableView = {
        let view = UITableView()
        return view
    }()

    func addTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MessagesListCell.self, forCellReuseIdentifier: cellId)
        tableView.reloadData()
        tableView.snp.makeConstraints { maker in
            maker.right.equalTo(0)
            maker.left.equalTo(0)
            maker.bottom.equalTo(0)
            maker.top.equalTo(130)
        }
    }

}

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)as! MessagesListCell
        cell.country = list[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
