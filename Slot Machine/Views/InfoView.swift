//
//  InfoView.swift
//  Slot Machine
//
//  Created by Ash on 11/05/2024.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form{
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Copyright", secondItem: "2020 All rights reserved")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(alignment: .topTrailing) {
            Button {
                audioPlayer?.stop()
                self.pm.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(Color.secondary)
        }
        .onAppear(perform: {
            playSound(sound: "backgound-sound", type: "mp3")
        })
    }
}

#Preview {
    InfoView()
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    var body: some View {
        HStack {
            Text(firstItem).foregroundStyle(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}
