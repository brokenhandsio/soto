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

/// Error enum for ImportExport
public struct ImportExportErrorType: AWSErrorType {
    enum Code: String {
        case bucketPermissionException = "BucketPermissionException"
        case canceledJobIdException = "CanceledJobIdException"
        case createJobQuotaExceededException = "CreateJobQuotaExceededException"
        case expiredJobIdException = "ExpiredJobIdException"
        case invalidAccessKeyIdException = "InvalidAccessKeyIdException"
        case invalidAddressException = "InvalidAddressException"
        case invalidCustomsException = "InvalidCustomsException"
        case invalidFileSystemException = "InvalidFileSystemException"
        case invalidJobIdException = "InvalidJobIdException"
        case invalidManifestFieldException = "InvalidManifestFieldException"
        case invalidParameterException = "InvalidParameterException"
        case invalidVersionException = "InvalidVersionException"
        case malformedManifestException = "MalformedManifestException"
        case missingCustomsException = "MissingCustomsException"
        case missingManifestFieldException = "MissingManifestFieldException"
        case missingParameterException = "MissingParameterException"
        case multipleRegionsException = "MultipleRegionsException"
        case noSuchBucketException = "NoSuchBucketException"
        case unableToCancelJobIdException = "UnableToCancelJobIdException"
        case unableToUpdateJobIdException = "UnableToUpdateJobIdException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ImportExport
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

    /// The account specified does not have the appropriate bucket permissions.
    public static var bucketPermissionException: Self { .init(.bucketPermissionException) }
    /// The specified job ID has been canceled and is no longer valid.
    public static var canceledJobIdException: Self { .init(.canceledJobIdException) }
    /// Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
    public static var createJobQuotaExceededException: Self { .init(.createJobQuotaExceededException) }
    /// Indicates that the specified job has expired out of the system.
    public static var expiredJobIdException: Self { .init(.expiredJobIdException) }
    /// The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
    public static var invalidAccessKeyIdException: Self { .init(.invalidAccessKeyIdException) }
    /// The address specified in the manifest is invalid.
    public static var invalidAddressException: Self { .init(.invalidAddressException) }
    /// One or more customs parameters was invalid. Please correct and resubmit.
    public static var invalidCustomsException: Self { .init(.invalidCustomsException) }
    /// File system specified in export manifest is invalid.
    public static var invalidFileSystemException: Self { .init(.invalidFileSystemException) }
    /// The JOBID was missing, not found, or not associated with the AWS account.
    public static var invalidJobIdException: Self { .init(.invalidJobIdException) }
    /// One or more manifest fields was invalid. Please correct and resubmit.
    public static var invalidManifestFieldException: Self { .init(.invalidManifestFieldException) }
    /// One or more parameters had an invalid value.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The client tool version is invalid.
    public static var invalidVersionException: Self { .init(.invalidVersionException) }
    /// Your manifest is not well-formed.
    public static var malformedManifestException: Self { .init(.malformedManifestException) }
    /// One or more required customs parameters was missing from the manifest.
    public static var missingCustomsException: Self { .init(.missingCustomsException) }
    /// One or more required fields were missing from the manifest file. Please correct and resubmit.
    public static var missingManifestFieldException: Self { .init(.missingManifestFieldException) }
    /// One or more required parameters was missing from the request.
    public static var missingParameterException: Self { .init(.missingParameterException) }
    /// Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
    public static var multipleRegionsException: Self { .init(.multipleRegionsException) }
    /// The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
    public static var noSuchBucketException: Self { .init(.noSuchBucketException) }
    /// AWS Import/Export cannot cancel the job
    public static var unableToCancelJobIdException: Self { .init(.unableToCancelJobIdException) }
    /// AWS Import/Export cannot update the job
    public static var unableToUpdateJobIdException: Self { .init(.unableToUpdateJobIdException) }
}

extension ImportExportErrorType: Equatable {
    public static func == (lhs: ImportExportErrorType, rhs: ImportExportErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ImportExportErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
