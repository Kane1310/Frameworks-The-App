//
//  FrameworksButton.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/11/19.
//

import SwiftUI

struct FrameworksButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 280, height: 60, alignment: .center)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    FrameworksButton(title: "test title")
}

