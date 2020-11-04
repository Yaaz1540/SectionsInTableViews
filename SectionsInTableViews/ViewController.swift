//
//  ViewController.swift
//  SectionsInTableViews
//
//  Created by HAJI on 11/4/20.
//

import UIKit

class MobileBrand {
    var brandName: String
    var modelName: [String]
    
    init(brandName: String, modelName: [String]) {
        self.brandName = brandName
        self.modelName = modelName
        
    }
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    
    var mobileBrand = [MobileBrand]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mobileBrand.append(MobileBrand.init(brandName: "Apple", modelName: ["iPhone 6", "iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus", "iPhone 7", "iPhone 7 Plus", "iPhone 8", "iPhone 8 Plus", "iPhone 9", "iPhone 9 Plus", "iPhone 10"]))
        mobileBrand.append(MobileBrand.init(brandName: "Samsung", modelName: ["Samsung 14", "Samsung Galaxy Note 9", "Samsung Galaxy 9 Plus", "Samsung Galaxy Note 10", "Samsung Galaxy Note 10 Plus"]))
        mobileBrand.append(MobileBrand.init(brandName: "Nokia", modelName: ["Nokia Note 7", "Nokia Note 8", "Nokia Note 10", "Nokia Note 11", "Nokia Note 12", "Nokia Note 13"]))
        mobileBrand.append(MobileBrand.init(brandName: "Huawei", modelName: ["Huawei Mate 20", "Huawei P30 Pro", "Huawei P10 Plus", "Huawei P20"]))
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mobileBrand.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  mobileBrand[section].modelName.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = mobileBrand[indexPath.section].modelName[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mobileBrand[section].brandName
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width , height: tableView.frame.height))
        view.backgroundColor = .lightGray
        
        let lbl = UILabel(frame: CGRect(x: 15, y: 0 , width: tableView.frame.width, height: 40))
        lbl.text = mobileBrand[section].brandName
        lbl.font = .boldSystemFont(ofSize: 20)
        view.addSubview(lbl)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section==0){
            return 40.0;
        }
        else if(section==1){
            return 40.0;
        }
        else{
            return 40.0;
        }
        
    }
}
