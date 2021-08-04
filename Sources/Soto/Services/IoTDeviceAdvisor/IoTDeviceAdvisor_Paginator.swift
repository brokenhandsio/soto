//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension IoTDeviceAdvisor {
    ///  Lists the Device Advisor test suites you have created.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSuiteDefinitionsPaginator<Result>(
        _ input: ListSuiteDefinitionsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSuiteDefinitionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSuiteDefinitions,
            inputKey: \ListSuiteDefinitionsRequest.nextToken,
            outputKey: \ListSuiteDefinitionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSuiteDefinitionsPaginator(
        _ input: ListSuiteDefinitionsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSuiteDefinitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSuiteDefinitions,
            inputKey: \ListSuiteDefinitionsRequest.nextToken,
            outputKey: \ListSuiteDefinitionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSuiteRunsPaginator<Result>(
        _ input: ListSuiteRunsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSuiteRunsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSuiteRuns,
            inputKey: \ListSuiteRunsRequest.nextToken,
            outputKey: \ListSuiteRunsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSuiteRunsPaginator(
        _ input: ListSuiteRunsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSuiteRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSuiteRuns,
            inputKey: \ListSuiteRunsRequest.nextToken,
            outputKey: \ListSuiteRunsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTDeviceAdvisor.ListSuiteDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTDeviceAdvisor.ListSuiteDefinitionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTDeviceAdvisor.ListSuiteRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTDeviceAdvisor.ListSuiteRunsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            suiteDefinitionId: self.suiteDefinitionId,
            suiteDefinitionVersion: self.suiteDefinitionVersion
        )
    }
}
