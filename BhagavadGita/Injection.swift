//
//  Injection.swift
//  BhagavadGita
//
//  Created by mnameit on 10/05/23.
//

import Foundation
import Swinject

final class Injection {
    static let shared = Injection()
    private var _container: Container?
    var container: Container {
        get {
            if _container == nil {
                _container = buildContainer()
            }
            return _container!
        }
        set {
            _container = newValue
        }
    }
    
    private func buildContainer() -> Container {
        let container = Container()
        container.register(BGLoggerType.self) { _ in
            return BGLogger()
        }
        return container
    }
}

@propertyWrapper struct Injected<Dependancy> {
    let wrappedValue : Dependancy
    init() {
        self.wrappedValue = Injection.shared.container.resolve(Dependancy.self)!
    }
}
