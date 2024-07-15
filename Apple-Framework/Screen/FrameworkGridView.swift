//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameGridViewModel()
    
    var body: some View {
        NavigationStack {
            List(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                isShowingDetailView: $viewModel.isShowingDetailView)) {
                    FrameworkTitleView(framework: framework)
                }
            }
            .navigationTitle("🍎 Frameworks")
            .listStyle(.plain)
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
