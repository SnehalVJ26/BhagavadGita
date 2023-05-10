//
//  ContentViewModel.swift
//  BhagavadGita
//
//  Created by mnameit on 10/05/23.
//

import Foundation

class ContentViewModel : ObservableObject {
    @Injected private var logger : BGLoggerType
    func onAppear() {
        logger.info("View is loaded")
    }
}
