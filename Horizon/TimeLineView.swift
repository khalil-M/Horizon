//
//  TimeLineView.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI

struct TimeLineView: View {
    var body: some View {
        VStack {
            listView
                .background(Color.red)
        }
    }
}

private var listView: some View {
    ScrollViewReader { proxy in
        List {
            scrollToTopView
        }
    }
}

private var scrollToTopView: some View {
    ScrollToView()
        .frame(height: 200)
}

#Preview {
    TimeLineView()
}


