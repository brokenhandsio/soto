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

extension QuickSight {

    ///  Lists all the versions of the dashboards in the QuickSight subscription.
    public func listDashboardVersionsPaginator(_ input: ListDashboardVersionsRequest, onPage: @escaping (ListDashboardVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboardVersions, tokenKey: \ListDashboardVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists dashboards in an AWS account.
    public func listDashboardsPaginator(_ input: ListDashboardsRequest, onPage: @escaping (ListDashboardsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboards, tokenKey: \ListDashboardsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
    public func listDataSetsPaginator(_ input: ListDataSetsRequest, onPage: @escaping (ListDataSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSets, tokenKey: \ListDataSetsResponse.nextToken, onPage: onPage)
    }

    ///  Lists data sources in current AWS Region that belong to this AWS account.
    public func listDataSourcesPaginator(_ input: ListDataSourcesRequest, onPage: @escaping (ListDataSourcesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSources, tokenKey: \ListDataSourcesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the history of SPICE ingestions for a dataset.
    public func listIngestionsPaginator(_ input: ListIngestionsRequest, onPage: @escaping (ListIngestionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIngestions, tokenKey: \ListIngestionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the aliases of a template.
    public func listTemplateAliasesPaginator(_ input: ListTemplateAliasesRequest, onPage: @escaping (ListTemplateAliasesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateAliases, tokenKey: \ListTemplateAliasesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the versions of the templates in the current Amazon QuickSight account.
    public func listTemplateVersionsPaginator(_ input: ListTemplateVersionsRequest, onPage: @escaping (ListTemplateVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateVersions, tokenKey: \ListTemplateVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the templates in the current Amazon QuickSight account.
    public func listTemplatesPaginator(_ input: ListTemplatesRequest, onPage: @escaping (ListTemplatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplates, tokenKey: \ListTemplatesResponse.nextToken, onPage: onPage)
    }

    ///  Searchs for dashboards that belong to a user. 
    public func searchDashboardsPaginator(_ input: SearchDashboardsRequest, onPage: @escaping (SearchDashboardsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchDashboards, tokenKey: \SearchDashboardsResponse.nextToken, onPage: onPage)
    }

}

extension QuickSight.ListDashboardVersionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDashboardVersionsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            dashboardId: self.dashboardId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.ListDashboardsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDashboardsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.ListDataSetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDataSetsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.ListDataSourcesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDataSourcesRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.ListIngestionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListIngestionsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            dataSetId: self.dataSetId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.ListTemplateAliasesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplateAliasesRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            templateId: self.templateId
        )

    }
}

extension QuickSight.ListTemplateVersionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplateVersionsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            templateId: self.templateId
        )

    }
}

extension QuickSight.ListTemplatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplatesRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension QuickSight.SearchDashboardsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.SearchDashboardsRequest {
        return .init(
            awsAccountId: self.awsAccountId, 
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


