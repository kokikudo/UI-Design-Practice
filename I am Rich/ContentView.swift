//
//  ContentView.swift
//  I am Rich
//
//  Created by kudo koki on 2022/01/30.
//

import SwiftUI

let mainColor: UIColor = UIColor(red: 0.20, green: 0.29, blue: 0.37, alpha: 1.0)
let subColor: UIColor = UIColor(red: 0.80, green: 0.71, blue: 0.63, alpha: 1.00)

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(mainColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("kuromame")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Koki Kudo")
                    .foregroundColor(Color(subColor))
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+8190 1111 2222", imageText: "phone.fill")
                InfoView(text: "mailmail@gmail.com", imageText: "mail.fill")

            }
            /* カスタムフォントを使う手順
            1. プロジェクトルートにFontsファイルを作り、外部からダウンロードしたフォントデータを入れる
             2. プロジェクトを選択しinfoタブをクリックするとinfo.plistがあるので、Fonts provided by applicationを追加し、item0の値をフォントファイル名に設定
             3.　Textのfont属性にFont .custom(フォントファイル, サイズ)を定義

             */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}


