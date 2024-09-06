//
//  LayerTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Kumi layer theme.

public struct LayerTheme {

    /// Empty Layer Style.
    public var emptyLayerStyle: LayerStyle?

    /// Primary Normal Layer Style.
    public var primaryNormalLayerStyle: LayerStyle?

    /// Primary Hightlighted Layer Style.
    public var primaryHightlightedLayerStyle: LayerStyle?

    /// Primary Focused Layer Style.
    public var primaryFocusedLayerStyle: LayerStyle?

    /// Primary Selected Layer Style.
    public var primarySelectedLayerStyle: LayerStyle?

    /// Primary Diabled Layer Style.
    public var primaryDiabledLayerStyle: LayerStyle?

    /// Secondary Normal Layer Style.
    public var secondaryNormalLayerStyle: LayerStyle?

    /// Secondary Hightlighted Layer Style.
    public var secondaryHightlightedLayerStyle: LayerStyle?

    /// Secondary Focused Layer Style.
    public var secondaryFocusedLayerStyle: LayerStyle?

    /// Secondary Selected Layer Style.
    public var secondarySelectedLayerStyle: LayerStyle?

    /// Secondary Diabled Layer Style.
    public var secondaryDiabledLayerStyle: LayerStyle?

    /// Tertiary Normal Layer Style.
    public var tertiaryNormalLayerStyle: LayerStyle?

    /// Tertiary Hightlighted Layer Style.
    public var tertiaryHightlightedLayerStyle: LayerStyle?

    /// Tertiary Focused Layer Style.
    public var tertiaryFocusedLayerStyle: LayerStyle?

    /// Tertiary Selected Layer Style.
    public var tertiarySelectedLayerStyle: LayerStyle?

    /// Tertiary Diabled Layer Style.
    public var tertiaryDiabledLayerStyle: LayerStyle?

    /// Button Primary Normal Layer Style.
    public var buttonPrimaryNormalLayerStyle: LayerStyle?

    /// Button Primary Hightlighted Layer Style.
    public var buttonPrimaryHightlightedLayerStyle: LayerStyle?

    /// Button Primary Focused Layer Style.
    public var buttonPrimaryFocusedLayerStyle: LayerStyle?

    /// Button Primary Selected Layer Style.
    public var buttonPrimarySelectedLayerStyle: LayerStyle?

    /// Button Primary Diabled Layer Style.
    public var buttonPrimaryDiabledLayerStyle: LayerStyle?

    /// Button Secondary Normal Layer Style.
    public var buttonSecondaryNormalLayerStyle: LayerStyle?

    /// Button Secondary Hightlighted Layer Style.
    public var buttonSecondaryHightlightedLayerStyle: LayerStyle?

    /// Button Secondary Focused Layer Style.
    public var buttonSecondaryFocusedLayerStyle: LayerStyle?

    /// Button Secondary Selected Layer Style.
    public var buttonSecondarySelectedLayerStyle: LayerStyle?

    /// Button Secondary Diabled Layer Style.
    public var buttonSecondaryDiabledLayerStyle: LayerStyle?

    /// Button Tertiary Normal Layer Style.
    public var buttonTertiaryNormalLayerStyle: LayerStyle?

    /// Button Tertiary Hightlighted Layer Style.
    public var buttonTertiaryHightlightedLayerStyle: LayerStyle?

    /// Button Tertiary Focused Layer Style.
    public var buttonTertiaryFocusedLayerStyle: LayerStyle?

    /// Button Tertiary Selected Layer Style.
    public var buttonTertiarySelectedLayerStyle: LayerStyle?

    /// Button Tertiary Diabled Layer Style.
    public var buttonTertiaryDiabledLayerStyle: LayerStyle?

    /// Grid Primary Normal Layer Style.
    public var gridPrimaryNormalLayerStyle: LayerStyle?

    /// Grid Primary Hightlighted Layer Style.
    public var gridPrimaryHightlightedLayerStyle: LayerStyle?

