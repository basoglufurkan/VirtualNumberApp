//
//  InfoViewController.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class InfoViewController: UIViewController {
    let cellId = "InfoTableCell"
    var list: [CountryList] = [.uk, .usa, .mexico, .france]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.layout()
    }

    private lazy var setting: UIView = {
        let view = UIImageView()
        view.image = UIImage(named: "setting")
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var titleLabel: UIView = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20)
        view.text = "Numaralarım"
        return view
    }()

    private lazy var tableView: UITableView = {
        let view = UITableView()
        return view
    }()

    private func layout() {
        addSettingIcon()
        addLable()
        addTableView()
    }

    func addSettingIcon() {
        self.view.addSubview(setting)
        setting.snp.makeConstraints { maker in
            maker.right.equalTo(-20)
            maker.width.equalTo(40)
            maker.height.equalTo(40)
            maker.top.equalTo(40)
        }
    }

    func addLable() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(30)
            make.top.equalTo(100)
        }
    }

    func addTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(InfoTableCell.self, forCellReuseIdentifier: cellId)
        tableView.reloadData()
        tableView.snp.makeConstraints { maker in
            maker.right.equalTo(0)
            maker.left.equalTo(0)
            maker.height.equalTo(400)
            maker.top.equalTo(130)
        }
    }

}

extension InfoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)as! InfoTableCell
        cell.country = list[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
