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
Client object for interacting with AWS NetworkManager service.

Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your AWS and on-premises networks that are built around transit gateways.
*/
public struct NetworkManager {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the NetworkManager client
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
            service: "networkmanager",
            serviceProtocol: .restjson,
            apiVersion: "2019-07-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [NetworkManagerErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 
    public func associateCustomerGateway(_ input: AssociateCustomerGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateCustomerGatewayResponse> {
        return client.send(operation: "AssociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
    public func associateLink(_ input: AssociateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateLinkResponse> {
        return client.send(operation: "AssociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
    public func createDevice(_ input: CreateDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        return client.send(operation: "CreateDevice", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new, empty global network.
    public func createGlobalNetwork(_ input: CreateGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGlobalNetworkResponse> {
        return client.send(operation: "CreateGlobalNetwork", path: "/global-networks", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new link for a specified site.
    public func createLink(_ input: CreateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLinkResponse> {
        return client.send(operation: "CreateLink", path: "/global-networks/{globalNetworkId}/links", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new site in a global network.
    public func createSite(_ input: CreateSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSiteResponse> {
        return client.send(operation: "CreateSite", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an existing device. You must first disassociate the device from any links and customer gateways.
    public func deleteDevice(_ input: DeleteDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        return client.send(operation: "DeleteDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.
    public func deleteGlobalNetwork(_ input: DeleteGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGlobalNetworkResponse> {
        return client.send(operation: "DeleteGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
    public func deleteLink(_ input: DeleteLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLinkResponse> {
        return client.send(operation: "DeleteLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing site. The site cannot be associated with any device or link.
    public func deleteSite(_ input: DeleteSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSiteResponse> {
        return client.send(operation: "DeleteSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
    public func deregisterTransitGateway(_ input: DeregisterTransitGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTransitGatewayResponse> {
        return client.send(operation: "DeregisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworks(_ input: DescribeGlobalNetworksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalNetworksResponse> {
        return client.send(operation: "DescribeGlobalNetworks", path: "/global-networks", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Disassociates a customer gateway from a device and a link.
    public func disassociateCustomerGateway(_ input: DisassociateCustomerGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateCustomerGatewayResponse> {
        return client.send(operation: "DisassociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
    public func disassociateLink(_ input: DisassociateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateLinkResponse> {
        return client.send(operation: "DisassociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociations(_ input: GetCustomerGatewayAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomerGatewayAssociationsResponse> {
        return client.send(operation: "GetCustomerGatewayAssociations", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets information about one or more of your devices in a global network.
    public func getDevices(_ input: GetDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        return client.send(operation: "GetDevices", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociations(_ input: GetLinkAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinkAssociationsResponse> {
        return client.send(operation: "GetLinkAssociations", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinks(_ input: GetLinksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinksResponse> {
        return client.send(operation: "GetLinks", path: "/global-networks/{globalNetworkId}/links", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets information about one or more of your sites in a global network.
    public func getSites(_ input: GetSitesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSitesResponse> {
        return client.send(operation: "GetSites", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrations(_ input: GetTransitGatewayRegistrationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTransitGatewayRegistrationsResponse> {
        return client.send(operation: "GetTransitGatewayRegistrations", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
    public func registerTransitGateway(_ input: RegisterTransitGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTransitGatewayResponse> {
        return client.send(operation: "RegisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Tags a specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
    public func updateDevice(_ input: UpdateDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        return client.send(operation: "UpdateDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates an existing global network. To remove information for any of the parameters, specify an empty string.
    public func updateGlobalNetwork(_ input: UpdateGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGlobalNetworkResponse> {
        return client.send(operation: "UpdateGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
    public func updateLink(_ input: UpdateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLinkResponse> {
        return client.send(operation: "UpdateLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
    public func updateSite(_ input: UpdateSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteResponse> {
        return client.send(operation: "UpdateSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }
}
