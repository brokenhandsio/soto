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

/// Error enum for LexModelBuildingService
public enum LexModelBuildingServiceErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case internalFailureException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case preconditionFailedException(message: String?)
    case resourceInUseException(message: String?)
}

extension LexModelBuildingServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "PreconditionFailedException":
            self = .preconditionFailedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        default:
            return nil
        }
    }
}

extension LexModelBuildingServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .preconditionFailedException(let message):
            return "PreconditionFailedException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        }
    }
}
