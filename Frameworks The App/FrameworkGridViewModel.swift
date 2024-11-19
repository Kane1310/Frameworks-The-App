//
//  FrameworkGridViewModel.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/11/19.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
