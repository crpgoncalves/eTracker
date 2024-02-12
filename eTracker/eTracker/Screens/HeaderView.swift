//
//  HeaderView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var navigationHelper: NavigationHelper

    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    var bgColor: Color
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                    Ellipse()
                    .fill(self.bgColor)
                    .frame(width: geometry.size.width * 1.4,
                           height: geometry.size.height * 0.45)
                    .position(x: geometry.size.width / 2.35,
                              y: 0)
                    .clipShape(Rectangle())
                    .shadow(radius: 10)
                
                HStack(alignment: .top) {
                    
                    Button {
                        navigationHelper.backToPrevious()
                    } label: {
                        Image(systemName: "arrow.left")
                          .frame(width: 25, height: 25)
                          .foregroundColor(.white)
                          .padding()
                    }
                    VStack(alignment: .leading) {
                        Text(self.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text(self.subtitle)
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    Spacer()

                }
                .padding(.leading, geometry.size.width * 0.04)
                .padding(.top, geometry.size.height * 0.08)
                Spacer()
            }.edgesIgnoringSafeArea(.all)
        }
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "groups", subtitle: "chooseGroupToConnect", bgColor: Color.black)
    }
}


/*
 Image("BackArrow")
   .resizable()
   .aspectRatio(contentMode: .fill)
   .frame(width: 150, height: 150)
   .clipShape(RoundedRectangle(cornerRadius: 20))
   .overlay {
     RoundedRectangle(cornerRadius: 20)
       .stroke(.white, lineWidth: 3)
   }
 */
