//
//  TextStyle+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker
import UIKit

private extension TextTransform {

    init(string: String) {
        switch string {
        case "none":
            self = .none
        case "lowercased":
            self = .lowercased
        case "uppercased":
            self = .uppercased
        case "capitalized":
            self = .capitalized
        default:
            self = .none
        }
    }

}

private extension NSTextAlignment {

    static func fromString(string: String) -> NSTextAlignment? {
        switch string {
        case "left":
            return NSTextAlignment.left
        case "center":
            return NSTextAlignment.center
        case "right":
            return NSTextAlignment.right
        default:
            return nil
        }
    }

}

private extension NSLineBreakMode {

    static func fromString(string: String) -> NSLineBreakMode? {
        switch string {
        case "byWordWrapping":
            return NSLineBreakMode.byWordWrapping
        case "byCharWrapping":
            return NSLineBreakMode.byCharWrapping
        case "byClipping":
            return NSLineBreakMode.byClipping
        case "byTruncatingHead":
            return NSLineBreakMode.byTruncatingHead
        case "​​byTruncatingTail":
            return NSLineBreakMode.byTruncatingTail
        case "byTruncatingMiddle":
            return NSLineBreakMode.byTruncatingMiddle
        default:
            return nil
        }
    }
}

private extension NSUnderlineStyle {

    static func fromString(string: String) -> NSUnderlineStyle? {
        switch string {
        case "none":
            return nil
        case "single":
            return NSUnderlineStyle.single
        case "thick":
            return NSUnderlineStyle.thick
        case "double":
            return NSUnderlineStyle.double
        case "patternSolid":
            return nil
        case "patternDot":
            return NSUnderlineStyle.patternDot
        case "patternDash":
            return NSUnderlineStyle.patternDash
        case "patternDashDot":
            return NSUnderlineStyle.patternDashDot
        case "patternDashDotDot":
            return NSUnderlineStyle.patternDashDotDot
        case "byWord":
            return NSUnderlineStyle.byWord
        default:
            return nil
        }
    }
}

extension TextStyle {

    init?(json: JSON) {
        guard let fontNameJSON = json["fonts"] as? JSON,
            let normalFontName = fontNameJSON["normal"] as? String,
            let textSize = json["textSize"] as? CGFloat else {
                return nil
        }

        guard let font = UIFont(name: normalFontName, size: textSize) else {
            return nil
        }

        var emFont: UIFont?
        var strongFont: UIFont?
        var textColor: UIColor?
        var characterSpacing: CGFloat?
        var lineSpacing: CGFloat?
        var lineHeightMultiple: CGFloat?
        var minimumLineHeight: CGFloat?
        var maximumLineHeight: CGFloat?
        var paragraphSpacing: CGFloat?
        var paragraphSpacingBefore: CGFloat?
        var textAlignment: NSTextAlignment?
        var lineBreakMode: NSLineBreakMode?
        var strikethroughStyle: NSUnderlineStyle?
        var strikethroughColor: UIColor?
        var textTransform: TextTransform = .none

        if let emFontName = fontNameJSON["emphasis"] as? String {
            emFont = UIFont(name: emFontName, size: textSize)
        }

        if let strongFontName = fontNameJSON["strong"] as? String {
            strongFont = UIFont(name: strongFontName, size: textSize)
        }

        if let textColorJSON = json["color"] as? JSON {
            textColor = UIColor(json: textColorJSON)
        }

        if let letterSpacing = json["letterSpacing"] as? CGFloat {
            characterSpacing = letterSpacing
        }

        if let spacing = json["lineSpacing"] as? CGFloat {
            lineSpacing = spacing
        }

        if let lineHeight = json["lineHeightMultiple"] as? CGFloat {
            lineHeightMultiple = lineHeight
        }

        if let minLineHeight = json["minimumLineHeight"] as? CGFloat {
            minimumLineHeight = minLineHeight
        }

        if let maxLineHeight = json["maximumLineHeight"] as? CGFloat {
            maximumLineHeight = maxLineHeight
        }

        if let paragraphSpace = json["paragraphSpacing"] as? CGFloat {
            paragraphSpacing = paragraphSpace
        }

        if let paragraphSpaceBefore = json["paragraphSpacingBefore"] as? CGFloat {
            paragraphSpacingBefore = paragraphSpaceBefore
        }

        if let textAlignmentString = json["textAlign"] as? String {
            textAlignment = NSTextAlignment.fromString(string: textAlignmentString)
        }

        if let lineBreakModeString = json["lineBreakMode"] as? String {
            lineBreakMode = NSLineBreakMode.fromString(string: lineBreakModeString)
        }

        if let strikethroughStyleString = json["strikethroughStyle"] as? String {
            strikethroughStyle = NSUnderlineStyle.fromString(string: strikethroughStyleString)
        }

        if let transform = json["textTransform"] as? String {
            textTransform = TextTransform(string: transform)
        }

        if let strikethroughColorJSON = json["textDecorationColor"] as? JSON {
            strikethroughColor = UIColor(json: strikethroughColorJSON)
        }

        self.init(font: font,
                  emFont: emFont,
                  strongFont: strongFont,
                  textColor: textColor,
                  characterSpacing: characterSpacing,
                  lineSpacing: lineSpacing,
                  lineHeightMultiple: lineHeightMultiple,
                  minimumLineHeight: minimumLineHeight,
                  maximumLineHeight: maximumLineHeight,
                  paragraphSpacing: paragraphSpacing,
                  paragraphSpacingBefore: paragraphSpacingBefore,
                  textAlignment: textAlignment,
                  lineBreakMode: lineBreakMode,
                  strikethroughStyle: strikethroughStyle,
                  strikethroughColor: strikethroughColor,
                  textTransform: textTransform)
    }

}
