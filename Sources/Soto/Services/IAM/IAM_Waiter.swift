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

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension IAM {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilInstanceProfileExists(
        _ input: GetInstanceProfileRequest,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(404)),
            ],
            minDelayTime: .seconds(1),
            command: getInstanceProfile
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, context: context, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilPolicyExists(
        _ input: GetPolicyRequest,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("NoSuchEntity")),
            ],
            minDelayTime: .seconds(1),
            command: getPolicy
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, context: context, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilRoleExists(
        _ input: GetRoleRequest,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("NoSuchEntity")),
            ],
            minDelayTime: .seconds(1),
            command: getRole
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, context: context, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilUserExists(
        _ input: GetUserRequest,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("NoSuchEntity")),
            ],
            minDelayTime: .seconds(1),
            command: getUser
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, context: context, on: eventLoop)
    }

}
