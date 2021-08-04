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

extension ECS {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServicesInactive(
        _ input: DescribeServicesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("failures[].reason", expected: "MISSING")),
                .init(state: .success, matcher: try! JMESAnyPathMatcher("services[].status", expected: "INACTIVE")),
            ],
            minDelayTime: .seconds(15),
            command: describeServices
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServicesStable(
        _ input: DescribeServicesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("failures[].reason", expected: "MISSING")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("services[].status", expected: "DRAINING")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("services[].status", expected: "INACTIVE")),
                .init(state: .success, matcher: try! JMESPathMatcher("length(services[?!(length(deployments) == `1` && runningCount == desiredCount)]) == `0`", expected: true)),
            ],
            minDelayTime: .seconds(15),
            command: describeServices
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilTasksRunning(
        _ input: DescribeTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("tasks[].lastStatus", expected: "STOPPED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("failures[].reason", expected: "MISSING")),
                .init(state: .success, matcher: try! JMESAllPathMatcher("tasks[].lastStatus", expected: "RUNNING")),
            ],
            minDelayTime: .seconds(6),
            command: describeTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilTasksStopped(
        _ input: DescribeTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("tasks[].lastStatus", expected: "STOPPED")),
            ],
            minDelayTime: .seconds(6),
            command: describeTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

}
