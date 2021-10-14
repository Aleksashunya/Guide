//
//  EventCalendarCollectionView.swift
//  Guide
//
//  Created by Александра Мельникова on 14.10.2021.
//

import SwiftUI

struct EventCalendarCollectionView: View {
//    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
//
//    private var colors: [Color] = [.yellow, .purple, .green]
//
//    private var gridItemLayout = [GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible())]
    var body: some View {
        Text("")
        
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<EventCalendarCellView.row) { i in
                HStack {
                    ForEach(0..<EventCalendarCellView.column) { j in
                        EventCalendarCellView().onTapGesture {
                            let index = i + j + (i * 2)
                            print(index)
                        }
                    }
                }
            }
        }
        
        
//        ScrollView {
//                LazyVGrid(columns: gridItemLayout, spacing: 10) {
//                    ForEach((0...31), id: \.self) {
//                        Image(systemName: symbols[$0 % symbols.count])
//                            .font(.system(size: 30))
//                            .frame(width: 50, height: 50)
//                            .background(colors[$0 % colors.count])
//                            .cornerRadius(10)
//                    }
//                }
//            }
//        }
    }
}


struct EventCalendarCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventCalendarCollectionView()
    }
}
