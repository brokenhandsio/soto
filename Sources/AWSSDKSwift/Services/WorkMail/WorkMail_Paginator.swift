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

extension WorkMail {

    ///  Creates a paginated call to list the aliases associated with a given entity.
    public func listAliasesPaginator(_ input: ListAliasesRequest, onPage: @escaping (ListAliasesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAliases, tokenKey: \ListAliasesResponse.nextToken, onPage: onPage)
    }

    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembersPaginator(_ input: ListGroupMembersRequest, onPage: @escaping (ListGroupMembersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroupMembers, tokenKey: \ListGroupMembersResponse.nextToken, onPage: onPage)
    }

    ///  Returns summaries of the organization's groups.
    public func listGroupsPaginator(_ input: ListGroupsRequest, onPage: @escaping (ListGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, tokenKey: \ListGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissionsPaginator(_ input: ListMailboxPermissionsRequest, onPage: @escaping (ListMailboxPermissionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMailboxPermissions, tokenKey: \ListMailboxPermissionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns summaries of the customer's non-deleted organizations.
    public func listOrganizationsPaginator(_ input: ListOrganizationsRequest, onPage: @escaping (ListOrganizationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOrganizations, tokenKey: \ListOrganizationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegatesPaginator(_ input: ListResourceDelegatesRequest, onPage: @escaping (ListResourceDelegatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourceDelegates, tokenKey: \ListResourceDelegatesResponse.nextToken, onPage: onPage)
    }

    ///  Returns summaries of the organization's resources.
    public func listResourcesPaginator(_ input: ListResourcesRequest, onPage: @escaping (ListResourcesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResources, tokenKey: \ListResourcesResponse.nextToken, onPage: onPage)
    }

    ///  Returns summaries of the organization's users.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping (ListUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.nextToken, onPage: onPage)
    }

}

extension WorkMail.ListAliasesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListAliasesRequest {
        return .init(
            entityId: self.entityId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}

extension WorkMail.ListGroupMembersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListGroupMembersRequest {
        return .init(
            groupId: self.groupId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}

extension WorkMail.ListGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}

extension WorkMail.ListMailboxPermissionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListMailboxPermissionsRequest {
        return .init(
            entityId: self.entityId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}

extension WorkMail.ListOrganizationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListOrganizationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension WorkMail.ListResourceDelegatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListResourceDelegatesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId, 
            resourceId: self.resourceId
        )

    }
}

extension WorkMail.ListResourcesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListResourcesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}

extension WorkMail.ListUsersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> WorkMail.ListUsersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            organizationId: self.organizationId
        )

    }
}


