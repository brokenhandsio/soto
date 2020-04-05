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

/// Error enum for DatabaseMigrationService
public enum DatabaseMigrationServiceErrorType: AWSErrorType {
    case accessDeniedFault(message: String?)
    case insufficientResourceCapacityFault(message: String?)
    case invalidCertificateFault(message: String?)
    case invalidResourceStateFault(message: String?)
    case invalidSubnet(message: String?)
    case kMSAccessDeniedFault(message: String?)
    case kMSDisabledFault(message: String?)
    case kMSInvalidStateFault(message: String?)
    case kMSKeyNotAccessibleFault(message: String?)
    case kMSNotFoundFault(message: String?)
    case kMSThrottlingFault(message: String?)
    case replicationSubnetGroupDoesNotCoverEnoughAZs(message: String?)
    case resourceAlreadyExistsFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case resourceQuotaExceededFault(message: String?)
    case sNSInvalidTopicFault(message: String?)
    case sNSNoAuthorizationFault(message: String?)
    case storageQuotaExceededFault(message: String?)
    case subnetAlreadyInUse(message: String?)
    case upgradeDependencyFailureFault(message: String?)
}

extension DatabaseMigrationServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedFault":
            self = .accessDeniedFault(message: message)
        case "InsufficientResourceCapacityFault":
            self = .insufficientResourceCapacityFault(message: message)
        case "InvalidCertificateFault":
            self = .invalidCertificateFault(message: message)
        case "InvalidResourceStateFault":
            self = .invalidResourceStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "KMSAccessDeniedFault":
            self = .kMSAccessDeniedFault(message: message)
        case "KMSDisabledFault":
            self = .kMSDisabledFault(message: message)
        case "KMSInvalidStateFault":
            self = .kMSInvalidStateFault(message: message)
        case "KMSKeyNotAccessibleFault":
            self = .kMSKeyNotAccessibleFault(message: message)
        case "KMSNotFoundFault":
            self = .kMSNotFoundFault(message: message)
        case "KMSThrottlingFault":
            self = .kMSThrottlingFault(message: message)
        case "ReplicationSubnetGroupDoesNotCoverEnoughAZs":
            self = .replicationSubnetGroupDoesNotCoverEnoughAZs(message: message)
        case "ResourceAlreadyExistsFault":
            self = .resourceAlreadyExistsFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "ResourceQuotaExceededFault":
            self = .resourceQuotaExceededFault(message: message)
        case "SNSInvalidTopicFault":
            self = .sNSInvalidTopicFault(message: message)
        case "SNSNoAuthorizationFault":
            self = .sNSNoAuthorizationFault(message: message)
        case "StorageQuotaExceededFault":
            self = .storageQuotaExceededFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        case "UpgradeDependencyFailureFault":
            self = .upgradeDependencyFailureFault(message: message)
        default:
            return nil
        }
    }
}

extension DatabaseMigrationServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedFault(let message):
            return "AccessDeniedFault: \(message ?? "")"
        case .insufficientResourceCapacityFault(let message):
            return "InsufficientResourceCapacityFault: \(message ?? "")"
        case .invalidCertificateFault(let message):
            return "InvalidCertificateFault: \(message ?? "")"
        case .invalidResourceStateFault(let message):
            return "InvalidResourceStateFault: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .kMSAccessDeniedFault(let message):
            return "KMSAccessDeniedFault: \(message ?? "")"
        case .kMSDisabledFault(let message):
            return "KMSDisabledFault: \(message ?? "")"
        case .kMSInvalidStateFault(let message):
            return "KMSInvalidStateFault: \(message ?? "")"
        case .kMSKeyNotAccessibleFault(let message):
            return "KMSKeyNotAccessibleFault: \(message ?? "")"
        case .kMSNotFoundFault(let message):
            return "KMSNotFoundFault: \(message ?? "")"
        case .kMSThrottlingFault(let message):
            return "KMSThrottlingFault: \(message ?? "")"
        case .replicationSubnetGroupDoesNotCoverEnoughAZs(let message):
            return "ReplicationSubnetGroupDoesNotCoverEnoughAZs: \(message ?? "")"
        case .resourceAlreadyExistsFault(let message):
            return "ResourceAlreadyExistsFault: \(message ?? "")"
        case .resourceNotFoundFault(let message):
            return "ResourceNotFoundFault: \(message ?? "")"
        case .resourceQuotaExceededFault(let message):
            return "ResourceQuotaExceededFault: \(message ?? "")"
        case .sNSInvalidTopicFault(let message):
            return "SNSInvalidTopicFault: \(message ?? "")"
        case .sNSNoAuthorizationFault(let message):
            return "SNSNoAuthorizationFault: \(message ?? "")"
        case .storageQuotaExceededFault(let message):
            return "StorageQuotaExceededFault: \(message ?? "")"
        case .subnetAlreadyInUse(let message):
            return "SubnetAlreadyInUse: \(message ?? "")"
        case .upgradeDependencyFailureFault(let message):
            return "UpgradeDependencyFailureFault: \(message ?? "")"
        }
    }
}
