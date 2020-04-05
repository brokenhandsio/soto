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

extension CodeGuruReviewer {
    //MARK: Enums

    public enum ProviderType: String, CustomStringConvertible, Codable {
        case codecommit = "CodeCommit"
        case github = "GitHub"
        public var description: String { return self.rawValue }
    }

    public enum RepositoryAssociationState: String, CustomStringConvertible, Codable {
        case associated = "Associated"
        case associating = "Associating"
        case failed = "Failed"
        case disassociating = "Disassociating"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AssociateRepositoryRequest: AWSShape {

        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you want to add a new repository association, this parameter specifies a unique identifier for the new repository association that helps ensure idempotency. If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a ClientRequestToken yourself for new versions and include that value in the request. You typically only need to interact with this value if you implement your own retry logic and want to ensure that a given repository association is not created twice. We recommend that you generate a UUID-type value to ensure uniqueness within the specified repository association. Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository associations if there are failures and retries. 
        public let clientRequestToken: String?
        /// The repository to associate.
        public let repository: Repository

        public init(clientRequestToken: String? = AssociateRepositoryRequest.idempotencyToken(), repository: Repository) {
            self.clientRequestToken = clientRequestToken
            self.repository = repository
        }

        public func validate(name: String) throws {
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, max: 64)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, min: 1)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, pattern: "^[\\w-]+$")
            try self.repository.validate(name: "\(name).repository")
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case repository = "Repository"
        }
    }

    public struct AssociateRepositoryResponse: AWSShape {

        /// Information about the repository association.
        public let repositoryAssociation: RepositoryAssociation?

        public init(repositoryAssociation: RepositoryAssociation? = nil) {
            self.repositoryAssociation = repositoryAssociation
        }

        private enum CodingKeys: String, CodingKey {
            case repositoryAssociation = "RepositoryAssociation"
        }
    }

    public struct CodeCommitRepository: AWSShape {

        /// The name of the AWS CodeCommit repository.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public func validate(name: String) throws {
            try validate(self.name, name:"name", parent: name, max: 100)
            try validate(self.name, name:"name", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct DescribeRepositoryAssociationRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "associationArn", location: .uri(locationName: "AssociationArn"))
        ]

        /// The Amazon Resource Name (ARN) identifying the association.
        public let associationArn: String

        public init(associationArn: String) {
            self.associationArn = associationArn
        }

        public func validate(name: String) throws {
            try validate(self.associationArn, name:"associationArn", parent: name, max: 1600)
            try validate(self.associationArn, name:"associationArn", parent: name, min: 1)
            try validate(self.associationArn, name:"associationArn", parent: name, pattern: "^arn:aws[^:\\s]*:codeguru-reviewer:[^:\\s]+:[\\d]{12}:[a-z]+:[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case associationArn = "AssociationArn"
        }
    }

    public struct DescribeRepositoryAssociationResponse: AWSShape {

        /// Information about the repository association.
        public let repositoryAssociation: RepositoryAssociation?

        public init(repositoryAssociation: RepositoryAssociation? = nil) {
            self.repositoryAssociation = repositoryAssociation
        }

        private enum CodingKeys: String, CodingKey {
            case repositoryAssociation = "RepositoryAssociation"
        }
    }

    public struct DisassociateRepositoryRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "associationArn", location: .uri(locationName: "AssociationArn"))
        ]

        /// The Amazon Resource Name (ARN) identifying the association.
        public let associationArn: String

        public init(associationArn: String) {
            self.associationArn = associationArn
        }

        public func validate(name: String) throws {
            try validate(self.associationArn, name:"associationArn", parent: name, max: 1600)
            try validate(self.associationArn, name:"associationArn", parent: name, min: 1)
            try validate(self.associationArn, name:"associationArn", parent: name, pattern: "^arn:aws[^:\\s]*:codeguru-reviewer:[^:\\s]+:[\\d]{12}:[a-z]+:[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case associationArn = "AssociationArn"
        }
    }

    public struct DisassociateRepositoryResponse: AWSShape {

        /// Information about the disassociated repository.
        public let repositoryAssociation: RepositoryAssociation?

        public init(repositoryAssociation: RepositoryAssociation? = nil) {
            self.repositoryAssociation = repositoryAssociation
        }

        private enum CodingKeys: String, CodingKey {
            case repositoryAssociation = "RepositoryAssociation"
        }
    }

    public struct ListRepositoryAssociationsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "names", location: .querystring(locationName: "Name")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken")), 
            AWSMemberEncoding(label: "owners", location: .querystring(locationName: "Owner")), 
            AWSMemberEncoding(label: "providerTypes", location: .querystring(locationName: "ProviderType")), 
            AWSMemberEncoding(label: "states", location: .querystring(locationName: "State"))
        ]

        /// The maximum number of repository association results returned by ListRepositoryAssociations in paginated output. When this parameter is used, ListRepositoryAssociations only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListRepositoryAssociations request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListRepositoryAssociations returns up to 100 results and a nextToken value if applicable. 
        public let maxResults: Int?
        /// List of names to use as a filter.
        public let names: [String]?
        /// The nextToken value returned from a previous paginated ListRepositoryAssociations request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.   This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        public let nextToken: String?
        /// List of owners to use as a filter. For AWS CodeCommit, the owner is the AWS account id. For GitHub, it is the GitHub account name.
        public let owners: [String]?
        /// List of provider types to use as a filter.
        public let providerTypes: [ProviderType]?
        /// List of states to use as a filter.
        public let states: [RepositoryAssociationState]?

        public init(maxResults: Int? = nil, names: [String]? = nil, nextToken: String? = nil, owners: [String]? = nil, providerTypes: [ProviderType]? = nil, states: [RepositoryAssociationState]? = nil) {
            self.maxResults = maxResults
            self.names = names
            self.nextToken = nextToken
            self.owners = owners
            self.providerTypes = providerTypes
            self.states = states
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 100)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try self.names?.forEach {
                try validate($0, name: "names[]", parent: name, max: 100)
                try validate($0, name: "names[]", parent: name, min: 1)
            }
            try validate(self.names, name:"names", parent: name, max: 3)
            try validate(self.names, name:"names", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 2048)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try self.owners?.forEach {
                try validate($0, name: "owners[]", parent: name, max: 100)
                try validate($0, name: "owners[]", parent: name, min: 1)
            }
            try validate(self.owners, name:"owners", parent: name, max: 3)
            try validate(self.owners, name:"owners", parent: name, min: 1)
            try validate(self.providerTypes, name:"providerTypes", parent: name, max: 3)
            try validate(self.providerTypes, name:"providerTypes", parent: name, min: 1)
            try validate(self.states, name:"states", parent: name, max: 3)
            try validate(self.states, name:"states", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case names = "Name"
            case nextToken = "NextToken"
            case owners = "Owner"
            case providerTypes = "ProviderType"
            case states = "State"
        }
    }

    public struct ListRepositoryAssociationsResponse: AWSShape {

        /// The nextToken value to include in a future ListRecommendations request. When the results of a ListRecommendations request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return. 
        public let nextToken: String?
        /// A list of repository associations that meet the criteria of the request.
        public let repositoryAssociationSummaries: [RepositoryAssociationSummary]?

        public init(nextToken: String? = nil, repositoryAssociationSummaries: [RepositoryAssociationSummary]? = nil) {
            self.nextToken = nextToken
            self.repositoryAssociationSummaries = repositoryAssociationSummaries
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case repositoryAssociationSummaries = "RepositoryAssociationSummaries"
        }
    }

    public struct Repository: AWSShape {

        /// Information about an AWS CodeCommit repository.
        public let codeCommit: CodeCommitRepository?

        public init(codeCommit: CodeCommitRepository? = nil) {
            self.codeCommit = codeCommit
        }

        public func validate(name: String) throws {
            try self.codeCommit?.validate(name: "\(name).codeCommit")
        }

        private enum CodingKeys: String, CodingKey {
            case codeCommit = "CodeCommit"
        }
    }

    public struct RepositoryAssociation: AWSShape {

        /// The Amazon Resource Name (ARN) identifying the repository association.
        public let associationArn: String?
        /// The id of the repository association.
        public let associationId: String?
        /// The time, in milliseconds since the epoch, when the repository association was created.
        public let createdTimeStamp: TimeStamp?
        /// The time, in milliseconds since the epoch, when the repository association was last updated.
        public let lastUpdatedTimeStamp: TimeStamp?
        /// The name of the repository.
        public let name: String?
        /// The owner of the repository.
        public let owner: String?
        /// The provider type of the repository association.
        public let providerType: ProviderType?
        /// The state of the repository association.
        public let state: RepositoryAssociationState?
        /// A description of why the repository association is in the current state.
        public let stateReason: String?

        public init(associationArn: String? = nil, associationId: String? = nil, createdTimeStamp: TimeStamp? = nil, lastUpdatedTimeStamp: TimeStamp? = nil, name: String? = nil, owner: String? = nil, providerType: ProviderType? = nil, state: RepositoryAssociationState? = nil, stateReason: String? = nil) {
            self.associationArn = associationArn
            self.associationId = associationId
            self.createdTimeStamp = createdTimeStamp
            self.lastUpdatedTimeStamp = lastUpdatedTimeStamp
            self.name = name
            self.owner = owner
            self.providerType = providerType
            self.state = state
            self.stateReason = stateReason
        }

        private enum CodingKeys: String, CodingKey {
            case associationArn = "AssociationArn"
            case associationId = "AssociationId"
            case createdTimeStamp = "CreatedTimeStamp"
            case lastUpdatedTimeStamp = "LastUpdatedTimeStamp"
            case name = "Name"
            case owner = "Owner"
            case providerType = "ProviderType"
            case state = "State"
            case stateReason = "StateReason"
        }
    }

    public struct RepositoryAssociationSummary: AWSShape {

        /// The Amazon Resource Name (ARN) identifying the repository association.
        public let associationArn: String?
        /// The repository association ID.
        public let associationId: String?
        /// The time, in milliseconds since the epoch, since the repository association was last updated. 
        public let lastUpdatedTimeStamp: TimeStamp?
        /// The name of the repository association.
        public let name: String?
        /// The owner of the repository association.
        public let owner: String?
        /// The provider type of the repository association.
        public let providerType: ProviderType?
        /// The state of the repository association.  Associated  Amazon CodeGuru Reviewer is associated with the repository.   Associating  The association is in progress.   Failed  The association failed. For more information about troubleshooting (or why it failed), see [troubleshooting topic].   Disassociating  Amazon CodeGuru Reviewer is in the process of disassociating with the repository.   
        public let state: RepositoryAssociationState?

        public init(associationArn: String? = nil, associationId: String? = nil, lastUpdatedTimeStamp: TimeStamp? = nil, name: String? = nil, owner: String? = nil, providerType: ProviderType? = nil, state: RepositoryAssociationState? = nil) {
            self.associationArn = associationArn
            self.associationId = associationId
            self.lastUpdatedTimeStamp = lastUpdatedTimeStamp
            self.name = name
            self.owner = owner
            self.providerType = providerType
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case associationArn = "AssociationArn"
            case associationId = "AssociationId"
            case lastUpdatedTimeStamp = "LastUpdatedTimeStamp"
            case name = "Name"
            case owner = "Owner"
            case providerType = "ProviderType"
            case state = "State"
        }
    }
}
