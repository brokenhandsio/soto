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

import Foundation
import AWSSDKSwiftCore

extension Detective {
    //MARK: Enums

    public enum MemberDisabledReason: String, CustomStringConvertible, Codable {
        case volumeTooHigh = "VOLUME_TOO_HIGH"
        case volumeUnknown = "VOLUME_UNKNOWN"
        public var description: String { return self.rawValue }
    }

    public enum MemberStatus: String, CustomStringConvertible, Codable {
        case invited = "INVITED"
        case verificationInProgress = "VERIFICATION_IN_PROGRESS"
        case verificationFailed = "VERIFICATION_FAILED"
        case enabled = "ENABLED"
        case acceptedButDisabled = "ACCEPTED_BUT_DISABLED"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AcceptInvitationRequest: AWSShape {

        /// The ARN of the behavior graph that the member account is accepting the invitation for. The member account status in the behavior graph must be INVITED.
        public let graphArn: String

        public init(graphArn: String) {
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
        }
    }

    public struct Account: AWSShape {

        /// The account identifier of the AWS account.
        public let accountId: String
        /// The AWS account root user email address for the AWS account.
        public let emailAddress: String

        public init(accountId: String, emailAddress: String) {
            self.accountId = accountId
            self.emailAddress = emailAddress
        }

        public func validate(name: String) throws {
            try validate(self.accountId, name:"accountId", parent: name, max: 12)
            try validate(self.accountId, name:"accountId", parent: name, min: 12)
            try validate(self.accountId, name:"accountId", parent: name, pattern: "^[0-9]+$")
            try validate(self.emailAddress, name:"emailAddress", parent: name, max: 64)
            try validate(self.emailAddress, name:"emailAddress", parent: name, min: 1)
            try validate(self.emailAddress, name:"emailAddress", parent: name, pattern: "^.+@.+$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case emailAddress = "EmailAddress"
        }
    }

    public struct CreateGraphResponse: AWSShape {

        /// The ARN of the new behavior graph.
        public let graphArn: String?

        public init(graphArn: String? = nil) {
            self.graphArn = graphArn
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
        }
    }

    public struct CreateMembersRequest: AWSShape {

        /// The list of AWS accounts to invite to become member accounts in the behavior graph. For each invited account, the account list contains the account identifier and the AWS account root user email address.
        public let accounts: [Account]
        /// The ARN of the behavior graph to invite the member accounts to contribute their data to.
        public let graphArn: String
        /// Customized message text to include in the invitation email message to the invited member accounts.
        public let message: String?

        public init(accounts: [Account], graphArn: String, message: String? = nil) {
            self.accounts = accounts
            self.graphArn = graphArn
            self.message = message
        }

        public func validate(name: String) throws {
            try self.accounts.forEach {
                try $0.validate(name: "\(name).accounts[]")
            }
            try validate(self.accounts, name:"accounts", parent: name, max: 50)
            try validate(self.accounts, name:"accounts", parent: name, min: 1)
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
            try validate(self.message, name:"message", parent: name, max: 1000)
            try validate(self.message, name:"message", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case accounts = "Accounts"
            case graphArn = "GraphArn"
            case message = "Message"
        }
    }

    public struct CreateMembersResponse: AWSShape {

        /// The set of member account invitation requests that Detective was able to process. This includes accounts that are being verified, that failed verification, and that passed verification and are being sent an invitation.
        public let members: [MemberDetail]?
        /// The list of accounts for which Detective was unable to process the invitation request. For each account, the list provides the reason why the request could not be processed. The list includes accounts that are already member accounts in the behavior graph.
        public let unprocessedAccounts: [UnprocessedAccount]?

        public init(members: [MemberDetail]? = nil, unprocessedAccounts: [UnprocessedAccount]? = nil) {
            self.members = members
            self.unprocessedAccounts = unprocessedAccounts
        }

        private enum CodingKeys: String, CodingKey {
            case members = "Members"
            case unprocessedAccounts = "UnprocessedAccounts"
        }
    }

