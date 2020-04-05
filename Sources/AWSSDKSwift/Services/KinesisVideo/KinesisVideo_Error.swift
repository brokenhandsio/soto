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

/// Error enum for KinesisVideo
public enum KinesisVideoErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case accountChannelLimitExceededException(message: String?)
    case accountStreamLimitExceededException(message: String?)
    case clientLimitExceededException(message: String?)
    case deviceStreamLimitExceededException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidDeviceException(message: String?)
    case invalidResourceFormatException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagsPerResourceExceededLimitException(message: String?)
    case versionMismatchException(message: String?)
}

extension KinesisVideoErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AccountChannelLimitExceededException":
            self = .accountChannelLimitExceededException(message: message)
        case "AccountStreamLimitExceededException":
            self = .accountStreamLimitExceededException(message: message)
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "DeviceStreamLimitExceededException":
            self = .deviceStreamLimitExceededException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidDeviceException":
            self = .invalidDeviceException(message: message)
        case "InvalidResourceFormatException":
            self = .invalidResourceFormatException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagsPerResourceExceededLimitException":
            self = .tagsPerResourceExceededLimitException(message: message)
        case "VersionMismatchException":
            self = .versionMismatchException(message: message)
        default:
            return nil
        }
    }
}

extension KinesisVideoErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .accountChannelLimitExceededException(let message):
            return "AccountChannelLimitExceededException: \(message ?? "")"
        case .accountStreamLimitExceededException(let message):
            return "AccountStreamLimitExceededException: \(message ?? "")"
        case .clientLimitExceededException(let message):
            return "ClientLimitExceededException: \(message ?? "")"
        case .deviceStreamLimitExceededException(let message):
            return "DeviceStreamLimitExceededException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .invalidDeviceException(let message):
            return "InvalidDeviceException: \(message ?? "")"
        case .invalidResourceFormatException(let message):
            return "InvalidResourceFormatException: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tagsPerResourceExceededLimitException(let message):
            return "TagsPerResourceExceededLimitException: \(message ?? "")"
        case .versionMismatchException(let message):
            return "VersionMismatchException: \(message ?? "")"
        }
    }
}
