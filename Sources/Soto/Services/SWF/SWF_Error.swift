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

/// Error enum for SWF
public struct SWFErrorType: AWSErrorType {
    enum Code: String {
        case defaultUndefinedFault = "DefaultUndefinedFault"
        case domainAlreadyExistsFault = "DomainAlreadyExistsFault"
        case domainDeprecatedFault = "DomainDeprecatedFault"
        case limitExceededFault = "LimitExceededFault"
        case operationNotPermittedFault = "OperationNotPermittedFault"
        case tooManyTagsFault = "TooManyTagsFault"
        case typeAlreadyExistsFault = "TypeAlreadyExistsFault"
        case typeDeprecatedFault = "TypeDeprecatedFault"
        case unknownResourceFault = "UnknownResourceFault"
        case workflowExecutionAlreadyStartedFault = "WorkflowExecutionAlreadyStartedFault"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SWF
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

    /// The StartWorkflowExecution API action was called without the required parameters set. Some workflow execution parameters, such as the decision taskList, must be set to start the execution. However, these parameters might have been set as defaults when the workflow type was registered. In this case, you can omit these parameters from the StartWorkflowExecution call and Amazon SWF uses the values defined in the workflow type.  If these parameters aren't set and no default parameters were defined in the workflow type, this error is displayed.
    public static var defaultUndefinedFault: Self { .init(.defaultUndefinedFault) }
    /// Returned if the domain already exists. You may get this fault if you are registering a domain that is either already registered or deprecated, or if you undeprecate a domain that is currently registered.
    public static var domainAlreadyExistsFault: Self { .init(.domainAlreadyExistsFault) }
    /// Returned when the specified domain has been deprecated.
    public static var domainDeprecatedFault: Self { .init(.domainDeprecatedFault) }
    /// Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.
    public static var limitExceededFault: Self { .init(.limitExceededFault) }
    /// Returned when the caller doesn't have sufficient permissions to invoke the action.
    public static var operationNotPermittedFault: Self { .init(.operationNotPermittedFault) }
    /// You've exceeded the number of tags allowed for a domain.
    public static var tooManyTagsFault: Self { .init(.tooManyTagsFault) }
    /// Returned if the type already exists in the specified domain. You may get this fault if you are registering a type that is either already registered or deprecated, or if you undeprecate a type that is currently registered.
    public static var typeAlreadyExistsFault: Self { .init(.typeAlreadyExistsFault) }
    /// Returned when the specified activity or workflow type was already deprecated.
    public static var typeDeprecatedFault: Self { .init(.typeDeprecatedFault) }
    /// Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.
    public static var unknownResourceFault: Self { .init(.unknownResourceFault) }
    /// Returned by StartWorkflowExecution when an open execution with the same workflowId is already running in the specified domain.
    public static var workflowExecutionAlreadyStartedFault: Self { .init(.workflowExecutionAlreadyStartedFault) }
}

extension SWFErrorType: Equatable {
    public static func == (lhs: SWFErrorType, rhs: SWFErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SWFErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
