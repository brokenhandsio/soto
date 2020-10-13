//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension MTurk {
    ///   The ListAssignmentsForHIT operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.   You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.   Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.   Only the Requester who created the HIT can retrieve the assignments for that HIT.   Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAssignmentsForHITPaginator<Result>(
        _ input: ListAssignmentsForHITRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListAssignmentsForHITResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAssignmentsForHIT,
            tokenKey: \ListAssignmentsForHITResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAssignmentsForHITPaginator(
        _ input: ListAssignmentsForHITRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssignmentsForHITResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssignmentsForHIT,
            tokenKey: \ListAssignmentsForHITResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBonusPaymentsPaginator<Result>(
        _ input: ListBonusPaymentsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListBonusPaymentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBonusPayments,
            tokenKey: \ListBonusPaymentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBonusPaymentsPaginator(
        _ input: ListBonusPaymentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBonusPaymentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBonusPayments,
            tokenKey: \ListBonusPaymentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListHITs operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listHITsPaginator<Result>(
        _ input: ListHITsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListHITsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHITs,
            tokenKey: \ListHITsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listHITsPaginator(
        _ input: ListHITsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListHITsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHITs,
            tokenKey: \ListHITsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the DeleteHIT operation or that have been auto-deleted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listHITsForQualificationTypePaginator<Result>(
        _ input: ListHITsForQualificationTypeRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListHITsForQualificationTypeResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHITsForQualificationType,
            tokenKey: \ListHITsForQualificationTypeResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listHITsForQualificationTypePaginator(
        _ input: ListHITsForQualificationTypeRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListHITsForQualificationTypeResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHITsForQualificationType,
            tokenKey: \ListHITsForQualificationTypeResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listQualificationRequestsPaginator<Result>(
        _ input: ListQualificationRequestsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListQualificationRequestsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listQualificationRequests,
            tokenKey: \ListQualificationRequestsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listQualificationRequestsPaginator(
        _ input: ListQualificationRequestsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListQualificationRequestsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQualificationRequests,
            tokenKey: \ListQualificationRequestsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listQualificationTypesPaginator<Result>(
        _ input: ListQualificationTypesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListQualificationTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listQualificationTypes,
            tokenKey: \ListQualificationTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listQualificationTypesPaginator(
        _ input: ListQualificationTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListQualificationTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQualificationTypes,
            tokenKey: \ListQualificationTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listReviewPolicyResultsForHITPaginator<Result>(
        _ input: ListReviewPolicyResultsForHITRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListReviewPolicyResultsForHITResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listReviewPolicyResultsForHIT,
            tokenKey: \ListReviewPolicyResultsForHITResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listReviewPolicyResultsForHITPaginator(
        _ input: ListReviewPolicyResultsForHITRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListReviewPolicyResultsForHITResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listReviewPolicyResultsForHIT,
            tokenKey: \ListReviewPolicyResultsForHITResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listReviewableHITsPaginator<Result>(
        _ input: ListReviewableHITsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListReviewableHITsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listReviewableHITs,
            tokenKey: \ListReviewableHITsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listReviewableHITsPaginator(
        _ input: ListReviewableHITsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListReviewableHITsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listReviewableHITs,
            tokenKey: \ListReviewableHITsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listWorkerBlocksPaginator<Result>(
        _ input: ListWorkerBlocksRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListWorkerBlocksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkerBlocks,
            tokenKey: \ListWorkerBlocksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listWorkerBlocksPaginator(
        _ input: ListWorkerBlocksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorkerBlocksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkerBlocks,
            tokenKey: \ListWorkerBlocksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listWorkersWithQualificationTypePaginator<Result>(
        _ input: ListWorkersWithQualificationTypeRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListWorkersWithQualificationTypeResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkersWithQualificationType,
            tokenKey: \ListWorkersWithQualificationTypeResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listWorkersWithQualificationTypePaginator(
        _ input: ListWorkersWithQualificationTypeRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorkersWithQualificationTypeResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkersWithQualificationType,
            tokenKey: \ListWorkersWithQualificationTypeResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension MTurk.ListAssignmentsForHITRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListAssignmentsForHITRequest {
        return .init(
            assignmentStatuses: self.assignmentStatuses,
            hITId: self.hITId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MTurk.ListBonusPaymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListBonusPaymentsRequest {
        return .init(
            assignmentId: self.assignmentId,
            hITId: self.hITId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MTurk.ListHITsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListHITsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MTurk.ListHITsForQualificationTypeRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListHITsForQualificationTypeRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            qualificationTypeId: self.qualificationTypeId
        )
    }
}

extension MTurk.ListQualificationRequestsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListQualificationRequestsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            qualificationTypeId: self.qualificationTypeId
        )
    }
}

extension MTurk.ListQualificationTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListQualificationTypesRequest {
        return .init(
            maxResults: self.maxResults,
            mustBeOwnedByCaller: self.mustBeOwnedByCaller,
            mustBeRequestable: self.mustBeRequestable,
            nextToken: token,
            query: self.query
        )
    }
}

extension MTurk.ListReviewPolicyResultsForHITRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListReviewPolicyResultsForHITRequest {
        return .init(
            hITId: self.hITId,
            maxResults: self.maxResults,
            nextToken: token,
            policyLevels: self.policyLevels,
            retrieveActions: self.retrieveActions,
            retrieveResults: self.retrieveResults
        )
    }
}

extension MTurk.ListReviewableHITsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListReviewableHITsRequest {
        return .init(
            hITTypeId: self.hITTypeId,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension MTurk.ListWorkerBlocksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListWorkerBlocksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MTurk.ListWorkersWithQualificationTypeRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MTurk.ListWorkersWithQualificationTypeRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            qualificationTypeId: self.qualificationTypeId,
            status: self.status
        )
    }
}
