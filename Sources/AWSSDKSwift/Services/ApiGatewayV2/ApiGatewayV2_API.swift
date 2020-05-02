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

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ApiGatewayV2 service.

Amazon API Gateway V2
*/
public struct ApiGatewayV2 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApiGatewayV2 client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            service: "apigateway",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApiGatewayV2ErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an Api resource.
    public func createApi(_ input: CreateApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiResponse> {
        return client.send(operation: "CreateApi", path: "/v2/apis", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an API mapping.
    public func createApiMapping(_ input: CreateApiMappingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiMappingResponse> {
        return client.send(operation: "CreateApiMapping", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Authorizer for an API.
    public func createAuthorizer(_ input: CreateAuthorizerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuthorizerResponse> {
        return client.send(operation: "CreateAuthorizer", path: "/v2/apis/{apiId}/authorizers", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Deployment for an API.
    public func createDeployment(_ input: CreateDeploymentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeploymentResponse> {
        return client.send(operation: "CreateDeployment", path: "/v2/apis/{apiId}/deployments", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a domain name.
    public func createDomainName(_ input: CreateDomainNameRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainNameResponse> {
        return client.send(operation: "CreateDomainName", path: "/v2/domainnames", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Integration.
    public func createIntegration(_ input: CreateIntegrationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationResult> {
        return client.send(operation: "CreateIntegration", path: "/v2/apis/{apiId}/integrations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an IntegrationResponses.
    public func createIntegrationResponse(_ input: CreateIntegrationResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationResponseResponse> {
        return client.send(operation: "CreateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Model for an API.
    public func createModel(_ input: CreateModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelResponse> {
        return client.send(operation: "CreateModel", path: "/v2/apis/{apiId}/models", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Route for an API.
    public func createRoute(_ input: CreateRouteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteResult> {
        return client.send(operation: "CreateRoute", path: "/v2/apis/{apiId}/routes", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a RouteResponse for a Route.
    public func createRouteResponse(_ input: CreateRouteResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteResponseResponse> {
        return client.send(operation: "CreateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Stage for an API.
    public func createStage(_ input: CreateStageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStageResponse> {
        return client.send(operation: "CreateStage", path: "/v2/apis/{apiId}/stages", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a VPC link.
    public func createVpcLink(_ input: CreateVpcLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcLinkResponse> {
        return client.send(operation: "CreateVpcLink", path: "/v2/vpclinks", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.
    @discardableResult public func deleteAccessLogSettings(_ input: DeleteAccessLogSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAccessLogSettings", path: "/v2/apis/{apiId}/stages/{stageName}/accesslogsettings", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an Api resource.
    @discardableResult public func deleteApi(_ input: DeleteApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApi", path: "/v2/apis/{apiId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an API mapping.
    @discardableResult public func deleteApiMapping(_ input: DeleteApiMappingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an Authorizer.
    @discardableResult public func deleteAuthorizer(_ input: DeleteAuthorizerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a CORS configuration.
    @discardableResult public func deleteCorsConfiguration(_ input: DeleteCorsConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCorsConfiguration", path: "/v2/apis/{apiId}/cors", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a Deployment.
    @discardableResult public func deleteDeployment(_ input: DeleteDeploymentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a domain name.
    @discardableResult public func deleteDomainName(_ input: DeleteDomainNameRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an Integration.
    @discardableResult public func deleteIntegration(_ input: DeleteIntegrationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an IntegrationResponses.
    @discardableResult public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a Model.
    @discardableResult public func deleteModel(_ input: DeleteModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a Route.
    @discardableResult public func deleteRoute(_ input: DeleteRouteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a route request parameter.
    @discardableResult public func deleteRouteRequestParameter(_ input: DeleteRouteRequestParameterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteRequestParameter", path: "/v2/apis/{apiId}/routes/{routeId}/requestparameters/{requestParameterKey}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a RouteResponse.
    @discardableResult public func deleteRouteResponse(_ input: DeleteRouteResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the RouteSettings for a stage.
    @discardableResult public func deleteRouteSettings(_ input: DeleteRouteSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteSettings", path: "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a Stage.
    @discardableResult public func deleteStage(_ input: DeleteStageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a VPC link.
    public func deleteVpcLink(_ input: DeleteVpcLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcLinkResponse> {
        return client.send(operation: "DeleteVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Exports a definition of an API in a particular output format and specification.
    public func exportApi(_ input: ExportApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportApiResponse> {
        return client.send(operation: "ExportApi", path: "/v2/apis/{apiId}/exports/{specification}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets an Api resource.
    public func getApi(_ input: GetApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiResponse> {
        return client.send(operation: "GetApi", path: "/v2/apis/{apiId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets an API mapping.
    public func getApiMapping(_ input: GetApiMappingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiMappingResponse> {
        return client.send(operation: "GetApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets API mappings.
    public func getApiMappings(_ input: GetApiMappingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiMappingsResponse> {
        return client.send(operation: "GetApiMappings", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a collection of Api resources.
    public func getApis(_ input: GetApisRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApisResponse> {
        return client.send(operation: "GetApis", path: "/v2/apis", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets an Authorizer.
    public func getAuthorizer(_ input: GetAuthorizerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorizerResponse> {
        return client.send(operation: "GetAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Authorizers for an API.
    public func getAuthorizers(_ input: GetAuthorizersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorizersResponse> {
        return client.send(operation: "GetAuthorizers", path: "/v2/apis/{apiId}/authorizers", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a Deployment.
    public func getDeployment(_ input: GetDeploymentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeploymentResponse> {
        return client.send(operation: "GetDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Deployments for an API.
    public func getDeployments(_ input: GetDeploymentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeploymentsResponse> {
        return client.send(operation: "GetDeployments", path: "/v2/apis/{apiId}/deployments", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a domain name.
    public func getDomainName(_ input: GetDomainNameRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainNameResponse> {
        return client.send(operation: "GetDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the domain names for an AWS account.
    public func getDomainNames(_ input: GetDomainNamesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainNamesResponse> {
        return client.send(operation: "GetDomainNames", path: "/v2/domainnames", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets an Integration.
    public func getIntegration(_ input: GetIntegrationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationResult> {
        return client.send(operation: "GetIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets an IntegrationResponses.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationResponseResponse> {
        return client.send(operation: "GetIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the IntegrationResponses for an Integration.
    public func getIntegrationResponses(_ input: GetIntegrationResponsesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationResponsesResponse> {
        return client.send(operation: "GetIntegrationResponses", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Integrations for an API.
    public func getIntegrations(_ input: GetIntegrationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationsResponse> {
        return client.send(operation: "GetIntegrations", path: "/v2/apis/{apiId}/integrations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a Model.
    public func getModel(_ input: GetModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelResponse> {
        return client.send(operation: "GetModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a model template.
    public func getModelTemplate(_ input: GetModelTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelTemplateResponse> {
        return client.send(operation: "GetModelTemplate", path: "/v2/apis/{apiId}/models/{modelId}/template", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Models for an API.
    public func getModels(_ input: GetModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelsResponse> {
        return client.send(operation: "GetModels", path: "/v2/apis/{apiId}/models", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a Route.
    public func getRoute(_ input: GetRouteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRouteResult> {
        return client.send(operation: "GetRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a RouteResponse.
    public func getRouteResponse(_ input: GetRouteResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRouteResponseResponse> {
        return client.send(operation: "GetRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the RouteResponses for a Route.
    public func getRouteResponses(_ input: GetRouteResponsesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRouteResponsesResponse> {
        return client.send(operation: "GetRouteResponses", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Routes for an API.
    public func getRoutes(_ input: GetRoutesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoutesResponse> {
        return client.send(operation: "GetRoutes", path: "/v2/apis/{apiId}/routes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a Stage.
    public func getStage(_ input: GetStageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStageResponse> {
        return client.send(operation: "GetStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the Stages for an API.
    public func getStages(_ input: GetStagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStagesResponse> {
        return client.send(operation: "GetStages", path: "/v2/apis/{apiId}/stages", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a collection of Tag resources.
    public func getTags(_ input: GetTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagsResponse> {
        return client.send(operation: "GetTags", path: "/v2/tags/{resource-arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a VPC link.
    public func getVpcLink(_ input: GetVpcLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVpcLinkResponse> {
        return client.send(operation: "GetVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets a collection of VPC links.
    public func getVpcLinks(_ input: GetVpcLinksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVpcLinksResponse> {
        return client.send(operation: "GetVpcLinks", path: "/v2/vpclinks", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Imports an API.
    public func importApi(_ input: ImportApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportApiResponse> {
        return client.send(operation: "ImportApi", path: "/v2/apis", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Puts an Api resource.
    public func reimportApi(_ input: ReimportApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReimportApiResponse> {
        return client.send(operation: "ReimportApi", path: "/v2/apis/{apiId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a new Tag resource to represent a tag.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/v2/tags/{resource-arn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a Tag.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/v2/tags/{resource-arn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates an Api resource.
    public func updateApi(_ input: UpdateApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiResponse> {
        return client.send(operation: "UpdateApi", path: "/v2/apis/{apiId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  The API mapping.
    public func updateApiMapping(_ input: UpdateApiMappingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiMappingResponse> {
        return client.send(operation: "UpdateApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates an Authorizer.
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAuthorizerResponse> {
        return client.send(operation: "UpdateAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a Deployment.
    public func updateDeployment(_ input: UpdateDeploymentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeploymentResponse> {
        return client.send(operation: "UpdateDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a domain name.
    public func updateDomainName(_ input: UpdateDomainNameRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainNameResponse> {
        return client.send(operation: "UpdateDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates an Integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIntegrationResult> {
        return client.send(operation: "UpdateIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates an IntegrationResponses.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIntegrationResponseResponse> {
        return client.send(operation: "UpdateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a Model.
    public func updateModel(_ input: UpdateModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateModelResponse> {
        return client.send(operation: "UpdateModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a Route.
    public func updateRoute(_ input: UpdateRouteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRouteResult> {
        return client.send(operation: "UpdateRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a RouteResponse.
    public func updateRouteResponse(_ input: UpdateRouteResponseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRouteResponseResponse> {
        return client.send(operation: "UpdateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a Stage.
    public func updateStage(_ input: UpdateStageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStageResponse> {
        return client.send(operation: "UpdateStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates a VPC link.
    public func updateVpcLink(_ input: UpdateVpcLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVpcLinkResponse> {
        return client.send(operation: "UpdateVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }
}
