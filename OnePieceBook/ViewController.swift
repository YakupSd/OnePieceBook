//
//  ViewController.swift
//  OnePieceBook
//
//  Created by Yakup Suda on 3.12.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var myOneArray = [onepiece]()
    var chosenOne : onepiece?
    var chosenOneyet : onepiece?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        //Onepiece Objects
        let luffy = onepiece(oneName: "Monkey D. Luffy", oneskils: "Captain", oneimage: UIImage(named: "luffy")!, onetitle: .Captain)
        let zoro = onepiece(oneName: "Roronoa Zoro", oneskils: "SwordMaster", oneimage: UIImage(named: "zoro")!, onetitle: .ViceCaptain)
        let sanji = onepiece(oneName: "Vinsmoke Sanji", oneskils: "Monster Trio", oneimage: UIImage(named: "sanji")!, onetitle: .Chef)
        let nami = onepiece(oneName: "Nami", oneskils: "Thief", oneimage: UIImage(named: "nami")!, onetitle: .Navigator)
        let robin = onepiece(oneName: "Nico Robin", oneskils: "Devils Boy", oneimage: UIImage(named: "robin")!, onetitle: .Archaeologist)
        let usopp = onepiece(oneName: "Usopp", oneskils: "Sniper", oneimage: UIImage(named: "usopp")!, onetitle: .Lier)
        let chopper = onepiece(oneName: "Tony Tony Chopper", oneskils: "Cute", oneimage: UIImage(named: "chopper")!, onetitle: .Doctor)
        
        
        myOneArray.append(luffy)
        myOneArray.append(zoro)
        myOneArray.append(sanji)
        myOneArray.append(nami)
        myOneArray.append(robin)
        myOneArray.append(usopp)
        myOneArray.append(chopper)
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myOneArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myOneArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenOne = myOneArray[indexPath.row]
        chosenOneyet =  myOneArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selecetedOne = chosenOne
            destinationVC.selectedYet = chosenOneyet?.title
        }
    }


}

