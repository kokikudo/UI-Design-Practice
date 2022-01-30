//
//  InfoView.swift
//  I am Rich
//
//  Created by kudo koki on 2022/01/30.
//

import SwiftUI

struct InfoView: View {

    let text: String
    let imageText: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageText)
                        .foregroundColor(Color(mainColor))
                    Text(text)
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "test", imageText: "phone.fill")
            .previewLayout(.sizeThatFits)
        // コンテンツの表示領域のみプレビュー
    }
}
