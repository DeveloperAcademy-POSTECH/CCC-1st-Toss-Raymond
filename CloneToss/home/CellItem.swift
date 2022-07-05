//
//  AssetCellItem.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/05.
//

import SwiftUI

extension Home {
    struct CellItem: View {
        
        private let image: String
        private let subTitle: String
        private let title: String
        private let buttonExist: Bool
        
        init(image: String, subTitle: String, title: String, buttonExist: Bool) {
            self.image = image
            self.subTitle = subTitle
            self.title = title
            self.buttonExist = buttonExist
        }
        
        var body: some View {
            HStack(spacing: 20) {
                imageArea
                textArea
                if buttonExist {
                    Spacer()
                    buttonArea
                }
            }
        }
        
        //MARK: - viewbuilder variable
        
        var imageArea: some View {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            }
        
        var textArea: some View {
            VStack(alignment: .leading, spacing: 5) {
                Text(subTitle)
                    .font(.subheadline)
                makeTitleText(title: title)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
        
        @ViewBuilder
        var buttonArea: some View {
            let inset = EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
            Button(action: {
                //TODO: 함수
            }) {
                Text("송금")
                    .foregroundColor(.black)
                    .padding(inset)
                    .background(
                        RoundedRectangle(cornerRadius: 7)
                            .foregroundColor(Color.gray.opacity(0.2))
                    )
            }
        }
        
        //MARK: - viewbuilder function
        private func makeTitleText(title: String) -> Text {
            guard Int(title) != nil else { return Text(title) }
            return Text("\(title.commaFormatted)원")
        }
    }
}

struct AssetCellItem_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
