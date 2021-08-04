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

/// Service object for interacting with AWS AuditManager service.
///
/// Welcome to the Audit Manager API reference. This guide is for developers who need detailed information about the Audit Manager API operations, data types, and errors.  Audit Manager is a service that provides automated evidence collection so that you can continuously audit your Amazon Web Services usage, and assess the effectiveness of your controls to better manage risk and simplify compliance. Audit Manager provides pre-built frameworks that structure and automate assessments for a given compliance standard. Frameworks include a pre-built collection of controls with descriptions and testing procedures, which are grouped according to the requirements of the specified compliance standard or regulation. You can also customize frameworks and controls to support internal audits with unique requirements.  Use the following links to get started with the Audit Manager API:    Actions: An alphabetical list of all Audit Manager API operations.    Data types: An alphabetical list of all Audit Manager data types.    Common parameters: Parameters that all Query operations can use.    Common errors: Client and server errors that all operations can return.   If you're new to Audit Manager, we recommend that you review the  Audit Manager User Guide.
public struct AuditManager: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AuditManager client
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
            service: "auditmanager",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: AuditManagerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Associates an evidence folder to the specified assessment report in Audit Manager.
    public func associateAssessmentReportEvidenceFolder(_ input: AssociateAssessmentReportEvidenceFolderRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAssessmentReportEvidenceFolderResponse> {
        return self.client.execute(operation: "AssociateAssessmentReportEvidenceFolder", path: "/assessments/{assessmentId}/associateToAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Associates a list of evidence to an assessment report in an Audit Manager assessment.
    public func batchAssociateAssessmentReportEvidence(_ input: BatchAssociateAssessmentReportEvidenceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAssociateAssessmentReportEvidenceResponse> {
        return self.client.execute(operation: "BatchAssociateAssessmentReportEvidence", path: "/assessments/{assessmentId}/batchAssociateToAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Create a batch of delegations for a specified assessment in Audit Manager.
    public func batchCreateDelegationByAssessment(_ input: BatchCreateDelegationByAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateDelegationByAssessmentResponse> {
        return self.client.execute(operation: "BatchCreateDelegationByAssessment", path: "/assessments/{assessmentId}/delegations", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deletes the delegations in the specified Audit Manager assessment.
    public func batchDeleteDelegationByAssessment(_ input: BatchDeleteDelegationByAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteDelegationByAssessmentResponse> {
        return self.client.execute(operation: "BatchDeleteDelegationByAssessment", path: "/assessments/{assessmentId}/delegations", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Disassociates a list of evidence from the specified assessment report in Audit Manager.
    public func batchDisassociateAssessmentReportEvidence(_ input: BatchDisassociateAssessmentReportEvidenceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDisassociateAssessmentReportEvidenceResponse> {
        return self.client.execute(operation: "BatchDisassociateAssessmentReportEvidence", path: "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Uploads one or more pieces of evidence to the specified control in the assessment in Audit Manager.
    public func batchImportEvidenceToAssessmentControl(_ input: BatchImportEvidenceToAssessmentControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchImportEvidenceToAssessmentControlResponse> {
        return self.client.execute(operation: "BatchImportEvidenceToAssessmentControl", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Creates an assessment in Audit Manager.
    public func createAssessment(_ input: CreateAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssessmentResponse> {
        return self.client.execute(operation: "CreateAssessment", path: "/assessments", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Creates a custom framework in Audit Manager.
    public func createAssessmentFramework(_ input: CreateAssessmentFrameworkRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssessmentFrameworkResponse> {
        return self.client.execute(operation: "CreateAssessmentFramework", path: "/assessmentFrameworks", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Creates an assessment report for the specified assessment.
    public func createAssessmentReport(_ input: CreateAssessmentReportRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssessmentReportResponse> {
        return self.client.execute(operation: "CreateAssessmentReport", path: "/assessments/{assessmentId}/reports", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Creates a new custom control in Audit Manager.
    public func createControl(_ input: CreateControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateControlResponse> {
        return self.client.execute(operation: "CreateControl", path: "/controls", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deletes an assessment in Audit Manager.
    public func deleteAssessment(_ input: DeleteAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssessmentResponse> {
        return self.client.execute(operation: "DeleteAssessment", path: "/assessments/{assessmentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deletes a custom framework in Audit Manager.
    public func deleteAssessmentFramework(_ input: DeleteAssessmentFrameworkRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssessmentFrameworkResponse> {
        return self.client.execute(operation: "DeleteAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deletes an assessment report from an assessment in Audit Manager.
    public func deleteAssessmentReport(_ input: DeleteAssessmentReportRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssessmentReportResponse> {
        return self.client.execute(operation: "DeleteAssessmentReport", path: "/assessments/{assessmentId}/reports/{assessmentReportId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deletes a custom control in Audit Manager.
    public func deleteControl(_ input: DeleteControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteControlResponse> {
        return self.client.execute(operation: "DeleteControl", path: "/controls/{controlId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Deregisters an account in Audit Manager.
    public func deregisterAccount(_ input: DeregisterAccountRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterAccountResponse> {
        return self.client.execute(operation: "DeregisterAccount", path: "/account/deregisterAccount", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes the specified member account as a delegated administrator for Audit Manager.   When you remove a delegated administrator from your Audit Manager settings, or when you deregister a delegated administrator from Organizations, you continue to have access to the evidence that you previously collected under that account. However, Audit Manager will stop collecting and attaching evidence to that delegated administrator account moving forward.
    public func deregisterOrganizationAdminAccount(_ input: DeregisterOrganizationAdminAccountRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterOrganizationAdminAccountResponse> {
        return self.client.execute(operation: "DeregisterOrganizationAdminAccount", path: "/account/deregisterOrganizationAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Disassociates an evidence folder from the specified assessment report in Audit Manager.
    public func disassociateAssessmentReportEvidenceFolder(_ input: DisassociateAssessmentReportEvidenceFolderRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateAssessmentReportEvidenceFolderResponse> {
        return self.client.execute(operation: "DisassociateAssessmentReportEvidenceFolder", path: "/assessments/{assessmentId}/disassociateFromAssessmentReport", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns the registration status of an account in Audit Manager.
    public func getAccountStatus(_ input: GetAccountStatusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccountStatusResponse> {
        return self.client.execute(operation: "GetAccountStatus", path: "/account/status", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns an assessment from Audit Manager.
    public func getAssessment(_ input: GetAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssessmentResponse> {
        return self.client.execute(operation: "GetAssessment", path: "/assessments/{assessmentId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a framework from Audit Manager.
    public func getAssessmentFramework(_ input: GetAssessmentFrameworkRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssessmentFrameworkResponse> {
        return self.client.execute(operation: "GetAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns the URL of a specified assessment report in Audit Manager.
    public func getAssessmentReportUrl(_ input: GetAssessmentReportUrlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssessmentReportUrlResponse> {
        return self.client.execute(operation: "GetAssessmentReportUrl", path: "/assessments/{assessmentId}/reports/{assessmentReportId}/url", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of changelogs from Audit Manager.
    public func getChangeLogs(_ input: GetChangeLogsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChangeLogsResponse> {
        return self.client.execute(operation: "GetChangeLogs", path: "/assessments/{assessmentId}/changelogs", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a control from Audit Manager.
    public func getControl(_ input: GetControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetControlResponse> {
        return self.client.execute(operation: "GetControl", path: "/controls/{controlId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of delegations from an audit owner to a delegate.
    public func getDelegations(_ input: GetDelegationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDelegationsResponse> {
        return self.client.execute(operation: "GetDelegations", path: "/delegations", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns evidence from Audit Manager.
    public func getEvidence(_ input: GetEvidenceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEvidenceResponse> {
        return self.client.execute(operation: "GetEvidence", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns all evidence from a specified evidence folder in Audit Manager.
    public func getEvidenceByEvidenceFolder(_ input: GetEvidenceByEvidenceFolderRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEvidenceByEvidenceFolderResponse> {
        return self.client.execute(operation: "GetEvidenceByEvidenceFolder", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns an evidence folder from the specified assessment in Audit Manager.
    public func getEvidenceFolder(_ input: GetEvidenceFolderRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEvidenceFolderResponse> {
        return self.client.execute(operation: "GetEvidenceFolder", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns the evidence folders from a specified assessment in Audit Manager.
    public func getEvidenceFoldersByAssessment(_ input: GetEvidenceFoldersByAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEvidenceFoldersByAssessmentResponse> {
        return self.client.execute(operation: "GetEvidenceFoldersByAssessment", path: "/assessments/{assessmentId}/evidenceFolders", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of evidence folders associated with a specified control of an assessment in Audit Manager.
    public func getEvidenceFoldersByAssessmentControl(_ input: GetEvidenceFoldersByAssessmentControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEvidenceFoldersByAssessmentControlResponse> {
        return self.client.execute(operation: "GetEvidenceFoldersByAssessmentControl", path: "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns the name of the delegated Amazon Web Services administrator account for the organization.
    public func getOrganizationAdminAccount(_ input: GetOrganizationAdminAccountRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOrganizationAdminAccountResponse> {
        return self.client.execute(operation: "GetOrganizationAdminAccount", path: "/account/organizationAdminAccount", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of the in-scope Amazon Web Services services for the specified assessment.
    public func getServicesInScope(_ input: GetServicesInScopeRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServicesInScopeResponse> {
        return self.client.execute(operation: "GetServicesInScope", path: "/services", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns the settings for the specified account.
    public func getSettings(_ input: GetSettingsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSettingsResponse> {
        return self.client.execute(operation: "GetSettings", path: "/settings/{attribute}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of the frameworks available in the Audit Manager framework library.
    public func listAssessmentFrameworks(_ input: ListAssessmentFrameworksRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentFrameworksResponse> {
        return self.client.execute(operation: "ListAssessmentFrameworks", path: "/assessmentFrameworks", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of assessment reports created in Audit Manager.
    public func listAssessmentReports(_ input: ListAssessmentReportsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentReportsResponse> {
        return self.client.execute(operation: "ListAssessmentReports", path: "/assessmentReports", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of current and past assessments from Audit Manager.
    public func listAssessments(_ input: ListAssessmentsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentsResponse> {
        return self.client.execute(operation: "ListAssessments", path: "/assessments", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of controls from Audit Manager.
    public func listControls(_ input: ListControlsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListControlsResponse> {
        return self.client.execute(operation: "ListControls", path: "/controls", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of keywords that pre-mapped to the specified control data source.
    public func listKeywordsForDataSource(_ input: ListKeywordsForDataSourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKeywordsForDataSourceResponse> {
        return self.client.execute(operation: "ListKeywordsForDataSource", path: "/dataSourceKeywords", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of all Audit Manager notifications.
    public func listNotifications(_ input: ListNotificationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNotificationsResponse> {
        return self.client.execute(operation: "ListNotifications", path: "/notifications", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Returns a list of tags for the specified resource in Audit Manager.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Enables Audit Manager for the specified account.
    public func registerAccount(_ input: RegisterAccountRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterAccountResponse> {
        return self.client.execute(operation: "RegisterAccount", path: "/account/registerAccount", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Enables an account within the organization as the delegated administrator for Audit Manager.
    public func registerOrganizationAdminAccount(_ input: RegisterOrganizationAdminAccountRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterOrganizationAdminAccountResponse> {
        return self.client.execute(operation: "RegisterOrganizationAdminAccount", path: "/account/registerOrganizationAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Tags the specified resource in Audit Manager.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Removes a tag from a resource in Audit Manager.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Edits an Audit Manager assessment.
    public func updateAssessment(_ input: UpdateAssessmentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssessmentResponse> {
        return self.client.execute(operation: "UpdateAssessment", path: "/assessments/{assessmentId}", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates a control within an assessment in Audit Manager.
    public func updateAssessmentControl(_ input: UpdateAssessmentControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssessmentControlResponse> {
        return self.client.execute(operation: "UpdateAssessmentControl", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates the status of a control set in an Audit Manager assessment.
    public func updateAssessmentControlSetStatus(_ input: UpdateAssessmentControlSetStatusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssessmentControlSetStatusResponse> {
        return self.client.execute(operation: "UpdateAssessmentControlSetStatus", path: "/assessments/{assessmentId}/controlSets/{controlSetId}/status", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates a custom framework in Audit Manager.
    public func updateAssessmentFramework(_ input: UpdateAssessmentFrameworkRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssessmentFrameworkResponse> {
        return self.client.execute(operation: "UpdateAssessmentFramework", path: "/assessmentFrameworks/{frameworkId}", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates the status of an assessment in Audit Manager.
    public func updateAssessmentStatus(_ input: UpdateAssessmentStatusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssessmentStatusResponse> {
        return self.client.execute(operation: "UpdateAssessmentStatus", path: "/assessments/{assessmentId}/status", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates a custom control in Audit Manager.
    public func updateControl(_ input: UpdateControlRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateControlResponse> {
        return self.client.execute(operation: "UpdateControl", path: "/controls/{controlId}", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Updates Audit Manager settings for the current user account.
    public func updateSettings(_ input: UpdateSettingsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSettingsResponse> {
        return self.client.execute(operation: "UpdateSettings", path: "/settings", httpMethod: .PUT, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Validates the integrity of an assessment report in Audit Manager.
    public func validateAssessmentReportIntegrity(_ input: ValidateAssessmentReportIntegrityRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidateAssessmentReportIntegrityResponse> {
        return self.client.execute(operation: "ValidateAssessmentReportIntegrity", path: "/assessmentReports/integrity", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension AuditManager {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AuditManager, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
