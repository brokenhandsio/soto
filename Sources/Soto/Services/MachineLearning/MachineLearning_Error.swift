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

/// Error enum for MachineLearning
public struct MachineLearningErrorType: AWSErrorType {
    enum Code: String {
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case internalServerException = "InternalServerException"
        case invalidInputException = "InvalidInputException"
        case invalidTagException = "InvalidTagException"
        case limitExceededException = "LimitExceededException"
        case predictorNotMountedException = "PredictorNotMountedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tagLimitExceededException = "TagLimitExceededException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MachineLearning
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

    /// A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// An error on the server occurred when trying to process a request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// An error on the client occurred. Typically, the cause is an invalid input value.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as DataSource.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The exception is thrown when a predict request is made to an unmounted MLModel.
    public static var predictorNotMountedException: Self { .init(.predictorNotMountedException) }
    /// A specified resource cannot be located.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var tagLimitExceededException: Self { .init(.tagLimitExceededException) }
}

extension MachineLearningErrorType: Equatable {
    public static func == (lhs: MachineLearningErrorType, rhs: MachineLearningErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MachineLearningErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
