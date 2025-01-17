//
//  DescisionView.swift
//  Batch21LiefrandoLogin
//
//  Created by Till Hemmerich on 19.12.24.
//

import SwiftUI

struct DecisionView: View {
    @Binding var isRestuarant : Bool
    @Binding var isCustomer : Bool 
    var body: some View {
        HStack{
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white,lineWidth: isRestuarant ? 3 : 1)
                    .frame(width: 125,height: 125)
                Image(systemName: "fork.knife")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .foregroundStyle(.white)
                    .scaleEffect(isRestuarant ? 1.3 : 1)
                    .padding(.horizontal,8)
            }.onTapGesture {
                withAnimation {
                    isRestuarant = true
                    isCustomer = false
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: isCustomer ? 3 : 1)
                    .frame(width: 125,height: 125)
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .foregroundStyle(.white)
                    .scaleEffect(isCustomer ? 1.3 : 1)
            }
            .padding(.horizontal,8)
            .onTapGesture {
                withAnimation() {
                    isRestuarant = false
                    isCustomer = true
                }
            }

        }
    }
}

#Preview {
    DecisionView(isRestuarant: .constant(true), isCustomer: .constant(false))
}