    public struct DeleteGraphRequest: AWSShape {

        /// The ARN of the behavior graph to disable.
        public let graphArn: String

        public init(graphArn: String) {
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
        }
    }

    public struct DeleteMembersRequest: AWSShape {

        /// The list of AWS account identifiers for the member accounts to delete from the behavior graph.
        public let accountIds: [String]
        /// The ARN of the behavior graph to delete members from.
        public let graphArn: String

        public init(accountIds: [String], graphArn: String) {
            self.accountIds = accountIds
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try self.accountIds.forEach {
                try validate($0, name: "accountIds[]", parent: name, max: 12)
                try validate($0, name: "accountIds[]", parent: name, min: 12)
                try validate($0, name: "accountIds[]", parent: name, pattern: "^[0-9]+$")
            }
            try validate(self.accountIds, name:"accountIds", parent: name, max: 50)
            try validate(self.accountIds, name:"accountIds", parent: name, min: 1)
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountIds = "AccountIds"
            case graphArn = "GraphArn"
        }
    }

    public struct DeleteMembersResponse: AWSShape {

        /// The list of AWS account identifiers for the member accounts that Detective successfully deleted from the behavior graph.
        public let accountIds: [String]?
        /// The list of member accounts that Detective was not able to delete from the behavior graph. For each member account, provides the reason that the deletion could not be processed.
        public let unprocessedAccounts: [UnprocessedAccount]?

        public init(accountIds: [String]? = nil, unprocessedAccounts: [UnprocessedAccount]? = nil) {
            self.accountIds = accountIds
            self.unprocessedAccounts = unprocessedAccounts
        }

        private enum CodingKeys: String, CodingKey {
            case accountIds = "AccountIds"
            case unprocessedAccounts = "UnprocessedAccounts"
        }
    }

    public struct DisassociateMembershipRequest: AWSShape {

        /// The ARN of the behavior graph to remove the member account from. The member account's member status in the behavior graph must be ENABLED.
        public let graphArn: String

        public init(graphArn: String) {
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
        }
    }

    public struct GetMembersRequest: AWSShape {

        /// The list of AWS account identifiers for the member account for which to return member details. You cannot use GetMembers to retrieve information about member accounts that were removed from the behavior graph.
        public let accountIds: [String]
        /// The ARN of the behavior graph for which to request the member details.
        public let graphArn: String

        public init(accountIds: [String], graphArn: String) {
            self.accountIds = accountIds
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try self.accountIds.forEach {
                try validate($0, name: "accountIds[]", parent: name, max: 12)
                try validate($0, name: "accountIds[]", parent: name, min: 12)
                try validate($0, name: "accountIds[]", parent: name, pattern: "^[0-9]+$")
            }
            try validate(self.accountIds, name:"accountIds", parent: name, max: 50)
            try validate(self.accountIds, name:"accountIds", parent: name, min: 1)
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountIds = "AccountIds"
            case graphArn = "GraphArn"
        }
    }

    public struct GetMembersResponse: AWSShape {

        /// The member account details that Detective is returning in response to the request.
        public let memberDetails: [MemberDetail]?
        /// The requested member accounts for which Detective was unable to return member details. For each account, provides the reason why the request could not be processed.
        public let unprocessedAccounts: [UnprocessedAccount]?

        public init(memberDetails: [MemberDetail]? = nil, unprocessedAccounts: [UnprocessedAccount]? = nil) {
            self.memberDetails = memberDetails
            self.unprocessedAccounts = unprocessedAccounts
        }

        private enum CodingKeys: String, CodingKey {
            case memberDetails = "MemberDetails"
            case unprocessedAccounts = "UnprocessedAccounts"
        }
    }

    public struct Graph: AWSShape {

        /// The ARN of the behavior graph.
        public let arn: String?
        /// The date and time that the behavior graph was created. The value is in milliseconds since the epoch.
        public let createdTime: TimeStamp?

