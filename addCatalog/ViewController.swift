//
//  ViewController.swift
//  addCatalog
//
//  Created by Sergio on 12/01/23.
//
// Este es un comentario desde la cuenta de LA MAS PERRA!!

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var tableData = [String]()
    var tableidData = [String]()
  //  var municipioData = [String]()
   // var municipioIdDdata = [String]()
    
    
    var table = "Edo"
  /*  var idEstado = "0"
    var txtEstado = ""
    var idMunicipio = "0"
    var txtMunicipio = ""*/
    
    
    
    //tipo de alerta
    var idParentesco = "0"
    var txtParentesco = ""

    @IBOutlet weak var listaEstados: UIButton!
    @IBOutlet weak var listaMunicipio: UIButton!
    
    //tipo de alerta
    @IBOutlet weak var listaParentesco: UIButton!
    
    //tipo de alerta
    @IBOutlet weak var showList: UIView!
    //tipo de alerta
    @IBOutlet weak var myTable: UITableView!
    
    //tipo de alerta
    @IBAction func showList(_ sender: Any) {
        
        showList.isHidden = true
        
    }
    
    
    @IBAction func buttonEdo(_ sender: Any) {
     /*
        showList.isHidden = false
                table = "Edo"
                let path = Bundle.main.path(forResource: "estados", ofType: "plist")!
                let dict = NSDictionary(contentsOfFile: path)
                
                tableData = dict!.object(forKey: "estado") as! [String]
                tableidData = dict!.object(forKey: "id_estado") as! [String]
                myTable.reloadData()
       */
        
    }
    
    
    @IBAction func buttonMun(_ sender: Any) {
      /*  table = "municipio"
        if txtEstado != ""{
            showList.isHidden = false
            
        }else{
            
            // create the alert
            let alert = UIAlertController(title: "MiGuardian", message: "Selecciona un Estado.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            alert.view.tintColor = UIColor.blue
            self.present(alert, animated: true, completion: nil)
        }
        */
    }
    
    
    //tipo de alerta
    @IBAction func buttonParen(_ sender: Any) {
        showList.isHidden = false
                table = "parentesco"
                let path = Bundle.main.path(forResource: "estados", ofType: "plist")!
                let dict = NSDictionary(contentsOfFile: path)
                myTable.delegate = self
                myTable.dataSource = self
                
                tableData = dict!.object(forKey: "Parentesco") as! [String]
                tableidData = dict!.object(forKey: "idParentesco") as! [String]
                myTable.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tipo de alerta
        myTable.delegate = self
        myTable.dataSource = self
        // Do any additional setup after loading the view.
    }


    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return tableData.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = tableData[indexPath.row].description
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("seleccionaste una celda " + tableidData[indexPath.row] + " " + tableData[indexPath.row])
            showList.isHidden = true
    
     //       if table == "Edo"{
             /*   idEstado = tableidData[indexPath.row]
                txtEstado = tableData[indexPath.row]
                listaEstados.setTitle(txtEstado, for: .normal)*/
                
                let path = Bundle.main.path(forResource: "estados", ofType: "plist")!
                let dict = NSDictionary(contentsOfFile: path)
            //    let municipioData2 = dict!.object(forKey: txtEstado)
           //     let data = municipioData2 as! NSDictionary
                
              //  municipioData = data.object(forKey: "municipio") as! [String]
             //   municipioIdDdata = data.object(forKey: "idmunicipio") as! [String]
             //   tableData = municipioData
              //  tableidData = municipioIdDdata
               // print (municipioData)
                myTable.reloadData()
                //cambiar texto
             //   listaMunicipio.setTitle("Municipio", for: .normal)
                
                
  //         }else if table == "municipio" {
             //  idMunicipio = tableidData[indexPath.row]
              //  txtMunicipio = tableData[indexPath.row]
              //  listaMunicipio.setTitle(txtMunicipio, for: .normal)
    //        }else {
               idParentesco = tableidData[indexPath.row]
                txtParentesco = tableData[indexPath.row]
                listaParentesco.setTitle(txtParentesco, for: .normal)
            }
  /*          tableView.deselectRow(at: indexPath, animated: true)
        }*/
}


