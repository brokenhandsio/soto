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

// MARK: Paginators

extension CloudFront {
    ///  Lists origin access identities.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCloudFrontOriginAccessIdentitiesPaginator<Result>(
        _ input: ListCloudFrontOriginAccessIdentitiesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListCloudFrontOriginAccessIdentitiesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCloudFrontOriginAccessIdentities,
            tokenKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.nextMarker,
            moreResultsKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCloudFrontOriginAccessIdentitiesPaginator(
        _ input: ListCloudFrontOriginAccessIdentitiesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCloudFrontOriginAccessIdentitiesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCloudFrontOriginAccessIdentities,
            tokenKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.nextMarker,
            moreResultsKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List CloudFront distributions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDistributionsPaginator<Result>(
        _ input: ListDistributionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListDistributionsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDistributions,
            tokenKey: \ListDistributionsResult.distributionList?.nextMarker,
            moreResultsKey: \ListDistributionsResult.distributionList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDistributionsPaginator(
        _ input: ListDistributionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDistributionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDistributions,
            tokenKey: \ListDistributionsResult.distributionList?.nextMarker,
            moreResultsKey: \ListDistributionsResult.distributionList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists invalidation batches.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listInvalidationsPaginator<Result>(
        _ input: ListInvalidationsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListInvalidationsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInvalidations,
            tokenKey: \ListInvalidationsResult.invalidationList?.nextMarker,
            moreResultsKey: \ListInvalidationsResult.invalidationList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listInvalidationsPaginator(
        _ input: ListInvalidationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInvalidationsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInvalidations,
            tokenKey: \ListInvalidationsResult.invalidationList?.nextMarker,
            moreResultsKey: \ListInvalidationsResult.invalidationList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List streaming distributions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listStreamingDistributionsPaginator<Result>(
        _ input: ListStreamingDistributionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListStreamingDistributionsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listStreamingDistributions,
            tokenKey: \ListStreamingDistributionsResult.streamingDistributionList?.nextMarker,
            moreResultsKey: \ListStreamingDistributionsResult.streamingDistributionList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listStreamingDistributionsPaginator(
        _ input: ListStreamingDistributionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStreamingDistributionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStreamingDistributions,
            tokenKey: \ListStreamingDistributionsResult.streamingDistributionList?.nextMarker,
            moreResultsKey: \ListStreamingDistributionsResult.streamingDistributionList?.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CloudFront.ListCloudFrontOriginAccessIdentitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListCloudFrontOriginAccessIdentitiesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension CloudFront.ListDistributionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListDistributionsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension CloudFront.ListInvalidationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListInvalidationsRequest {
        return .init(
            distributionId: self.distributionId,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension CloudFront.ListStreamingDistributionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListStreamingDistributionsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )
    }
}