        public init(arn: String? = nil, createdTime: TimeStamp? = nil) {
            self.arn = arn
            self.createdTime = createdTime
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case createdTime = "CreatedTime"
        }
    }

    public struct ListGraphsRequest: AWSShape {

        /// The maximum number of graphs to return at a time. The total must be less than the overall limit on the number of results to return, which is currently 200.
        public let maxResults: Int?
        /// For requests to get the next page of results, the pagination token that was returned with the previous set of results. The initial request does not include a pagination token.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 200)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListGraphsResponse: AWSShape {

        /// A list of behavior graphs that the account is a master for.
        public let graphList: [Graph]?
        /// If there are more behavior graphs remaining in the results, then this is the pagination token to use to request the next page of behavior graphs.
        public let nextToken: String?

        public init(graphList: [Graph]? = nil, nextToken: String? = nil) {
            self.graphList = graphList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case graphList = "GraphList"
            case nextToken = "NextToken"
        }
    }

    public struct ListInvitationsRequest: AWSShape {

        /// The maximum number of behavior graph invitations to return in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.
        public let maxResults: Int?
        /// For requests to retrieve the next page of results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 200)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListInvitationsResponse: AWSShape {

        /// The list of behavior graphs for which the member account has open or accepted invitations.
        public let invitations: [MemberDetail]?
        /// If there are more behavior graphs remaining in the results, then this is the pagination token to use to request the next page of behavior graphs.
        public let nextToken: String?

        public init(invitations: [MemberDetail]? = nil, nextToken: String? = nil) {
            self.invitations = invitations
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case invitations = "Invitations"
            case nextToken = "NextToken"
        }
    }

    public struct ListMembersRequest: AWSShape {

        /// The ARN of the behavior graph for which to retrieve the list of member accounts.
        public let graphArn: String
        /// The maximum number of member accounts to include in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.
        public let maxResults: Int?
        /// For requests to retrieve the next page of member account results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.
        public let nextToken: String?

        public init(graphArn: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.graphArn = graphArn
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 200)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListMembersResponse: AWSShape {

        /// The list of member accounts in the behavior graph. The results include member accounts that did not pass verification and member accounts that have not yet accepted the invitation to the behavior graph. The results do not include member accounts that were removed from the behavior graph.
        public let memberDetails: [MemberDetail]?
        /// If there are more member accounts remaining in the results, then this is the pagination token to use to request the next page of member accounts.
        public let nextToken: String?

        public init(memberDetails: [MemberDetail]? = nil, nextToken: String? = nil) {
            self.memberDetails = memberDetails
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case memberDetails = "MemberDetails"
            case nextToken = "NextToken"
        }
    }

    public struct MemberDetail: AWSShape {

        /// The AWS account identifier for the member account.
        public let accountId: String?
        /// For member accounts with a status of ACCEPTED_BUT_DISABLED, the reason that the member account is not enabled. The reason can have one of the following values:    VOLUME_TOO_HIGH - Indicates that adding the member account would cause the data volume for the behavior graph to be too high.    VOLUME_UNKNOWN - Indicates that Detective is unable to verify the data volume for the member account. This is usually because the member account is not enrolled in Amazon GuardDuty.   
        public let disabledReason: MemberDisabledReason?
        /// The AWS account root user email address for the member account.
        public let emailAddress: String?
        /// The ARN of the behavior graph that the member account was invited to.
        public let graphArn: String?
        /// The date and time that Detective sent the invitation to the member account. The value is in milliseconds since the epoch.
        public let invitedTime: TimeStamp?
        /// The AWS account identifier of the master account for the behavior graph.
        public let masterId: String?
        /// The member account data volume as a percentage of the maximum allowed data volume. 0 indicates 0 percent, and 100 indicates 100 percent. Note that this is not the percentage of the behavior graph data volume. For example, the data volume for the behavior graph is 80 GB per day. The maximum data volume is 160 GB per day. If the data volume for the member account is 40 GB per day, then PercentOfGraphUtilization is 25. It represents 25% of the maximum allowed data volume. 
        public let percentOfGraphUtilization: Double?
        /// The date and time when the graph utilization percentage was last updated.
        public let percentOfGraphUtilizationUpdatedTime: TimeStamp?
        /// The current membership status of the member account. The status can have one of the following values:    INVITED - Indicates that the member was sent an invitation but has not yet responded.    VERIFICATION_IN_PROGRESS - Indicates that Detective is verifying that the account identifier and email address provided for the member account match. If they do match, then Detective sends the invitation. If the email address and account identifier don't match, then the member cannot be added to the behavior graph.    VERIFICATION_FAILED - Indicates that the account and email address provided for the member account do not match, and Detective did not send an invitation to the account.    ENABLED - Indicates that the member account accepted the invitation to contribute to the behavior graph.    ACCEPTED_BUT_DISABLED - Indicates that the member account accepted the invitation but is prevented from contributing data to the behavior graph. DisabledReason provides the reason why the member account is not enabled.   Member accounts that declined an invitation or that were removed from the behavior graph are not included.
        public let status: MemberStatus?
        /// The date and time that the member account was last updated. The value is in milliseconds since the epoch.
        public let updatedTime: TimeStamp?

