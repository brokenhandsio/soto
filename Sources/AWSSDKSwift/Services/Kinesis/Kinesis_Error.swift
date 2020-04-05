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

/// Error enum for Kinesis
public enum KinesisErrorType: AWSErrorType {
    case expiredIteratorException(message: String?)
    case expiredNextTokenException(message: String?)
    case invalidArgumentException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case kMSOptInRequired(message: String?)
    case kMSThrottlingException(message: String?)
    case limitExceededException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension KinesisErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ExpiredIteratorException":
            self = .expiredIteratorException(message: message)
        case "ExpiredNextTokenException":
            self = .expiredNextTokenException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "KMSOptInRequired":
            self = .kMSOptInRequired(message: message)
        case "KMSThrottlingException":
            self = .kMSThrottlingException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension KinesisErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .expiredIteratorException(let message):
            return "ExpiredIteratorException: \(message ?? "")"
        case .expiredNextTokenException(let message):
            return "ExpiredNextTokenException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .kMSAccessDeniedException(let message):
            return "KMSAccessDeniedException: \(message ?? "")"
        case .kMSDisabledException(let message):
            return "KMSDisabledException: \(message ?? "")"
        case .kMSInvalidStateException(let message):
            return "KMSInvalidStateException: \(message ?? "")"
        case .kMSNotFoundException(let message):
            return "KMSNotFoundException: \(message ?? "")"
        case .kMSOptInRequired(let message):
            return "KMSOptInRequired: \(message ?? "")"
        case .kMSThrottlingException(let message):
            return "KMSThrottlingException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .provisionedThroughputExceededException(let message):
            return "ProvisionedThroughputExceededException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
