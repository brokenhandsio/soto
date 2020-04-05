//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CostExplorer {

    ///  Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.
    public func getSavingsPlansCoveragePaginator(_ input: GetSavingsPlansCoverageRequest, onPage: @escaping (GetSavingsPlansCoverageResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSavingsPlansCoverage, tokenKey: \GetSavingsPlansCoverageResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 
    public func getSavingsPlansUtilizationDetailsPaginator(_ input: GetSavingsPlansUtilizationDetailsRequest, onPage: @escaping (GetSavingsPlansUtilizationDetailsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSavingsPlansUtilizationDetails, tokenKey: \GetSavingsPlansUtilizationDetailsResponse.nextToken, onPage: onPage)
    }

}

extension CostExplorer.GetSavingsPlansCoverageRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CostExplorer.GetSavingsPlansCoverageRequest {
        return .init(
            filter: self.filter, 
            granularity: self.granularity, 
            groupBy: self.groupBy, 
            maxResults: self.maxResults, 
            metrics: self.metrics, 
            nextToken: token, 
            timePeriod: self.timePeriod
        )

    }
}

extension CostExplorer.GetSavingsPlansUtilizationDetailsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CostExplorer.GetSavingsPlansUtilizationDetailsRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token, 
            timePeriod: self.timePeriod
        )

    }
}


