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

extension Macie {

    ///  Lists all Amazon Macie member accounts for the current Amazon Macie master account.
    public func listMemberAccountsPaginator(_ input: ListMemberAccountsRequest, onPage: @escaping (ListMemberAccountsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMemberAccounts, tokenKey: \ListMemberAccountsResult.nextToken, onPage: onPage)
    }

    ///  Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account. 
    public func listS3ResourcesPaginator(_ input: ListS3ResourcesRequest, onPage: @escaping (ListS3ResourcesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listS3Resources, tokenKey: \ListS3ResourcesResult.nextToken, onPage: onPage)
    }

}

extension Macie.ListMemberAccountsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie.ListMemberAccountsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Macie.ListS3ResourcesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie.ListS3ResourcesRequest {
        return .init(
            maxResults: self.maxResults, 
            memberAccountId: self.memberAccountId, 
            nextToken: token
        )

    }
}


