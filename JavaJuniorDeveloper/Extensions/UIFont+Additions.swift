//
//  UIFont+Additions.swift
//  JavaJuniorDeveloper
//
//  Created by Muller Alexander on 26.05.2022.
//

import UIKit

// MARK: -
extension UIFont {
    
    public static func preferredFont(for style: TextStyle, with partOfSymbolicTraits: UIFontDescriptor.PartOfSymbolicTraits = []) -> UIFont {
        let preferredFontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        var symbolicTraits: UIFontDescriptor.SymbolicTraits = []
        if partOfSymbolicTraits.contains(.traitItalic) { symbolicTraits.insert(.traitItalic) }
        if partOfSymbolicTraits.contains(.traitBold) { symbolicTraits.insert(.traitBold) }
        guard let descriptor = preferredFontDescriptor.withDesign(.default)?.withSymbolicTraits(symbolicTraits) else { preconditionFailure() }
        return .init(descriptor: descriptor, size: 0.0)
    }
    
    public static func monospacedSystemFont(for style: TextStyle, with partOfSymbolicTraits: UIFontDescriptor.PartOfSymbolicTraits = []) -> UIFont {
        let preferredFontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let monospacedDescriptor = UIFont.monospacedSystemFont(ofSize: preferredFontDescriptor.pointSize, weight: .regular).fontDescriptor
        var symbolicTraits: UIFontDescriptor.SymbolicTraits = []
        if partOfSymbolicTraits.contains(.traitItalic) { symbolicTraits.insert(.traitItalic) }
        if partOfSymbolicTraits.contains(.traitBold) { symbolicTraits.insert(.traitBold) }
        guard let descriptor = monospacedDescriptor.withSymbolicTraits(symbolicTraits) else { preconditionFailure() }
        return .init(descriptor: descriptor, size: 0.0)
    }
    
    public static func monospacedDigitSystemFont(for style: TextStyle, with partOfSymbolicTraits: UIFontDescriptor.PartOfSymbolicTraits = []) -> UIFont {
        let preferredFontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let monospacedDigitDescriptor = UIFont.monospacedDigitSystemFont(ofSize: preferredFontDescriptor.pointSize, weight: .regular).fontDescriptor
        var symbolicTraits: UIFontDescriptor.SymbolicTraits = []
        if partOfSymbolicTraits.contains(.traitItalic) { symbolicTraits.insert(.traitItalic) }
        if partOfSymbolicTraits.contains(.traitBold) { symbolicTraits.insert([.traitBold]) }
        guard let descriptor = monospacedDigitDescriptor.withSymbolicTraits(symbolicTraits) else { preconditionFailure() }
        return .init(descriptor: descriptor, size: 0.0)
    }
    
    public static func roundedSystemFont(for style: TextStyle,with partOfSymbolicTraits: UIFontDescriptor.PartOfSymbolicTraits = []) -> UIFont {
        let preferredFontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        var symbolicTraits: UIFontDescriptor.SymbolicTraits = []
        if partOfSymbolicTraits.contains(.traitItalic) { symbolicTraits.insert(.traitItalic) }
        if partOfSymbolicTraits.contains(.traitBold) { symbolicTraits.insert(.traitBold) }
        guard let descriptor = preferredFontDescriptor.withDesign(.rounded)?.withSymbolicTraits(symbolicTraits) else { preconditionFailure() }
        return .init(descriptor: descriptor, size: 0.0)
    }
    
    public static func serifSystemFont(for style: TextStyle, with partOfSymbolicTraits: UIFontDescriptor.PartOfSymbolicTraits = []) -> UIFont {
        let preferredFontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        var symbolicTraits: UIFontDescriptor.SymbolicTraits = []
        if partOfSymbolicTraits.contains(.traitItalic) { symbolicTraits.insert(.traitItalic) }
        if partOfSymbolicTraits.contains(.traitBold) { symbolicTraits.insert(.traitBold) }
        guard let descriptor = preferredFontDescriptor.withDesign(.serif)?.withSymbolicTraits(symbolicTraits) else { preconditionFailure() }
        return .init(descriptor: descriptor, size: 0.0)
    }
}

// MARK: -
extension UIFontDescriptor {
    
    public struct PartOfSymbolicTraits: OptionSet {
        
        public let rawValue: UInt32
        
        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }
        
        public static var traitItalic = Self(rawValue: 1 << 0)
        
        public static var traitBold = Self(rawValue: 1 << 1)
    }
}
