//
//  NextViewController.swift
//  SwiftProduct102
//
//  Created by 宏輝 on 07/10/2019.
//  Copyright © 2019 Hiroki Kondo. All rights reserved.
//



//cocoapodがインポートできないので全て推測で打っています。

import UIKit
import GLScratchCard

class NextViewController: UIViewController {

    
    //最初の画面遷移した直後に、スクラッチを出す
    override func viewDidLoad() {
        super.viewDidLoad()

        let controller = GLScratchCardController()
        controller.scratchCardView.addDelegate(delegate: self)
        
        controller.scratchCardView.bottomLayerView = UIImageView(image: UIImage(named: "cash_back"))
        controller.scratchCardView.topLayerImage = UIImage(named:"scratch_image")!
        
         controller.presentScratchController()
    }

    
    //再び読み込まれた時に、再度スクラッチ画面を出す。
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let controller = GLScratchCardController()
        controller.scratchCardView.addDelegate(delegate: self)
        
        controller.scratchCardView.bottomLayerView = UIImageView(image: UIImage(named: "cash_back"))
        controller.scratchCardView.topLayerImage = UIImage(named:"scratch_image")!
        
        controller.presentScratchController()
        
    }
    
    

    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