    /// Grid Primary Focused Layer Style.
    public var gridPrimaryFocusedLayerStyle: LayerStyle?

    /// Grid Primary Selected Layer Style.
    public var gridPrimarySelectedLayerStyle: LayerStyle?

    /// Grid Primary Diabled Layer Style.
    public var gridPrimaryDiabledLayerStyle: LayerStyle?

    /// Grid Secondary Normal Layer Style.
    public var gridSecondaryNormalLayerStyle: LayerStyle?

    /// Grid Secondary Hightlighted Layer Style.
    public var gridSecondaryHightlightedLayerStyle: LayerStyle?

    /// Grid Secondary Focused Layer Style.
    public var gridSecondaryFocusedLayerStyle: LayerStyle?

    /// Grid Secondary Selected Layer Style.
    public var gridSecondarySelectedLayerStyle: LayerStyle?

    /// Grid Secondary Diabled Layer Style.
    public var gridSecondaryDiabledLayerStyle: LayerStyle?

    /// Grid Tertiary Normal Layer Style.
    public var gridTertiaryNormalLayerStyle: LayerStyle?

    /// Grid Tertiary Hightlighted Layer Style.
    public var gridTertiaryHightlightedLayerStyle: LayerStyle?

    /// Grid Tertiary Focused Layer Style.
    public var gridTertiaryFocusedLayerStyle: LayerStyle?

    /// Grid Tertiary Selected Layer Style.
    public var gridTertiarySelectedLayerStyle: LayerStyle?

    /// Grid Tertiary Diabled Layer Style.
    public var gridTertiaryDiabledLayerStyle: LayerStyle?

    /// List Primary Normal Layer Style.
    public var listPrimaryNormalLayerStyle: LayerStyle?

    /// List Primary Hightlighted Layer Style.
    public var listPrimaryHightlightedLayerStyle: LayerStyle?

    /// List Primary Focused Layer Style.
    public var listPrimaryFocusedLayerStyle: LayerStyle?

    /// List Primary Selected Layer Style.
    public var listPrimarySelectedLayerStyle: LayerStyle?

    /// List Primary Diabled Layer Style.
    public var listPrimaryDiabledLayerStyle: LayerStyle?

    /// List Secondary Normal Layer Style.
    public var listSecondaryNormalLayerStyle: LayerStyle?

    /// List Secondary Hightlighted Layer Style.
    public var listSecondaryHightlightedLayerStyle: LayerStyle?

    /// List Secondary Focused Layer Style.
    public var listSecondaryFocusedLayerStyle: LayerStyle?

    /// List Secondary Selected Layer Style.
    public var listSecondarySelectedLayerStyle: LayerStyle?

    /// List Secondary Diabled Layer Style.
    public var listSecondaryDiabledLayerStyle: LayerStyle?

    /// List Tertiary Normal Layer Style.
    public var listTertiaryNormalLayerStyle: LayerStyle?

    /// List Tertiary Hightlighted Layer Style.
    public var listTertiaryHightlightedLayerStyle: LayerStyle?

    /// List Tertiary Focused Layer Style.
    public var listTertiaryFocusedLayerStyle: LayerStyle?

    /// List Tertiary Selected Layer Style.
    public var listTertiarySelectedLayerStyle: LayerStyle?

    /// List Tertiary Diabled Layer Style.
    public var listTertiaryDiabledLayerStyle: LayerStyle?

