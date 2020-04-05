//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for GlobalAccelerator
public enum GlobalAcceleratorErrorType: AWSErrorType {
    case acceleratorNotDisabledException(message: String?)
    case acceleratorNotFoundException(message: String?)
    case accessDeniedException(message: String?)
    case associatedEndpointGroupFoundException(message: String?)
    case associatedListenerFoundException(message: String?)
    case byoipCidrNotFoundException(message: String?)
    case endpointGroupAlreadyExistsException(message: String?)
    case endpointGroupNotFoundException(message: String?)
    case incorrectCidrStateException(message: String?)
    case internalServiceErrorException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidPortRangeException(message: String?)
    case limitExceededException(message: String?)
    case listenerNotFoundException(message: String?)
}

extension GlobalAcceleratorErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AcceleratorNotDisabledException":
            self = .acceleratorNotDisabledException(message: message)
        case "AcceleratorNotFoundException":
            self = .acceleratorNotFoundException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AssociatedEndpointGroupFoundException":
            self = .associatedEndpointGroupFoundException(message: message)
        case "AssociatedListenerFoundException":
            self = .associatedListenerFoundException(message: message)
        case "ByoipCidrNotFoundException":
            self = .byoipCidrNotFoundException(message: message)
        case "EndpointGroupAlreadyExistsException":
            self = .endpointGroupAlreadyExistsException(message: message)
        case "EndpointGroupNotFoundException":
            self = .endpointGroupNotFoundException(message: message)
        case "IncorrectCidrStateException":
            self = .incorrectCidrStateException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidPortRangeException":
            self = .invalidPortRangeException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ListenerNotFoundException":
            self = .listenerNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension GlobalAcceleratorErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .acceleratorNotDisabledException(let message):
            return "AcceleratorNotDisabledException: \(message ?? "")"
        case .acceleratorNotFoundException(let message):
            return "AcceleratorNotFoundException: \(message ?? "")"
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .associatedEndpointGroupFoundException(let message):
            return "AssociatedEndpointGroupFoundException: \(message ?? "")"
        case .associatedListenerFoundException(let message):
            return "AssociatedListenerFoundException: \(message ?? "")"
        case .byoipCidrNotFoundException(let message):
            return "ByoipCidrNotFoundException: \(message ?? "")"
        case .endpointGroupAlreadyExistsException(let message):
            return "EndpointGroupAlreadyExistsException: \(message ?? "")"
        case .endpointGroupNotFoundException(let message):
            return "EndpointGroupNotFoundException: \(message ?? "")"
        case .incorrectCidrStateException(let message):
            return "IncorrectCidrStateException: \(message ?? "")"
        case .internalServiceErrorException(let message):
            return "InternalServiceErrorException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidPortRangeException(let message):
            return "InvalidPortRangeException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .listenerNotFoundException(let message):
            return "ListenerNotFoundException: \(message ?? "")"
        }
    }
}
