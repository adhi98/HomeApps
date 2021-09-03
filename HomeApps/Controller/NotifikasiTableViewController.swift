//
//  NotifikasiTableViewController.swift
//  HomeApps
//
//  Created by Muhammad Adhi on 17/08/21.
//

import UIKit

class NotifikasiTableViewController: UITableViewController {
    
    @IBOutlet var notifTableView: UITableView!
    var arrayNotifikasi = [NotifikasiModel]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //Adding Model
        arrayNotifikasi.append(NotifikasiModel(title: "Bank BJB", content: "Selamat, dana bantuan anda berhasil diterima!", time: "09.10"))
        arrayNotifikasi.append(NotifikasiModel(title: "Bank BJB", content: "Selamat, dana bantuan anda berhasil diterima!", time: "Yesterday"))
        arrayNotifikasi.append(NotifikasiModel(title: "Bank BJB", content: "Selamat, dana bantuan anda berhasil diterima!", time: "15Aug"))
        //inisialisasi Cell
        notifTableView.register(UINib(nibName: "NotifikasiTableViewCell", bundle: nil), forCellReuseIdentifier: "notifCell")
        
    }

    // MARK: - Table View Data Source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNotifikasi.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notifCell", for: indexPath) as! NotifikasiTableViewCell
        cell.titleMessage.text = arrayNotifikasi[indexPath.row].title
        cell.timeMessage.text = arrayNotifikasi[indexPath.row].time
        cell.contentMessage.text = arrayNotifikasi[indexPath.row].content
        cell.selectionStyle = .none
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 94
//    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }

    
}
