//
//  WebViewController.swift
//  simpleWebView
//
//  Created by zac on 2015/04/26.
//  Copyright (c) 2015年 zac. All rights reserved.
//

import UIKit
import Social

class WebViewController: UIViewController, UIWebViewDelegate {

    // StoryBoardで配置したwebViewのプロパティ
    @IBOutlet weak var webView: UIWebView!
    
    // 初期URL
    //let initialUrl = URL(string: "https://www.google.co.jp")
    let initialUrl = URL(string: "http://aliyun.zhongyeyuan.com.cn/znb/")

    /* 最初の表示時に呼ばれるメソッド */
    override func viewDidLoad() {
        super.viewDidLoad()

        // webViewのデリゲートを設定
         self.webView.delegate = self
        
        // 初期URLで読み込み
        let request = URLRequest(url: initialUrl!)
        self.webView.loadRequest(request)
    }
    
    /* 戻るボタン押下時に呼ばれるメソッド */
    @IBAction func prevBtn(_ sender: AnyObject) {
        
        if self.webView.canGoBack {
            self.webView.goBack() // 戻る
        }
    }
    
    /* 進むボタン押下時に呼ばれるメソッド */
    @IBAction func nextBtn(_ sender: AnyObject) {
        
        if self.webView.canGoForward {
            self.webView.goForward() // 進む
        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
