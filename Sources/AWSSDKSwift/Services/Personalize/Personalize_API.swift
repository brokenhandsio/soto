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
Client object for interacting with AWS Personalize service.

Amazon Personalize is a machine learning service that makes it easy to add individualized recommendations to customers.
*/
public struct Personalize {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Personalize client
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
            amzTarget: "AmazonPersonalize",
            service: "personalize",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-05-22",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PersonalizeErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a batch inference job. The operation can handle up to 50 million records and the input file must be in JSON format. For more information, see recommendations-batch.
    public func createBatchInferenceJob(_ input: CreateBatchInferenceJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchInferenceJobResponse> {
        return client.send(operation: "CreateBatchInferenceJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a campaign by deploying a solution version. When a client calls the GetRecommendations and GetPersonalizedRanking APIs, a campaign is specified in the request.  Minimum Provisioned TPS and Auto-Scaling  A transaction is a single GetRecommendations or GetPersonalizedRanking call. Transactions per second (TPS) is the throughput and unit of billing for Amazon Personalize. The minimum provisioned TPS (minProvisionedTPS) specifies the baseline throughput provisioned by Amazon Personalize, and thus, the minimum billing charge. If your TPS increases beyond minProvisionedTPS, Amazon Personalize auto-scales the provisioned capacity up and down, but never below minProvisionedTPS, to maintain a 70% utilization. There's a short time delay while the capacity is increased that might cause loss of transactions. It's recommended to start with a low minProvisionedTPS, track your usage using Amazon CloudWatch metrics, and then increase the minProvisionedTPS as necessary.  Status  A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the campaign status, call DescribeCampaign.  Wait until the status of the campaign is ACTIVE before asking the campaign for recommendations.   Related APIs     ListCampaigns     DescribeCampaign     UpdateCampaign     DeleteCampaign   
    public func createCampaign(_ input: CreateCampaignRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCampaignResponse> {
        return client.send(operation: "CreateCampaign", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an empty dataset and adds it to the specified dataset group. Use CreateDatasetImportJob to import your training data to a dataset. There are three types of datasets:   Interactions   Items   Users   Each dataset type has an associated schema with required field types. Only the Interactions dataset is required in order to train a model (also referred to as creating a solution). A dataset can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the dataset, call DescribeDataset.  Related APIs     CreateDatasetGroup     ListDatasets     DescribeDataset     DeleteDataset   
    public func createDataset(_ input: CreateDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return client.send(operation: "CreateDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an empty dataset group. A dataset group contains related datasets that supply data for training a model. A dataset group can contain at most three datasets, one for each type of dataset:   Interactions   Items   Users   To train a model (create a solution), a dataset group that contains an Interactions dataset is required. Call CreateDataset to add a dataset to the group. A dataset group can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING   To get the status of the dataset group, call DescribeDatasetGroup. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the creation failed.  You must wait until the status of the dataset group is ACTIVE before adding a dataset to the group.  You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group. If you specify a KMS key, you must also include an AWS Identity and Access Management (IAM) role that has permission to access the key.  APIs that require a dataset group ARN in the request     CreateDataset     CreateEventTracker     CreateSolution     Related APIs     ListDatasetGroups     DescribeDatasetGroup     DeleteDatasetGroup   
    public func createDatasetGroup(_ input: CreateDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetGroupResponse> {
        return client.send(operation: "CreateDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a job that imports training data from your data source (an Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon Personalize to import the training data, you must specify an AWS Identity and Access Management (IAM) role that has permission to read from the data source.  The dataset import job replaces any previous data in the dataset.   Status  A dataset import job can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the import job, call DescribeDatasetImportJob, providing the Amazon Resource Name (ARN) of the dataset import job. The dataset import is complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Importing takes time. You must wait until the status shows as ACTIVE before training a model using the dataset.   Related APIs     ListDatasetImportJobs     DescribeDatasetImportJob   
    public func createDatasetImportJob(_ input: CreateDatasetImportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetImportJobResponse> {
        return client.send(operation: "CreateDatasetImportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an event tracker that you use when sending event data to the specified dataset group using the PutEvents API. When Amazon Personalize creates an event tracker, it also creates an event-interactions dataset in the dataset group associated with the event tracker. The event-interactions dataset stores the event data from the PutEvents call. The contents of this dataset are not available to the user.  Only one event tracker can be associated with a dataset group. You will get an error if you call CreateEventTracker using the same dataset group as an existing event tracker.  When you send event data you include your tracking ID. The tracking ID identifies the customer and authorizes the customer to send the data. The event tracker can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the event tracker, call DescribeEventTracker.  The event tracker must be in the ACTIVE state before using the tracking ID.   Related APIs     ListEventTrackers     DescribeEventTracker     DeleteEventTracker   
    public func createEventTracker(_ input: CreateEventTrackerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventTrackerResponse> {
        return client.send(operation: "CreateEventTracker", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Amazon Personalize schema from the specified schema string. The schema you create must be in Avro JSON format. Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset type and has a set of required field and keywords. You specify a schema when you call CreateDataset.  Related APIs     ListSchemas     DescribeSchema     DeleteSchema   
    public func createSchema(_ input: CreateSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return client.send(operation: "CreateSchema", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates the configuration for training a model. A trained model is known as a solution. After the configuration is created, you train the model (create a solution) by calling the CreateSolutionVersion operation. Every time you call CreateSolutionVersion, a new version of the solution is created. After creating a solution version, you check its accuracy by calling GetSolutionMetrics. When you are satisfied with the version, you deploy it using CreateCampaign. The campaign provides recommendations to a client through the GetRecommendations API. To train a model, Amazon Personalize requires training data and a recipe. The training data comes from the dataset group that you provide in the request. A recipe specifies the training algorithm and a feature transformation. You can specify one of the predefined recipes provided by Amazon Personalize. Alternatively, you can specify performAutoML and Amazon Personalize will analyze your data and select the optimum USER_PERSONALIZATION recipe for you.  Status  A solution can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the solution, call DescribeSolution. Wait until the status shows as ACTIVE before calling CreateSolutionVersion.  Related APIs     ListSolutions     CreateSolutionVersion     DescribeSolution     DeleteSolution       ListSolutionVersions     DescribeSolutionVersion   
    public func createSolution(_ input: CreateSolutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSolutionResponse> {
        return client.send(operation: "CreateSolution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Trains or retrains an active solution. A solution is created using the CreateSolution operation and must be in the ACTIVE state before calling CreateSolutionVersion. A new version of the solution is created every time you call this operation.  Status  A solution version can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the version, call DescribeSolutionVersion. Wait until the status shows as ACTIVE before calling CreateCampaign. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Related APIs     ListSolutionVersions     DescribeSolutionVersion       ListSolutions     CreateSolution     DescribeSolution     DeleteSolution   
    public func createSolutionVersion(_ input: CreateSolutionVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSolutionVersionResponse> {
        return client.send(operation: "CreateSolutionVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a campaign by deleting the solution deployment. The solution that the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no longer be specified in a GetRecommendations request. For more information on campaigns, see CreateCampaign.
    @discardableResult public func deleteCampaign(_ input: DeleteCampaignRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCampaign", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a dataset. You can't delete a dataset if an associated DatasetImportJob or SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on datasets, see CreateDataset.
    @discardableResult public func deleteDataset(_ input: DeleteDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a dataset group. Before you delete a dataset group, you must delete the following:   All associated event trackers.   All associated solutions.   All datasets in the dataset group.  
    @discardableResult public func deleteDatasetGroup(_ input: DeleteDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the event tracker. Does not delete the event-interactions dataset from the associated dataset group. For more information on event trackers, see CreateEventTracker.
    @discardableResult public func deleteEventTracker(_ input: DeleteEventTrackerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteEventTracker", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a schema. Before deleting a schema, you must delete all datasets referencing the schema. For more information on schemas, see CreateSchema.
    @discardableResult public func deleteSchema(_ input: DeleteSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteSchema", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes all versions of a solution and the Solution object itself. Before deleting a solution, you must delete all campaigns based on the solution. To determine what campaigns are using the solution, call ListCampaigns and supply the Amazon Resource Name (ARN) of the solution. You can't delete a solution if an associated SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on solutions, see CreateSolution.
    @discardableResult public func deleteSolution(_ input: DeleteSolutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteSolution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the given algorithm.
    public func describeAlgorithm(_ input: DescribeAlgorithmRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlgorithmResponse> {
        return client.send(operation: "DescribeAlgorithm", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the properties of a batch inference job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate the recommendations.
    public func describeBatchInferenceJob(_ input: DescribeBatchInferenceJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchInferenceJobResponse> {
        return client.send(operation: "DescribeBatchInferenceJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the given campaign, including its status. A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   When the status is CREATE FAILED, the response includes the failureReason key, which describes why. For more information on campaigns, see CreateCampaign.
    public func describeCampaign(_ input: DescribeCampaignRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCampaignResponse> {
        return client.send(operation: "DescribeCampaign", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the given dataset. For more information on datasets, see CreateDataset.
    public func describeDataset(_ input: DescribeDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return client.send(operation: "DescribeDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the given dataset group. For more information on dataset groups, see CreateDatasetGroup.
    public func describeDatasetGroup(_ input: DescribeDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetGroupResponse> {
        return client.send(operation: "DescribeDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the dataset import job created by CreateDatasetImportJob, including the import job status.
    public func describeDatasetImportJob(_ input: DescribeDatasetImportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetImportJobResponse> {
        return client.send(operation: "DescribeDatasetImportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes an event tracker. The response includes the trackingId and status of the event tracker. For more information on event trackers, see CreateEventTracker.
    public func describeEventTracker(_ input: DescribeEventTrackerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTrackerResponse> {
        return client.send(operation: "DescribeEventTracker", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the given feature transformation.
    public func describeFeatureTransformation(_ input: DescribeFeatureTransformationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFeatureTransformationResponse> {
        return client.send(operation: "DescribeFeatureTransformation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a recipe. A recipe contains three items:   An algorithm that trains a model.   Hyperparameters that govern the training.   Feature transformation information for modifying the input data before training.   Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a solution with the CreateSolution API. CreateSolution trains a model by using the algorithm in the specified recipe and a training dataset. The solution, when deployed as a campaign, can provide recommendations using the GetRecommendations API.
    public func describeRecipe(_ input: DescribeRecipeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecipeResponse> {
        return client.send(operation: "DescribeRecipe", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a schema. For more information on schemas, see CreateSchema.
    public func describeSchema(_ input: DescribeSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemaResponse> {
        return client.send(operation: "DescribeSchema", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a solution. For more information on solutions, see CreateSolution.
    public func describeSolution(_ input: DescribeSolutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSolutionResponse> {
        return client.send(operation: "DescribeSolution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a specific version of a solution. For more information on solutions, see CreateSolution.
    public func describeSolutionVersion(_ input: DescribeSolutionVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSolutionVersionResponse> {
        return client.send(operation: "DescribeSolutionVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the metrics for the specified solution version.
    public func getSolutionMetrics(_ input: GetSolutionMetricsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSolutionMetricsResponse> {
        return client.send(operation: "GetSolutionMetrics", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of the batch inference jobs that have been performed off of a solution version.
    public func listBatchInferenceJobs(_ input: ListBatchInferenceJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBatchInferenceJobsResponse> {
        return client.send(operation: "ListBatchInferenceJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.
    public func listCampaigns(_ input: ListCampaignsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCampaignsResponse> {
        return client.send(operation: "ListCampaigns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.
    public func listDatasetGroups(_ input: ListDatasetGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetGroupsResponse> {
        return client.send(operation: "ListDatasetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.
    public func listDatasetImportJobs(_ input: ListDatasetImportJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetImportJobsResponse> {
        return client.send(operation: "ListDatasetImportJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.
    public func listDatasets(_ input: ListDatasetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return client.send(operation: "ListDatasets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.
    public func listEventTrackers(_ input: ListEventTrackersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventTrackersResponse> {
        return client.send(operation: "ListEventTrackers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).
    public func listRecipes(_ input: ListRecipesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecipesResponse> {
        return client.send(operation: "ListRecipes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.
    public func listSchemas(_ input: ListSchemasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return client.send(operation: "ListSchemas", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionVersions(_ input: ListSolutionVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSolutionVersionsResponse> {
        return client.send(operation: "ListSolutionVersions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutions(_ input: ListSolutionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSolutionsResponse> {
        return client.send(operation: "ListSolutions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a campaign by either deploying a new solution or changing the value of the campaign's minProvisionedTPS parameter. To update a campaign, the campaign status must be ACTIVE or CREATE FAILED. Check the campaign status using the DescribeCampaign API.  You must wait until the status of the updated campaign is ACTIVE before asking the campaign for recommendations.  For more information on campaigns, see CreateCampaign.
    public func updateCampaign(_ input: UpdateCampaignRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCampaignResponse> {
        return client.send(operation: "UpdateCampaign", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
