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

/// Error enum for ManagedBlockchain
public enum ManagedBlockchainErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case illegalActionException(message: String?)
    case internalServiceErrorException(message: String?)
    case invalidRequestException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceNotReadyException(message: String?)
    case throttlingException(message: String?)
}

extension ManagedBlockchainErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "IllegalActionException":
            self = .illegalActionException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceNotReadyException":
            self = .resourceNotReadyException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}

extension ManagedBlockchainErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .illegalActionException(let message):
            return "IllegalActionException: \(message ?? "")"
        case .internalServiceErrorException(let message):
            return "InternalServiceErrorException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceLimitExceededException(let message):
            return "ResourceLimitExceededException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceNotReadyException(let message):
            return "ResourceNotReadyException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        }
    }
}
