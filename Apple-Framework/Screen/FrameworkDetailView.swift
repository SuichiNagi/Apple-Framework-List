//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
        
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            DetailedBody(framework: framework)
            
            Spacer()
            
            LearnMoreButton(isShowingSafariView: $isShowingSafariView)
//            Button {
//                isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
//            .buttonBorderShape(.capsule)
//            .tint(.green)
            
            Spacer()
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
//            SafariView2(urlString: framework.urlString)
//                .ignoresSafeArea(edges: .bottom)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleData, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}

struct DetailedBody: View {
    
    let framework: Framework
    
    var body: some View {
        Text(framework.description)
            .font(.body)
            .padding()
    }
}

struct LearnMoreButton: View {
    
    @Binding var isShowingSafariView: Bool
    
    var body: some View {
        Button {
            isShowingSafariView = true
        } label: {
            //                AFButton(title: "Learn More")
            Label("Learn More", systemImage: "book.fill")
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .buttonBorderShape(.capsule)
        .tint(.green)
    }
}

