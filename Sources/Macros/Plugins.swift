import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct Plugins: CompilerPlugin {
    let providingMacros: [Macro.Type] = {
        var macros: [Macro.Type] = [
            URLMacro.self,
            AssociatedValuesMacro.self,
            SingletonMacro.self,
        ]
#if canImport(UIKit) || canImport(AppKit)
        macros.append(SymbolMacro.self)
#endif
        return macros
    }()
}
