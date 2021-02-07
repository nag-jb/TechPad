//
//  ViewController.swift
//  TechPad
//
//  Created by Sallivan James on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメソッドはViewControllクラスに書くよという設定
        table.dataSource = self
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfInSection section:Int) -> Int {
        return 10
    }
    
    //ID付きのセルを取得してセルフ属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }


}

