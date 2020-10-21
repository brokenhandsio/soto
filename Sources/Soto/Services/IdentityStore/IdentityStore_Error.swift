//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for IdentityStore
public struct IdentityStoreErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IdentityStore
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request processing has failed because of an unknown error, exception or failure with an internal server.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Indicates that a requested resource is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Indicates that the principal has crossed the throttling limits of the API operations.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request failed because it contains a syntax error.
    public static var validationException: Self { .init(.validationException) }
}

extension IdentityStoreErrorType: Equatable {
    public static func == (lhs: IdentityStoreErrorType, rhs: IdentityStoreErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IdentityStoreErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
