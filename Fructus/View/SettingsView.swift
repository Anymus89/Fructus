//
//  SettingsView.swift
//  Fructus
//
//  Created by Manuel Martinez on 03/07/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox (
                     label:
                        HStack {
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        }
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in ft, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and minerals")
                                .font(.footnote)
                        }
                    }

                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customitazion", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Button {
                            isOnboarding.toggle()
                        } label: {
                            HStack {
                                Text("Restart".uppercased())
                                Image(systemName: "repeat.circle")
                                    .imageScale(.large)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 5)
                            .background(
                                Capsule()
                                    .strokeBorder(Color.primary, lineWidth: 1.25)
                            )
                        }

                    }
                    
                    // MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Aplication", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Manuel Martínez (Wally)")
                        SettingsRowView(name: "Portfolio", linkLabel: "Repositoy", linkDestination: "github.com/Anymus89")
                        SettingsRowView(name: "Contact me", linkLabel: "Instagram", linkDestination: "instagram.com/anymus89")
                    }// Box
                }
                .navigationTitle(Text("Information"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            }// Scroll
        }// NavView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
