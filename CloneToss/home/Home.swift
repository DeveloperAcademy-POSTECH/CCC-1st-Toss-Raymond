//
//  Home.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/04.
//

import SwiftUI

struct Home: View {
    let inset = EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)

    var body: some View {
        ScrollView {
            mainCell
            assetCell
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                HStack(spacing: 20) {
                Image(systemName: "message.fill")
                Image(systemName: "bell.fill")
                }
            }
        }
    }
    
    var assetCell: some View {
        VStack(spacing: 30) {
            CellHeadline(title: "자산")
            CellItem(image: "symbol-sinhan", subTitle: "신한은행 계좌", title: "300000", buttonExist: true)
            CellItem(image: "symbol-sinhan", subTitle: "WINGO 통장", title: "900200", buttonExist: true)
            Divider()
            CellItem(image: "symbol-toss-blue", subTitle: "토스증권", title: "1623000", buttonExist: true)
            CellItem(image: "symbol-toss-blue", subTitle: "페이머니", title: "잔액 내역 불러오기", buttonExist: false)
        }
        .padding(inset)
        .background(
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .shadow(color: .gray, radius: 5)
        )
        .padding(.horizontal, 15)


    }
    
    var mainCell: some View {
        VStack(spacing: 30) {
            CellHeadline(title: "토스뱅크")
            CellItem(image: "bell", subTitle: "7월 1일 대출 규제 변경", title: "새 대출한도를 확인해보세요", buttonExist: false)
        }
        .padding(inset)
        .background(
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .shadow(color: .gray, radius: 5)
        )
        .padding(15)

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
