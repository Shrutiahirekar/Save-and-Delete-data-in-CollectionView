//
//  ViewController.swift
//  SaveAndDeleteData
//
//  Created by Skroman iOS Developer on 23/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var employee_data = "abcd"
    var array_test = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func save_data(_ sender: Any) {
        
        let text = TextField.text!
        employee_data.append(text)
        
        let test_btn = employee_data.map(String.init)
        array_test = test_btn
        print(employee_data)
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        CollectionView.reloadData()
        
        
    }
    
    @IBAction func delete_data(_ sender: Any) {
        
        let employee = String(employee_data.count)
//        employee_data.removeAll()
        
        employee_data.removeLast()
        CollectionView.reloadData()
        
        
        
    }
    
    
}
    
    
    extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return employee_data.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell:UICollectionViewCell? = CollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            return cell!
        }
        
    }
    



