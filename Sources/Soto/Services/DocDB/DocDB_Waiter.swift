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

extension DocDB {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilDBInstanceAvailable(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dBInstances[].dBInstanceStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "incompatible-restore")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "incompatible-parameters")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
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
    public func waitUntilDBInstanceDeleted(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dBInstances[].dBInstanceStatus", expected: "deleted")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("DBInstanceNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "resetting-master-credentials")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, context: context, on: eventLoop)
    }

}
