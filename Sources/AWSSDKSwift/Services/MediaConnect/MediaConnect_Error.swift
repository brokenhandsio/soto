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

/// Error enum for MediaConnect
public enum MediaConnectErrorType: AWSErrorType {
    case addFlowOutputs420Exception(message: String?)
    case badRequestException(message: String?)
    case createFlow420Exception(message: String?)
    case forbiddenException(message: String?)
    case grantFlowEntitlements420Exception(message: String?)
    case internalServerErrorException(message: String?)
    case notFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension MediaConnectErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AddFlowOutputs420Exception":
            self = .addFlowOutputs420Exception(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "CreateFlow420Exception":
            self = .createFlow420Exception(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "GrantFlowEntitlements420Exception":
            self = .grantFlowEntitlements420Exception(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension MediaConnectErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .addFlowOutputs420Exception(let message):
            return "AddFlowOutputs420Exception: \(message ?? "")"
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .createFlow420Exception(let message):
            return "CreateFlow420Exception: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .grantFlowEntitlements420Exception(let message):
            return "GrantFlowEntitlements420Exception: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