        public init(accountId: String? = nil, disabledReason: MemberDisabledReason? = nil, emailAddress: String? = nil, graphArn: String? = nil, invitedTime: TimeStamp? = nil, masterId: String? = nil, percentOfGraphUtilization: Double? = nil, percentOfGraphUtilizationUpdatedTime: TimeStamp? = nil, status: MemberStatus? = nil, updatedTime: TimeStamp? = nil) {
            self.accountId = accountId
            self.disabledReason = disabledReason
            self.emailAddress = emailAddress
            self.graphArn = graphArn
            self.invitedTime = invitedTime
            self.masterId = masterId
            self.percentOfGraphUtilization = percentOfGraphUtilization
            self.percentOfGraphUtilizationUpdatedTime = percentOfGraphUtilizationUpdatedTime
            self.status = status
            self.updatedTime = updatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case disabledReason = "DisabledReason"
            case emailAddress = "EmailAddress"
            case graphArn = "GraphArn"
            case invitedTime = "InvitedTime"
            case masterId = "MasterId"
            case percentOfGraphUtilization = "PercentOfGraphUtilization"
            case percentOfGraphUtilizationUpdatedTime = "PercentOfGraphUtilizationUpdatedTime"
            case status = "Status"
            case updatedTime = "UpdatedTime"
        }
    }

    public struct RejectInvitationRequest: AWSShape {

        /// The ARN of the behavior graph to reject the invitation to. The member account's current member status in the behavior graph must be INVITED.
        public let graphArn: String

        public init(graphArn: String) {
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case graphArn = "GraphArn"
        }
    }

    public struct StartMonitoringMemberRequest: AWSShape {

        /// The account ID of the member account to try to enable. The account must be an invited member account with a status of ACCEPTED_BUT_DISABLED. 
        public let accountId: String
        /// The ARN of the behavior graph.
        public let graphArn: String

        public init(accountId: String, graphArn: String) {
            self.accountId = accountId
            self.graphArn = graphArn
        }

        public func validate(name: String) throws {
            try validate(self.accountId, name:"accountId", parent: name, max: 12)
            try validate(self.accountId, name:"accountId", parent: name, min: 12)
            try validate(self.accountId, name:"accountId", parent: name, pattern: "^[0-9]+$")
            try validate(self.graphArn, name:"graphArn", parent: name, pattern: "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case graphArn = "GraphArn"
        }
    }

    public struct UnprocessedAccount: AWSShape {

        /// The AWS account identifier of the member account that was not processed.
        public let accountId: String?
        /// The reason that the member account request could not be processed.
        public let reason: String?

        public init(accountId: String? = nil, reason: String? = nil) {
            self.accountId = accountId
            self.reason = reason
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case reason = "Reason"
        }
    }
}
