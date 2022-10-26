//
//  FeedView.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

struct FeedView: View {
    @State private var isTitleLarge = true
    @State private var showDetail = false
    @State private var progress = 0.0
    @State private var searchText = ""
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)

                Text("Hello, world!")
                    .if(isTitleLarge) { view in
                        view.modifier(HeaderText())
                    } else: { view in
                        view.modifier(BodyText())
                    }

                Button("Toggle text size") {
                    isTitleLarge.toggle()
                }
                .buttonStyle(.borderedProminent)

                VStack {
                    HStack {
                        Text("Show details")
                            .font(.headline)

                        Spacer()

                        Button {
                            withAnimation {
                                showDetail.toggle()
                            }
                        } label: {
                            Label("Details", systemImage: "chevron.right.circle")
                                .labelStyle(.iconOnly)
                                .imageScale(.large)
                                .rotationEffect(.degrees(showDetail ? 90 : 0))
                                .scaleEffect(showDetail ? 1.5 : 1)
                                .padding()
                        }
                    }

                    if showDetail {
                        VStack(spacing: 20) {
                            NavigationLink {
                                Text("Many handy details")
                            } label: {
                                Text("Need more details?")
                            }

                            Text("Detail 2")
                            Text("Detail 3")
                            Slider(value: $progress)
                            Text("Value: \(progress)")
                        }
                    }
                }
                .padding(20)
            }
            .searchable(text: $searchText, prompt: "What do we search?")
            .onSubmit(of: .search) {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Order Complete"),
                      message: Text("Thank you for shopping with us."),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
