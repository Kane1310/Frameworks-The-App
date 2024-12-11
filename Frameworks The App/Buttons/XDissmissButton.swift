//
//  XDissmissButton.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/12/11.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View{
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
       
    }
}

#Preview {
    XDissmissButton(isShowingDetailView: .constant(false))
}