    public init?(json: JSON) {

        if let emptyJSON = json["empty"] as? JSON {
            emptyLayerStyle = LayerStyle(json: emptyJSON)
        }

        if let primaryNormalJSON = json["primaryNormal"] as? JSON {
            primaryNormalLayerStyle = LayerStyle(json: primaryNormalJSON)
        }

        if let primaryHightlightedJSON = json["primaryHightlighted"] as? JSON {
            primaryHightlightedLayerStyle = LayerStyle(json: primaryHightlightedJSON)
        }

        if let primaryFocusedJSON = json["primaryFocused"] as? JSON {
            primaryFocusedLayerStyle = LayerStyle(json: primaryFocusedJSON)
        }

        if let primarySelectedJSON = json["primarySelected"] as? JSON {
            primarySelectedLayerStyle = LayerStyle(json: primarySelectedJSON)
        }

        if let primaryDiabledJSON = json["primaryDiabled"] as? JSON {
            primaryDiabledLayerStyle = LayerStyle(json: primaryDiabledJSON)
        }

        if let secondaryNormalJSON = json["secondaryNormal"] as? JSON {
            secondaryNormalLayerStyle = LayerStyle(json: secondaryNormalJSON)
        }

        if let secondaryHightlightedJSON = json["secondaryHightlighted"] as? JSON {
            secondaryHightlightedLayerStyle = LayerStyle(json: secondaryHightlightedJSON)
        }

        if let secondaryFocusedJSON = json["secondaryFocused"] as? JSON {
            secondaryFocusedLayerStyle = LayerStyle(json: secondaryFocusedJSON)
        }

        if let secondarySelectedJSON = json["secondarySelected"] as? JSON {
            secondarySelectedLayerStyle = LayerStyle(json: secondarySelectedJSON)
        }

        if let secondaryDiabledJSON = json["secondaryDiabled"] as? JSON {
            secondaryDiabledLayerStyle = LayerStyle(json: secondaryDiabledJSON)
        }

        if let tertiaryNormalJSON = json["tertiaryNormal"] as? JSON {
            tertiaryNormalLayerStyle = LayerStyle(json: tertiaryNormalJSON)
        }

        if let tertiaryHightlightedJSON = json["tertiaryHightlighted"] as? JSON {
            tertiaryHightlightedLayerStyle = LayerStyle(json: tertiaryHightlightedJSON)
        }

        if let tertiaryFocusedJSON = json["tertiaryFocused"] as? JSON {
            tertiaryFocusedLayerStyle = LayerStyle(json: tertiaryFocusedJSON)
        }

        if let tertiarySelectedJSON = json["tertiarySelected"] as? JSON {
            tertiarySelectedLayerStyle = LayerStyle(json: tertiarySelectedJSON)
        }

        if let tertiaryDiabledJSON = json["tertiaryDiabled"] as? JSON {
            tertiaryDiabledLayerStyle = LayerStyle(json: tertiaryDiabledJSON)
        }

        if let buttonPrimaryNormalJSON = json["buttonPrimaryNormal"] as? JSON {
            buttonPrimaryNormalLayerStyle = LayerStyle(json: buttonPrimaryNormalJSON)
        }

        if let buttonPrimaryHightlightedJSON = json["buttonPrimaryHightlighted"] as? JSON {
            buttonPrimaryHightlightedLayerStyle = LayerStyle(json: buttonPrimaryHightlightedJSON)
        }

        if let buttonPrimaryFocusedJSON = json["buttonPrimaryFocused"] as? JSON {
            buttonPrimaryFocusedLayerStyle = LayerStyle(json: buttonPrimaryFocusedJSON)
        }

        if let buttonPrimarySelectedJSON = json["buttonPrimarySelected"] as? JSON {
            buttonPrimarySelectedLayerStyle = LayerStyle(json: buttonPrimarySelectedJSON)
        }

        if let buttonPrimaryDiabledJSON = json["buttonPrimaryDiabled"] as? JSON {
            buttonPrimaryDiabledLayerStyle = LayerStyle(json: buttonPrimaryDiabledJSON)
        }

        if let buttonSecondaryNormalJSON = json["buttonSecondaryNormal"] as? JSON {
            buttonSecondaryNormalLayerStyle = LayerStyle(json: buttonSecondaryNormalJSON)
        }

        if let buttonSecondaryHightlightedJSON = json["buttonSecondaryHightlighted"] as? JSON {
            buttonSecondaryHightlightedLayerStyle = LayerStyle(json: buttonSecondaryHightlightedJSON)
        }

        if let buttonSecondaryFocusedJSON = json["buttonSecondaryFocused"] as? JSON {
            buttonSecondaryFocusedLayerStyle = LayerStyle(json: buttonSecondaryFocusedJSON)
        }

        if let buttonSecondarySelectedJSON = json["buttonSecondarySelected"] as? JSON {
            buttonSecondarySelectedLayerStyle = LayerStyle(json: buttonSecondarySelectedJSON)
        }

        if let buttonSecondaryDiabledJSON = json["buttonSecondaryDiabled"] as? JSON {
            buttonSecondaryDiabledLayerStyle = LayerStyle(json: buttonSecondaryDiabledJSON)
        }

        if let buttonTertiaryNormalJSON = json["buttonTertiaryNormal"] as? JSON {
            buttonTertiaryNormalLayerStyle = LayerStyle(json: buttonTertiaryNormalJSON)
        }

        if let buttonTertiaryHightlightedJSON = json["buttonTertiaryHightlighted"] as? JSON {
            buttonTertiaryHightlightedLayerStyle = LayerStyle(json: buttonTertiaryHightlightedJSON)
        }

        if let buttonTertiaryFocusedJSON = json["buttonTertiaryFocused"] as? JSON {
            buttonTertiaryFocusedLayerStyle = LayerStyle(json: buttonTertiaryFocusedJSON)
        }

        if let buttonTertiarySelectedJSON = json["buttonTertiarySelected"] as? JSON {
            buttonTertiarySelectedLayerStyle = LayerStyle(json: buttonTertiarySelectedJSON)
        }

        if let buttonTertiaryDiabledJSON = json["buttonTertiaryDiabled"] as? JSON {
            buttonTertiaryDiabledLayerStyle = LayerStyle(json: buttonTertiaryDiabledJSON)
        }

        if let gridPrimaryNormalJSON = json["gridPrimaryNormal"] as? JSON {
            gridPrimaryNormalLayerStyle = LayerStyle(json: gridPrimaryNormalJSON)
        }

        if let gridPrimaryHightlightedJSON = json["gridPrimaryHightlighted"] as? JSON {
            gridPrimaryHightlightedLayerStyle = LayerStyle(json: gridPrimaryHightlightedJSON)
        }

        if let gridPrimaryFocusedJSON = json["gridPrimaryFocused"] as? JSON {
            gridPrimaryFocusedLayerStyle = LayerStyle(json: gridPrimaryFocusedJSON)
        }

        if let gridPrimarySelectedJSON = json["gridPrimarySelected"] as? JSON {
            gridPrimarySelectedLayerStyle = LayerStyle(json: gridPrimarySelectedJSON)
        }

        if let gridPrimaryDiabledJSON = json["gridPrimaryDiabled"] as? JSON {
            gridPrimaryDiabledLayerStyle = LayerStyle(json: gridPrimaryDiabledJSON)
        }

        if let gridSecondaryNormalJSON = json["gridSecondaryNormal"] as? JSON {
            gridSecondaryNormalLayerStyle = LayerStyle(json: gridSecondaryNormalJSON)
        }

        if let gridSecondaryHightlightedJSON = json["gridSecondaryHightlighted"] as? JSON {
            gridSecondaryHightlightedLayerStyle = LayerStyle(json: gridSecondaryHightlightedJSON)
        }

        if let gridSecondaryFocusedJSON = json["gridSecondaryFocused"] as? JSON {
            gridSecondaryFocusedLayerStyle = LayerStyle(json: gridSecondaryFocusedJSON)
        }

        if let gridSecondarySelectedJSON = json["gridSecondarySelected"] as? JSON {
            gridSecondarySelectedLayerStyle = LayerStyle(json: gridSecondarySelectedJSON)
        }

        if let gridSecondaryDiabledJSON = json["gridSecondaryDiabled"] as? JSON {
            gridSecondaryDiabledLayerStyle = LayerStyle(json: gridSecondaryDiabledJSON)
        }

        if let gridTertiaryNormalJSON = json["gridTertiaryNormal"] as? JSON {
            gridTertiaryNormalLayerStyle = LayerStyle(json: gridTertiaryNormalJSON)
        }

        if let gridTertiaryHightlightedJSON = json["gridTertiaryHightlighted"] as? JSON {
            gridTertiaryHightlightedLayerStyle = LayerStyle(json: gridTertiaryHightlightedJSON)
        }

        if let gridTertiaryFocusedJSON = json["gridTertiaryFocused"] as? JSON {
            gridTertiaryFocusedLayerStyle = LayerStyle(json: gridTertiaryFocusedJSON)
        }

        if let gridTertiarySelectedJSON = json["gridTertiarySelected"] as? JSON {
            gridTertiarySelectedLayerStyle = LayerStyle(json: gridTertiarySelectedJSON)
        }

        if let gridTertiaryDiabledJSON = json["gridTertiaryDiabled"] as? JSON {
            gridTertiaryDiabledLayerStyle = LayerStyle(json: gridTertiaryDiabledJSON)
        }

        if let listPrimaryNormalJSON = json["listPrimaryNormal"] as? JSON {
            listPrimaryNormalLayerStyle = LayerStyle(json: listPrimaryNormalJSON)
        }

        if let listPrimaryHightlightedJSON = json["listPrimaryHightlighted"] as? JSON {
            listPrimaryHightlightedLayerStyle = LayerStyle(json: listPrimaryHightlightedJSON)
        }

        if let listPrimaryFocusedJSON = json["listPrimaryFocused"] as? JSON {
            listPrimaryFocusedLayerStyle = LayerStyle(json: listPrimaryFocusedJSON)
        }

        if let listPrimarySelectedJSON = json["listPrimarySelected"] as? JSON {
            listPrimarySelectedLayerStyle = LayerStyle(json: listPrimarySelectedJSON)
        }

        if let listPrimaryDiabledJSON = json["listPrimaryDiabled"] as? JSON {
            listPrimaryDiabledLayerStyle = LayerStyle(json: listPrimaryDiabledJSON)
        }

        if let listSecondaryNormalJSON = json["listSecondaryNormal"] as? JSON {
            listSecondaryNormalLayerStyle = LayerStyle(json: listSecondaryNormalJSON)
        }

        if let listSecondaryHightlightedJSON = json["listSecondaryHightlighted"] as? JSON {
            listSecondaryHightlightedLayerStyle = LayerStyle(json: listSecondaryHightlightedJSON)
        }

        if let listSecondaryFocusedJSON = json["listSecondaryFocused"] as? JSON {
            listSecondaryFocusedLayerStyle = LayerStyle(json: listSecondaryFocusedJSON)
        }

        if let listSecondarySelectedJSON = json["listSecondarySelected"] as? JSON {
            listSecondarySelectedLayerStyle = LayerStyle(json: listSecondarySelectedJSON)
        }

        if let listSecondaryDiabledJSON = json["listSecondaryDiabled"] as? JSON {
            listSecondaryDiabledLayerStyle = LayerStyle(json: listSecondaryDiabledJSON)
        }

        if let listTertiaryNormalJSON = json["listTertiaryNormal"] as? JSON {
            listTertiaryNormalLayerStyle = LayerStyle(json: listTertiaryNormalJSON)
        }

        if let listTertiaryHightlightedJSON = json["listTertiaryHightlighted"] as? JSON {
            listTertiaryHightlightedLayerStyle = LayerStyle(json: listTertiaryHightlightedJSON)
        }

        if let listTertiaryFocusedJSON = json["listTertiaryFocused"] as? JSON {
            listTertiaryFocusedLayerStyle = LayerStyle(json: listTertiaryFocusedJSON)
        }

        if let listTertiarySelectedJSON = json["listTertiarySelected"] as? JSON {
            listTertiarySelectedLayerStyle = LayerStyle(json: listTertiarySelectedJSON)
        }

        if let listTertiaryDiabledJSON = json["listTertiaryDiabled"] as? JSON {
            listTertiaryDiabledLayerStyle = LayerStyle(json: listTertiaryDiabledJSON)
        }
    }
}
