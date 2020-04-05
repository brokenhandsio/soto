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

/// Error enum for GroundStation
public enum GroundStationErrorType: AWSErrorType {
    case dependencyException(message: String?)
    case invalidParameterException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension GroundStationErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DependencyException":
            self = .dependencyException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension GroundStationErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .dependencyException(let message):
            return "DependencyException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .resourceLimitExceededException(let message):
            return "ResourceLimitExceededException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
