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

/// Service object for interacting with AWS PI service.
///
/// Amazon RDS Performance Insights Amazon RDS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running DB instance. The guide provides detailed information about Performance Insights data types, parameters and errors. When Performance Insights is enabled, the Amazon RDS Performance Insights API provides visibility into the performance of your DB instance. Amazon CloudWatch provides the authoritative source for AWS service-vended monitoring metrics. Performance Insights offers a domain-specific view of DB load.  DB load is measured as Average Active Sessions. Performance Insights provides the data to API consumers as a two-dimensional time-series dataset. The time dimension provides DB load data for each time point in the queried time range. Each time point decomposes overall load in relation to the requested dimensions, measured at that time point. Examples include SQL, Wait event, User, and Host.   To learn more about Performance Insights and Amazon Aurora DB instances, go to the Amazon Aurora User Guide.   To learn more about Performance Insights and Amazon RDS DB instances, go to the Amazon RDS User Guide.
public struct PI: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PI client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "PerformanceInsightsv20180227",
            service: "pi",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-02-27",
            endpoint: endpoint,
            errorType: PIErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// For a specific time period, retrieve the top N dimension keys for a metric.  Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements, only the first 500 bytes are returned.
    public func describeDimensionKeys(_ input: DescribeDimensionKeysRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDimensionKeysResponse> {
        return self.client.execute(operation: "DescribeDimensionKeys", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Get the attributes of the specified dimension group for a DB instance or data source. For example, if you specify a SQL ID, GetDimensionKeyDetails retrieves the full text of the dimension db.sql.statement associated with this ID. This operation is useful because GetResourceMetrics and DescribeDimensionKeys don't support retrieval of large SQL statement text.
    public func getDimensionKeyDetails(_ input: GetDimensionKeyDetailsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDimensionKeyDetailsResponse> {
        return self.client.execute(operation: "GetDimensionKeyDetails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.  Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements, only the first 500 bytes are returned.
    public func getResourceMetrics(_ input: GetResourceMetricsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceMetricsResponse> {
        return self.client.execute(operation: "GetResourceMetrics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension PI {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PI, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
