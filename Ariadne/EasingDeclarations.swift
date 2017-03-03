//
//  EasingDeclarations.swift
//  Ariadne
//
//  Created by Christian Kling on 02/03/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import Foundation

///Curve type
public enum CurveType {
    case curveTypeLinear
    case curveTypeQuadratic
    case curveTypeCubic
    case curveTypeQuartic
    case curveTypeQuintic
    case curveTypeSine
    case curveTypeCircular
    case curveTypeExpo
    case curveTypeElastic
    case curveTypeBack
    case curveTypeBounce
}

///Ease type
public enum EaseType {
    case easeTypeIn
    case easeTypeOut
    case easeTypeInOut
}
