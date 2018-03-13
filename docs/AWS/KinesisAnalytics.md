## Module AWS.KinesisAnalytics

#### `addApplicationCloudWatchLoggingOption`

``` purescript
addApplicationCloudWatchLoggingOption :: forall eff. AddApplicationCloudWatchLoggingOptionRequest -> Aff (exception :: EXCEPTION | eff) AddApplicationCloudWatchLoggingOptionResponse
```

<p>Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>

#### `addApplicationInput`

``` purescript
addApplicationInput :: forall eff. AddApplicationInputRequest -> Aff (exception :: EXCEPTION | eff) AddApplicationInputResponse
```

<p> Adds a streaming source to your Amazon Kinesis application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p> <p>You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see <a>CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationInput</code> action.</p>

#### `addApplicationInputProcessingConfiguration`

``` purescript
addApplicationInputProcessingConfiguration :: forall eff. AddApplicationInputProcessingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) AddApplicationInputProcessingConfigurationResponse
```

<p>Adds an <a>InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a>.</p>

#### `addApplicationOutput`

``` purescript
addApplicationOutput :: forall eff. AddApplicationOutputRequest -> Aff (exception :: EXCEPTION | eff) AddApplicationOutputResponse
```

<p>Adds an external destination to your Amazon Kinesis Analytics application.</p> <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application Output (Destination)</a>. </p> <p> Note that any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p> <p>For the limits on the number of application inputs and outputs you can configure, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>

#### `addApplicationReferenceDataSource`

``` purescript
addApplicationReferenceDataSource :: forall eff. AddApplicationReferenceDataSourceRequest -> Aff (exception :: EXCEPTION | eff) AddApplicationReferenceDataSourceResponse
```

<p>Adds a reference data source to an existing application.</p> <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p> <p> For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. For the limits on data sources you can add to your application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action. </p>

#### `createApplication`

``` purescript
createApplication :: forall eff. CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationResponse
```

<p> Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>. </p> <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source.</p> <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p> <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p> <p> To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the <code>kinesisanalytics:CreateApplication</code> action. </p> <p> For introductory exercises to create an Amazon Kinesis Analytics application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>. </p>

#### `deleteApplication`

``` purescript
deleteApplication :: forall eff. DeleteApplicationRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationResponse
```

<p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>

#### `deleteApplicationCloudWatchLoggingOption`

``` purescript
deleteApplicationCloudWatchLoggingOption :: forall eff. DeleteApplicationCloudWatchLoggingOptionRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationCloudWatchLoggingOptionResponse
```

<p>Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>

#### `deleteApplicationInputProcessingConfiguration`

``` purescript
deleteApplicationInputProcessingConfiguration :: forall eff. DeleteApplicationInputProcessingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationInputProcessingConfigurationResponse
```

<p>Deletes an <a>InputProcessingConfiguration</a> from an input.</p>

#### `deleteApplicationOutput`

``` purescript
deleteApplicationOutput :: forall eff. DeleteApplicationOutputRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationOutputResponse
```

<p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>

#### `deleteApplicationReferenceDataSource`

``` purescript
deleteApplicationReferenceDataSource :: forall eff. DeleteApplicationReferenceDataSourceRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationReferenceDataSourceResponse
```

<p>Deletes a reference data source configuration from the specified application configuration.</p> <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <a>AddApplicationReferenceDataSource</a> operation. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.</p>

#### `describeApplication`

``` purescript
describeApplication :: forall eff. DescribeApplicationRequest -> Aff (exception :: EXCEPTION | eff) DescribeApplicationResponse
```

<p>Returns information about a specific Amazon Kinesis Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a>ListApplications</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other operations such as <code>Update</code>. </p>

#### `discoverInputSchema`

``` purescript
discoverInputSchema :: forall eff. DiscoverInputSchemaRequest -> Aff (exception :: EXCEPTION | eff) DiscoverInputSchemaResponse
```

<p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:DiscoverInputSchema</code> action. </p>

#### `listApplications`

``` purescript
listApplications :: forall eff. ListApplicationsRequest -> Aff (exception :: EXCEPTION | eff) ListApplicationsResponse
```

<p>Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the <code>HasMoreApplications</code> value as true, you can send another request by adding the <code>ExclusiveStartApplicationName</code> in the request body, and set the value of this to the last application name from the previous response. </p> <p>If you want detailed information about a specific application, use <a>DescribeApplication</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:ListApplications</code> action.</p>

#### `startApplication`

``` purescript
startApplication :: forall eff. StartApplicationRequest -> Aff (exception :: EXCEPTION | eff) StartApplicationResponse
```

<p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p> <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p> <p> The application status must be <code>READY</code> for you to start an application. You can get the application status in the console or using the <a>DescribeApplication</a> operation.</p> <p>After you start the application, you can stop the application from processing the input by calling the <a>StopApplication</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StartApplication</code> action.</p>

#### `stopApplication`

``` purescript
stopApplication :: forall eff. StopApplicationRequest -> Aff (exception :: EXCEPTION | eff) StopApplicationResponse
```

<p>Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <a>DescribeApplication</a> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StopApplication</code> action.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) UpdateApplicationResponse
```

<p>Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration. </p> <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> each time you update your application. </p> <p>This operation requires permission for the <code>kinesisanalytics:UpdateApplication</code> action.</p>

#### `AddApplicationCloudWatchLoggingOptionRequest`

``` purescript
newtype AddApplicationCloudWatchLoggingOptionRequest
  = AddApplicationCloudWatchLoggingOptionRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOption" :: CloudWatchLoggingOption }
```

##### Instances
``` purescript
Newtype AddApplicationCloudWatchLoggingOptionRequest _
Generic AddApplicationCloudWatchLoggingOptionRequest _
Show AddApplicationCloudWatchLoggingOptionRequest
Decode AddApplicationCloudWatchLoggingOptionRequest
Encode AddApplicationCloudWatchLoggingOptionRequest
```

#### `newAddApplicationCloudWatchLoggingOptionRequest`

``` purescript
newAddApplicationCloudWatchLoggingOptionRequest :: ApplicationName -> CloudWatchLoggingOption -> ApplicationVersionId -> AddApplicationCloudWatchLoggingOptionRequest
```

Constructs AddApplicationCloudWatchLoggingOptionRequest from required parameters

#### `newAddApplicationCloudWatchLoggingOptionRequest'`

``` purescript
newAddApplicationCloudWatchLoggingOptionRequest' :: ApplicationName -> CloudWatchLoggingOption -> ApplicationVersionId -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOption" :: CloudWatchLoggingOption } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOption" :: CloudWatchLoggingOption }) -> AddApplicationCloudWatchLoggingOptionRequest
```

Constructs AddApplicationCloudWatchLoggingOptionRequest's fields from required parameters

#### `AddApplicationCloudWatchLoggingOptionResponse`

``` purescript
newtype AddApplicationCloudWatchLoggingOptionResponse
  = AddApplicationCloudWatchLoggingOptionResponse NoArguments
```

##### Instances
``` purescript
Newtype AddApplicationCloudWatchLoggingOptionResponse _
Generic AddApplicationCloudWatchLoggingOptionResponse _
Show AddApplicationCloudWatchLoggingOptionResponse
Decode AddApplicationCloudWatchLoggingOptionResponse
Encode AddApplicationCloudWatchLoggingOptionResponse
```

#### `AddApplicationInputProcessingConfigurationRequest`

``` purescript
newtype AddApplicationInputProcessingConfigurationRequest
  = AddApplicationInputProcessingConfigurationRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id, "InputProcessingConfiguration" :: InputProcessingConfiguration }
```

##### Instances
``` purescript
Newtype AddApplicationInputProcessingConfigurationRequest _
Generic AddApplicationInputProcessingConfigurationRequest _
Show AddApplicationInputProcessingConfigurationRequest
Decode AddApplicationInputProcessingConfigurationRequest
Encode AddApplicationInputProcessingConfigurationRequest
```

#### `newAddApplicationInputProcessingConfigurationRequest`

``` purescript
newAddApplicationInputProcessingConfigurationRequest :: ApplicationName -> ApplicationVersionId -> Id -> InputProcessingConfiguration -> AddApplicationInputProcessingConfigurationRequest
```

Constructs AddApplicationInputProcessingConfigurationRequest from required parameters

#### `newAddApplicationInputProcessingConfigurationRequest'`

``` purescript
newAddApplicationInputProcessingConfigurationRequest' :: ApplicationName -> ApplicationVersionId -> Id -> InputProcessingConfiguration -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id, "InputProcessingConfiguration" :: InputProcessingConfiguration } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id, "InputProcessingConfiguration" :: InputProcessingConfiguration }) -> AddApplicationInputProcessingConfigurationRequest
```

Constructs AddApplicationInputProcessingConfigurationRequest's fields from required parameters

#### `AddApplicationInputProcessingConfigurationResponse`

``` purescript
newtype AddApplicationInputProcessingConfigurationResponse
  = AddApplicationInputProcessingConfigurationResponse NoArguments
```

##### Instances
``` purescript
Newtype AddApplicationInputProcessingConfigurationResponse _
Generic AddApplicationInputProcessingConfigurationResponse _
Show AddApplicationInputProcessingConfigurationResponse
Decode AddApplicationInputProcessingConfigurationResponse
Encode AddApplicationInputProcessingConfigurationResponse
```

#### `AddApplicationInputRequest`

``` purescript
newtype AddApplicationInputRequest
  = AddApplicationInputRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Input" :: Input }
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationInputRequest _
Generic AddApplicationInputRequest _
Show AddApplicationInputRequest
Decode AddApplicationInputRequest
Encode AddApplicationInputRequest
```

#### `newAddApplicationInputRequest`

``` purescript
newAddApplicationInputRequest :: ApplicationName -> ApplicationVersionId -> Input -> AddApplicationInputRequest
```

Constructs AddApplicationInputRequest from required parameters

#### `newAddApplicationInputRequest'`

``` purescript
newAddApplicationInputRequest' :: ApplicationName -> ApplicationVersionId -> Input -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Input" :: Input } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Input" :: Input }) -> AddApplicationInputRequest
```

Constructs AddApplicationInputRequest's fields from required parameters

#### `AddApplicationInputResponse`

``` purescript
newtype AddApplicationInputResponse
  = AddApplicationInputResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationInputResponse _
Generic AddApplicationInputResponse _
Show AddApplicationInputResponse
Decode AddApplicationInputResponse
Encode AddApplicationInputResponse
```

#### `AddApplicationOutputRequest`

``` purescript
newtype AddApplicationOutputRequest
  = AddApplicationOutputRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Output" :: Output }
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationOutputRequest _
Generic AddApplicationOutputRequest _
Show AddApplicationOutputRequest
Decode AddApplicationOutputRequest
Encode AddApplicationOutputRequest
```

#### `newAddApplicationOutputRequest`

``` purescript
newAddApplicationOutputRequest :: ApplicationName -> ApplicationVersionId -> Output -> AddApplicationOutputRequest
```

Constructs AddApplicationOutputRequest from required parameters

#### `newAddApplicationOutputRequest'`

``` purescript
newAddApplicationOutputRequest' :: ApplicationName -> ApplicationVersionId -> Output -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Output" :: Output } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "Output" :: Output }) -> AddApplicationOutputRequest
```

Constructs AddApplicationOutputRequest's fields from required parameters

#### `AddApplicationOutputResponse`

``` purescript
newtype AddApplicationOutputResponse
  = AddApplicationOutputResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationOutputResponse _
Generic AddApplicationOutputResponse _
Show AddApplicationOutputResponse
Decode AddApplicationOutputResponse
Encode AddApplicationOutputResponse
```

#### `AddApplicationReferenceDataSourceRequest`

``` purescript
newtype AddApplicationReferenceDataSourceRequest
  = AddApplicationReferenceDataSourceRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceDataSource" :: ReferenceDataSource }
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationReferenceDataSourceRequest _
Generic AddApplicationReferenceDataSourceRequest _
Show AddApplicationReferenceDataSourceRequest
Decode AddApplicationReferenceDataSourceRequest
Encode AddApplicationReferenceDataSourceRequest
```

#### `newAddApplicationReferenceDataSourceRequest`

``` purescript
newAddApplicationReferenceDataSourceRequest :: ApplicationName -> ApplicationVersionId -> ReferenceDataSource -> AddApplicationReferenceDataSourceRequest
```

Constructs AddApplicationReferenceDataSourceRequest from required parameters

#### `newAddApplicationReferenceDataSourceRequest'`

``` purescript
newAddApplicationReferenceDataSourceRequest' :: ApplicationName -> ApplicationVersionId -> ReferenceDataSource -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceDataSource" :: ReferenceDataSource } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceDataSource" :: ReferenceDataSource }) -> AddApplicationReferenceDataSourceRequest
```

Constructs AddApplicationReferenceDataSourceRequest's fields from required parameters

#### `AddApplicationReferenceDataSourceResponse`

``` purescript
newtype AddApplicationReferenceDataSourceResponse
  = AddApplicationReferenceDataSourceResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype AddApplicationReferenceDataSourceResponse _
Generic AddApplicationReferenceDataSourceResponse _
Show AddApplicationReferenceDataSourceResponse
Decode AddApplicationReferenceDataSourceResponse
Encode AddApplicationReferenceDataSourceResponse
```

#### `ApplicationCode`

``` purescript
newtype ApplicationCode
  = ApplicationCode String
```

##### Instances
``` purescript
Newtype ApplicationCode _
Generic ApplicationCode _
Show ApplicationCode
Decode ApplicationCode
Encode ApplicationCode
```

#### `ApplicationDescription`

``` purescript
newtype ApplicationDescription
  = ApplicationDescription String
```

##### Instances
``` purescript
Newtype ApplicationDescription _
Generic ApplicationDescription _
Show ApplicationDescription
Decode ApplicationDescription
Encode ApplicationDescription
```

#### `ApplicationDetail`

``` purescript
newtype ApplicationDetail
  = ApplicationDetail { "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus, "CreateTimestamp" :: NullOrUndefined (Timestamp), "LastUpdateTimestamp" :: NullOrUndefined (Timestamp), "InputDescriptions" :: NullOrUndefined (InputDescriptions), "OutputDescriptions" :: NullOrUndefined (OutputDescriptions), "ReferenceDataSourceDescriptions" :: NullOrUndefined (ReferenceDataSourceDescriptions), "CloudWatchLoggingOptionDescriptions" :: NullOrUndefined (CloudWatchLoggingOptionDescriptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode), "ApplicationVersionId" :: ApplicationVersionId }
```

<p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>

##### Instances
``` purescript
Newtype ApplicationDetail _
Generic ApplicationDetail _
Show ApplicationDetail
Decode ApplicationDetail
Encode ApplicationDetail
```

#### `newApplicationDetail`

``` purescript
newApplicationDetail :: ResourceARN -> ApplicationName -> ApplicationStatus -> ApplicationVersionId -> ApplicationDetail
```

Constructs ApplicationDetail from required parameters

#### `newApplicationDetail'`

``` purescript
newApplicationDetail' :: ResourceARN -> ApplicationName -> ApplicationStatus -> ApplicationVersionId -> ({ "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus, "CreateTimestamp" :: NullOrUndefined (Timestamp), "LastUpdateTimestamp" :: NullOrUndefined (Timestamp), "InputDescriptions" :: NullOrUndefined (InputDescriptions), "OutputDescriptions" :: NullOrUndefined (OutputDescriptions), "ReferenceDataSourceDescriptions" :: NullOrUndefined (ReferenceDataSourceDescriptions), "CloudWatchLoggingOptionDescriptions" :: NullOrUndefined (CloudWatchLoggingOptionDescriptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode), "ApplicationVersionId" :: ApplicationVersionId } -> { "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus, "CreateTimestamp" :: NullOrUndefined (Timestamp), "LastUpdateTimestamp" :: NullOrUndefined (Timestamp), "InputDescriptions" :: NullOrUndefined (InputDescriptions), "OutputDescriptions" :: NullOrUndefined (OutputDescriptions), "ReferenceDataSourceDescriptions" :: NullOrUndefined (ReferenceDataSourceDescriptions), "CloudWatchLoggingOptionDescriptions" :: NullOrUndefined (CloudWatchLoggingOptionDescriptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode), "ApplicationVersionId" :: ApplicationVersionId }) -> ApplicationDetail
```

Constructs ApplicationDetail's fields from required parameters

#### `ApplicationName`

``` purescript
newtype ApplicationName
  = ApplicationName String
```

##### Instances
``` purescript
Newtype ApplicationName _
Generic ApplicationName _
Show ApplicationName
Decode ApplicationName
Encode ApplicationName
```

#### `ApplicationStatus`

``` purescript
newtype ApplicationStatus
  = ApplicationStatus String
```

##### Instances
``` purescript
Newtype ApplicationStatus _
Generic ApplicationStatus _
Show ApplicationStatus
Decode ApplicationStatus
Encode ApplicationStatus
```

#### `ApplicationSummaries`

``` purescript
newtype ApplicationSummaries
  = ApplicationSummaries (Array ApplicationSummary)
```

##### Instances
``` purescript
Newtype ApplicationSummaries _
Generic ApplicationSummaries _
Show ApplicationSummaries
Decode ApplicationSummaries
Encode ApplicationSummaries
```

#### `ApplicationSummary`

``` purescript
newtype ApplicationSummary
  = ApplicationSummary { "ApplicationName" :: ApplicationName, "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus }
```

<p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>

##### Instances
``` purescript
Newtype ApplicationSummary _
Generic ApplicationSummary _
Show ApplicationSummary
Decode ApplicationSummary
Encode ApplicationSummary
```

#### `newApplicationSummary`

``` purescript
newApplicationSummary :: ResourceARN -> ApplicationName -> ApplicationStatus -> ApplicationSummary
```

Constructs ApplicationSummary from required parameters

#### `newApplicationSummary'`

``` purescript
newApplicationSummary' :: ResourceARN -> ApplicationName -> ApplicationStatus -> ({ "ApplicationName" :: ApplicationName, "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus } -> { "ApplicationName" :: ApplicationName, "ApplicationARN" :: ResourceARN, "ApplicationStatus" :: ApplicationStatus }) -> ApplicationSummary
```

Constructs ApplicationSummary's fields from required parameters

#### `ApplicationUpdate`

``` purescript
newtype ApplicationUpdate
  = ApplicationUpdate { "InputUpdates" :: NullOrUndefined (InputUpdates), "ApplicationCodeUpdate" :: NullOrUndefined (ApplicationCode), "OutputUpdates" :: NullOrUndefined (OutputUpdates), "ReferenceDataSourceUpdates" :: NullOrUndefined (ReferenceDataSourceUpdates), "CloudWatchLoggingOptionUpdates" :: NullOrUndefined (CloudWatchLoggingOptionUpdates) }
```

<p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>

##### Instances
``` purescript
Newtype ApplicationUpdate _
Generic ApplicationUpdate _
Show ApplicationUpdate
Decode ApplicationUpdate
Encode ApplicationUpdate
```

#### `newApplicationUpdate`

``` purescript
newApplicationUpdate :: ApplicationUpdate
```

Constructs ApplicationUpdate from required parameters

#### `newApplicationUpdate'`

``` purescript
newApplicationUpdate' :: ({ "InputUpdates" :: NullOrUndefined (InputUpdates), "ApplicationCodeUpdate" :: NullOrUndefined (ApplicationCode), "OutputUpdates" :: NullOrUndefined (OutputUpdates), "ReferenceDataSourceUpdates" :: NullOrUndefined (ReferenceDataSourceUpdates), "CloudWatchLoggingOptionUpdates" :: NullOrUndefined (CloudWatchLoggingOptionUpdates) } -> { "InputUpdates" :: NullOrUndefined (InputUpdates), "ApplicationCodeUpdate" :: NullOrUndefined (ApplicationCode), "OutputUpdates" :: NullOrUndefined (OutputUpdates), "ReferenceDataSourceUpdates" :: NullOrUndefined (ReferenceDataSourceUpdates), "CloudWatchLoggingOptionUpdates" :: NullOrUndefined (CloudWatchLoggingOptionUpdates) }) -> ApplicationUpdate
```

Constructs ApplicationUpdate's fields from required parameters

#### `ApplicationVersionId`

``` purescript
newtype ApplicationVersionId
  = ApplicationVersionId Number
```

##### Instances
``` purescript
Newtype ApplicationVersionId _
Generic ApplicationVersionId _
Show ApplicationVersionId
Decode ApplicationVersionId
Encode ApplicationVersionId
```

#### `BooleanObject`

``` purescript
newtype BooleanObject
  = BooleanObject Boolean
```

##### Instances
``` purescript
Newtype BooleanObject _
Generic BooleanObject _
Show BooleanObject
Decode BooleanObject
Encode BooleanObject
```

#### `BucketARN`

``` purescript
newtype BucketARN
  = BucketARN String
```

##### Instances
``` purescript
Newtype BucketARN _
Generic BucketARN _
Show BucketARN
Decode BucketARN
Encode BucketARN
```

#### `CSVMappingParameters`

``` purescript
newtype CSVMappingParameters
  = CSVMappingParameters { "RecordRowDelimiter" :: RecordRowDelimiter, "RecordColumnDelimiter" :: RecordColumnDelimiter }
```

<p>Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as the column delimiter: </p> <p> <code>"name1", "address1" </code> </p> <p> <code>"name2, "address2"</code> </p>

##### Instances
``` purescript
Newtype CSVMappingParameters _
Generic CSVMappingParameters _
Show CSVMappingParameters
Decode CSVMappingParameters
Encode CSVMappingParameters
```

#### `newCSVMappingParameters`

``` purescript
newCSVMappingParameters :: RecordColumnDelimiter -> RecordRowDelimiter -> CSVMappingParameters
```

Constructs CSVMappingParameters from required parameters

#### `newCSVMappingParameters'`

``` purescript
newCSVMappingParameters' :: RecordColumnDelimiter -> RecordRowDelimiter -> ({ "RecordRowDelimiter" :: RecordRowDelimiter, "RecordColumnDelimiter" :: RecordColumnDelimiter } -> { "RecordRowDelimiter" :: RecordRowDelimiter, "RecordColumnDelimiter" :: RecordColumnDelimiter }) -> CSVMappingParameters
```

Constructs CSVMappingParameters's fields from required parameters

#### `CloudWatchLoggingOption`

``` purescript
newtype CloudWatchLoggingOption
  = CloudWatchLoggingOption { "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN }
```

<p>Provides a description of CloudWatch logging options, including the log stream Amazon Resource Name (ARN) and the role ARN.</p>

##### Instances
``` purescript
Newtype CloudWatchLoggingOption _
Generic CloudWatchLoggingOption _
Show CloudWatchLoggingOption
Decode CloudWatchLoggingOption
Encode CloudWatchLoggingOption
```

#### `newCloudWatchLoggingOption`

``` purescript
newCloudWatchLoggingOption :: LogStreamARN -> RoleARN -> CloudWatchLoggingOption
```

Constructs CloudWatchLoggingOption from required parameters

#### `newCloudWatchLoggingOption'`

``` purescript
newCloudWatchLoggingOption' :: LogStreamARN -> RoleARN -> ({ "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN } -> { "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN }) -> CloudWatchLoggingOption
```

Constructs CloudWatchLoggingOption's fields from required parameters

#### `CloudWatchLoggingOptionDescription`

``` purescript
newtype CloudWatchLoggingOptionDescription
  = CloudWatchLoggingOptionDescription { "CloudWatchLoggingOptionId" :: NullOrUndefined (Id), "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN }
```

<p>Description of the CloudWatch logging option.</p>

##### Instances
``` purescript
Newtype CloudWatchLoggingOptionDescription _
Generic CloudWatchLoggingOptionDescription _
Show CloudWatchLoggingOptionDescription
Decode CloudWatchLoggingOptionDescription
Encode CloudWatchLoggingOptionDescription
```

#### `newCloudWatchLoggingOptionDescription`

``` purescript
newCloudWatchLoggingOptionDescription :: LogStreamARN -> RoleARN -> CloudWatchLoggingOptionDescription
```

Constructs CloudWatchLoggingOptionDescription from required parameters

#### `newCloudWatchLoggingOptionDescription'`

``` purescript
newCloudWatchLoggingOptionDescription' :: LogStreamARN -> RoleARN -> ({ "CloudWatchLoggingOptionId" :: NullOrUndefined (Id), "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN } -> { "CloudWatchLoggingOptionId" :: NullOrUndefined (Id), "LogStreamARN" :: LogStreamARN, "RoleARN" :: RoleARN }) -> CloudWatchLoggingOptionDescription
```

Constructs CloudWatchLoggingOptionDescription's fields from required parameters

#### `CloudWatchLoggingOptionDescriptions`

``` purescript
newtype CloudWatchLoggingOptionDescriptions
  = CloudWatchLoggingOptionDescriptions (Array CloudWatchLoggingOptionDescription)
```

##### Instances
``` purescript
Newtype CloudWatchLoggingOptionDescriptions _
Generic CloudWatchLoggingOptionDescriptions _
Show CloudWatchLoggingOptionDescriptions
Decode CloudWatchLoggingOptionDescriptions
Encode CloudWatchLoggingOptionDescriptions
```

#### `CloudWatchLoggingOptionUpdate`

``` purescript
newtype CloudWatchLoggingOptionUpdate
  = CloudWatchLoggingOptionUpdate { "CloudWatchLoggingOptionId" :: Id, "LogStreamARNUpdate" :: NullOrUndefined (LogStreamARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>Describes CloudWatch logging option updates.</p>

##### Instances
``` purescript
Newtype CloudWatchLoggingOptionUpdate _
Generic CloudWatchLoggingOptionUpdate _
Show CloudWatchLoggingOptionUpdate
Decode CloudWatchLoggingOptionUpdate
Encode CloudWatchLoggingOptionUpdate
```

#### `newCloudWatchLoggingOptionUpdate`

``` purescript
newCloudWatchLoggingOptionUpdate :: Id -> CloudWatchLoggingOptionUpdate
```

Constructs CloudWatchLoggingOptionUpdate from required parameters

#### `newCloudWatchLoggingOptionUpdate'`

``` purescript
newCloudWatchLoggingOptionUpdate' :: Id -> ({ "CloudWatchLoggingOptionId" :: Id, "LogStreamARNUpdate" :: NullOrUndefined (LogStreamARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "CloudWatchLoggingOptionId" :: Id, "LogStreamARNUpdate" :: NullOrUndefined (LogStreamARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> CloudWatchLoggingOptionUpdate
```

Constructs CloudWatchLoggingOptionUpdate's fields from required parameters

#### `CloudWatchLoggingOptionUpdates`

``` purescript
newtype CloudWatchLoggingOptionUpdates
  = CloudWatchLoggingOptionUpdates (Array CloudWatchLoggingOptionUpdate)
```

##### Instances
``` purescript
Newtype CloudWatchLoggingOptionUpdates _
Generic CloudWatchLoggingOptionUpdates _
Show CloudWatchLoggingOptionUpdates
Decode CloudWatchLoggingOptionUpdates
Encode CloudWatchLoggingOptionUpdates
```

#### `CloudWatchLoggingOptions`

``` purescript
newtype CloudWatchLoggingOptions
  = CloudWatchLoggingOptions (Array CloudWatchLoggingOption)
```

##### Instances
``` purescript
Newtype CloudWatchLoggingOptions _
Generic CloudWatchLoggingOptions _
Show CloudWatchLoggingOptions
Decode CloudWatchLoggingOptions
Encode CloudWatchLoggingOptions
```

#### `CodeValidationException`

``` purescript
newtype CodeValidationException
  = CodeValidationException { message :: NullOrUndefined (ErrorMessage) }
```

<p>User-provided application code (query) is invalid. This can be a simple syntax error.</p>

##### Instances
``` purescript
Newtype CodeValidationException _
Generic CodeValidationException _
Show CodeValidationException
Decode CodeValidationException
Encode CodeValidationException
```

#### `newCodeValidationException`

``` purescript
newCodeValidationException :: CodeValidationException
```

Constructs CodeValidationException from required parameters

#### `newCodeValidationException'`

``` purescript
newCodeValidationException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> CodeValidationException
```

Constructs CodeValidationException's fields from required parameters

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.</p>

##### Instances
``` purescript
Newtype ConcurrentModificationException _
Generic ConcurrentModificationException _
Show ConcurrentModificationException
Decode ConcurrentModificationException
Encode ConcurrentModificationException
```

#### `newConcurrentModificationException`

``` purescript
newConcurrentModificationException :: ConcurrentModificationException
```

Constructs ConcurrentModificationException from required parameters

#### `newConcurrentModificationException'`

``` purescript
newConcurrentModificationException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `CreateApplicationRequest`

``` purescript
newtype CreateApplicationRequest
  = CreateApplicationRequest { "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "Inputs" :: NullOrUndefined (Inputs), "Outputs" :: NullOrUndefined (Outputs), "CloudWatchLoggingOptions" :: NullOrUndefined (CloudWatchLoggingOptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode) }
```

<p>TBD</p>

##### Instances
``` purescript
Newtype CreateApplicationRequest _
Generic CreateApplicationRequest _
Show CreateApplicationRequest
Decode CreateApplicationRequest
Encode CreateApplicationRequest
```

#### `newCreateApplicationRequest`

``` purescript
newCreateApplicationRequest :: ApplicationName -> CreateApplicationRequest
```

Constructs CreateApplicationRequest from required parameters

#### `newCreateApplicationRequest'`

``` purescript
newCreateApplicationRequest' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "Inputs" :: NullOrUndefined (Inputs), "Outputs" :: NullOrUndefined (Outputs), "CloudWatchLoggingOptions" :: NullOrUndefined (CloudWatchLoggingOptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode) } -> { "ApplicationName" :: ApplicationName, "ApplicationDescription" :: NullOrUndefined (ApplicationDescription), "Inputs" :: NullOrUndefined (Inputs), "Outputs" :: NullOrUndefined (Outputs), "CloudWatchLoggingOptions" :: NullOrUndefined (CloudWatchLoggingOptions), "ApplicationCode" :: NullOrUndefined (ApplicationCode) }) -> CreateApplicationRequest
```

Constructs CreateApplicationRequest's fields from required parameters

#### `CreateApplicationResponse`

``` purescript
newtype CreateApplicationResponse
  = CreateApplicationResponse { "ApplicationSummary" :: ApplicationSummary }
```

<p>TBD</p>

##### Instances
``` purescript
Newtype CreateApplicationResponse _
Generic CreateApplicationResponse _
Show CreateApplicationResponse
Decode CreateApplicationResponse
Encode CreateApplicationResponse
```

#### `newCreateApplicationResponse`

``` purescript
newCreateApplicationResponse :: ApplicationSummary -> CreateApplicationResponse
```

Constructs CreateApplicationResponse from required parameters

#### `newCreateApplicationResponse'`

``` purescript
newCreateApplicationResponse' :: ApplicationSummary -> ({ "ApplicationSummary" :: ApplicationSummary } -> { "ApplicationSummary" :: ApplicationSummary }) -> CreateApplicationResponse
```

Constructs CreateApplicationResponse's fields from required parameters

#### `DeleteApplicationCloudWatchLoggingOptionRequest`

``` purescript
newtype DeleteApplicationCloudWatchLoggingOptionRequest
  = DeleteApplicationCloudWatchLoggingOptionRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOptionId" :: Id }
```

##### Instances
``` purescript
Newtype DeleteApplicationCloudWatchLoggingOptionRequest _
Generic DeleteApplicationCloudWatchLoggingOptionRequest _
Show DeleteApplicationCloudWatchLoggingOptionRequest
Decode DeleteApplicationCloudWatchLoggingOptionRequest
Encode DeleteApplicationCloudWatchLoggingOptionRequest
```

#### `newDeleteApplicationCloudWatchLoggingOptionRequest`

``` purescript
newDeleteApplicationCloudWatchLoggingOptionRequest :: ApplicationName -> Id -> ApplicationVersionId -> DeleteApplicationCloudWatchLoggingOptionRequest
```

Constructs DeleteApplicationCloudWatchLoggingOptionRequest from required parameters

#### `newDeleteApplicationCloudWatchLoggingOptionRequest'`

``` purescript
newDeleteApplicationCloudWatchLoggingOptionRequest' :: ApplicationName -> Id -> ApplicationVersionId -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOptionId" :: Id } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "CloudWatchLoggingOptionId" :: Id }) -> DeleteApplicationCloudWatchLoggingOptionRequest
```

Constructs DeleteApplicationCloudWatchLoggingOptionRequest's fields from required parameters

#### `DeleteApplicationCloudWatchLoggingOptionResponse`

``` purescript
newtype DeleteApplicationCloudWatchLoggingOptionResponse
  = DeleteApplicationCloudWatchLoggingOptionResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteApplicationCloudWatchLoggingOptionResponse _
Generic DeleteApplicationCloudWatchLoggingOptionResponse _
Show DeleteApplicationCloudWatchLoggingOptionResponse
Decode DeleteApplicationCloudWatchLoggingOptionResponse
Encode DeleteApplicationCloudWatchLoggingOptionResponse
```

#### `DeleteApplicationInputProcessingConfigurationRequest`

``` purescript
newtype DeleteApplicationInputProcessingConfigurationRequest
  = DeleteApplicationInputProcessingConfigurationRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id }
```

##### Instances
``` purescript
Newtype DeleteApplicationInputProcessingConfigurationRequest _
Generic DeleteApplicationInputProcessingConfigurationRequest _
Show DeleteApplicationInputProcessingConfigurationRequest
Decode DeleteApplicationInputProcessingConfigurationRequest
Encode DeleteApplicationInputProcessingConfigurationRequest
```

#### `newDeleteApplicationInputProcessingConfigurationRequest`

``` purescript
newDeleteApplicationInputProcessingConfigurationRequest :: ApplicationName -> ApplicationVersionId -> Id -> DeleteApplicationInputProcessingConfigurationRequest
```

Constructs DeleteApplicationInputProcessingConfigurationRequest from required parameters

#### `newDeleteApplicationInputProcessingConfigurationRequest'`

``` purescript
newDeleteApplicationInputProcessingConfigurationRequest' :: ApplicationName -> ApplicationVersionId -> Id -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "InputId" :: Id }) -> DeleteApplicationInputProcessingConfigurationRequest
```

Constructs DeleteApplicationInputProcessingConfigurationRequest's fields from required parameters

#### `DeleteApplicationInputProcessingConfigurationResponse`

``` purescript
newtype DeleteApplicationInputProcessingConfigurationResponse
  = DeleteApplicationInputProcessingConfigurationResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteApplicationInputProcessingConfigurationResponse _
Generic DeleteApplicationInputProcessingConfigurationResponse _
Show DeleteApplicationInputProcessingConfigurationResponse
Decode DeleteApplicationInputProcessingConfigurationResponse
Encode DeleteApplicationInputProcessingConfigurationResponse
```

#### `DeleteApplicationOutputRequest`

``` purescript
newtype DeleteApplicationOutputRequest
  = DeleteApplicationOutputRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "OutputId" :: Id }
```

<p/>

##### Instances
``` purescript
Newtype DeleteApplicationOutputRequest _
Generic DeleteApplicationOutputRequest _
Show DeleteApplicationOutputRequest
Decode DeleteApplicationOutputRequest
Encode DeleteApplicationOutputRequest
```

#### `newDeleteApplicationOutputRequest`

``` purescript
newDeleteApplicationOutputRequest :: ApplicationName -> ApplicationVersionId -> Id -> DeleteApplicationOutputRequest
```

Constructs DeleteApplicationOutputRequest from required parameters

#### `newDeleteApplicationOutputRequest'`

``` purescript
newDeleteApplicationOutputRequest' :: ApplicationName -> ApplicationVersionId -> Id -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "OutputId" :: Id } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "OutputId" :: Id }) -> DeleteApplicationOutputRequest
```

Constructs DeleteApplicationOutputRequest's fields from required parameters

#### `DeleteApplicationOutputResponse`

``` purescript
newtype DeleteApplicationOutputResponse
  = DeleteApplicationOutputResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype DeleteApplicationOutputResponse _
Generic DeleteApplicationOutputResponse _
Show DeleteApplicationOutputResponse
Decode DeleteApplicationOutputResponse
Encode DeleteApplicationOutputResponse
```

#### `DeleteApplicationReferenceDataSourceRequest`

``` purescript
newtype DeleteApplicationReferenceDataSourceRequest
  = DeleteApplicationReferenceDataSourceRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceId" :: Id }
```

##### Instances
``` purescript
Newtype DeleteApplicationReferenceDataSourceRequest _
Generic DeleteApplicationReferenceDataSourceRequest _
Show DeleteApplicationReferenceDataSourceRequest
Decode DeleteApplicationReferenceDataSourceRequest
Encode DeleteApplicationReferenceDataSourceRequest
```

#### `newDeleteApplicationReferenceDataSourceRequest`

``` purescript
newDeleteApplicationReferenceDataSourceRequest :: ApplicationName -> ApplicationVersionId -> Id -> DeleteApplicationReferenceDataSourceRequest
```

Constructs DeleteApplicationReferenceDataSourceRequest from required parameters

#### `newDeleteApplicationReferenceDataSourceRequest'`

``` purescript
newDeleteApplicationReferenceDataSourceRequest' :: ApplicationName -> ApplicationVersionId -> Id -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceId" :: Id } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ReferenceId" :: Id }) -> DeleteApplicationReferenceDataSourceRequest
```

Constructs DeleteApplicationReferenceDataSourceRequest's fields from required parameters

#### `DeleteApplicationReferenceDataSourceResponse`

``` purescript
newtype DeleteApplicationReferenceDataSourceResponse
  = DeleteApplicationReferenceDataSourceResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteApplicationReferenceDataSourceResponse _
Generic DeleteApplicationReferenceDataSourceResponse _
Show DeleteApplicationReferenceDataSourceResponse
Decode DeleteApplicationReferenceDataSourceResponse
Encode DeleteApplicationReferenceDataSourceResponse
```

#### `DeleteApplicationRequest`

``` purescript
newtype DeleteApplicationRequest
  = DeleteApplicationRequest { "ApplicationName" :: ApplicationName, "CreateTimestamp" :: Timestamp }
```

<p/>

##### Instances
``` purescript
Newtype DeleteApplicationRequest _
Generic DeleteApplicationRequest _
Show DeleteApplicationRequest
Decode DeleteApplicationRequest
Encode DeleteApplicationRequest
```

#### `newDeleteApplicationRequest`

``` purescript
newDeleteApplicationRequest :: ApplicationName -> Timestamp -> DeleteApplicationRequest
```

Constructs DeleteApplicationRequest from required parameters

#### `newDeleteApplicationRequest'`

``` purescript
newDeleteApplicationRequest' :: ApplicationName -> Timestamp -> ({ "ApplicationName" :: ApplicationName, "CreateTimestamp" :: Timestamp } -> { "ApplicationName" :: ApplicationName, "CreateTimestamp" :: Timestamp }) -> DeleteApplicationRequest
```

Constructs DeleteApplicationRequest's fields from required parameters

#### `DeleteApplicationResponse`

``` purescript
newtype DeleteApplicationResponse
  = DeleteApplicationResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype DeleteApplicationResponse _
Generic DeleteApplicationResponse _
Show DeleteApplicationResponse
Decode DeleteApplicationResponse
Encode DeleteApplicationResponse
```

#### `DescribeApplicationRequest`

``` purescript
newtype DescribeApplicationRequest
  = DescribeApplicationRequest { "ApplicationName" :: ApplicationName }
```

<p/>

##### Instances
``` purescript
Newtype DescribeApplicationRequest _
Generic DescribeApplicationRequest _
Show DescribeApplicationRequest
Decode DescribeApplicationRequest
Encode DescribeApplicationRequest
```

#### `newDescribeApplicationRequest`

``` purescript
newDescribeApplicationRequest :: ApplicationName -> DescribeApplicationRequest
```

Constructs DescribeApplicationRequest from required parameters

#### `newDescribeApplicationRequest'`

``` purescript
newDescribeApplicationRequest' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName } -> { "ApplicationName" :: ApplicationName }) -> DescribeApplicationRequest
```

Constructs DescribeApplicationRequest's fields from required parameters

#### `DescribeApplicationResponse`

``` purescript
newtype DescribeApplicationResponse
  = DescribeApplicationResponse { "ApplicationDetail" :: ApplicationDetail }
```

<p/>

##### Instances
``` purescript
Newtype DescribeApplicationResponse _
Generic DescribeApplicationResponse _
Show DescribeApplicationResponse
Decode DescribeApplicationResponse
Encode DescribeApplicationResponse
```

#### `newDescribeApplicationResponse`

``` purescript
newDescribeApplicationResponse :: ApplicationDetail -> DescribeApplicationResponse
```

Constructs DescribeApplicationResponse from required parameters

#### `newDescribeApplicationResponse'`

``` purescript
newDescribeApplicationResponse' :: ApplicationDetail -> ({ "ApplicationDetail" :: ApplicationDetail } -> { "ApplicationDetail" :: ApplicationDetail }) -> DescribeApplicationResponse
```

Constructs DescribeApplicationResponse's fields from required parameters

#### `DestinationSchema`

``` purescript
newtype DestinationSchema
  = DestinationSchema { "RecordFormatType" :: NullOrUndefined (RecordFormatType) }
```

<p>Describes the data format when records are written to the destination. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. </p>

##### Instances
``` purescript
Newtype DestinationSchema _
Generic DestinationSchema _
Show DestinationSchema
Decode DestinationSchema
Encode DestinationSchema
```

#### `newDestinationSchema`

``` purescript
newDestinationSchema :: DestinationSchema
```

Constructs DestinationSchema from required parameters

#### `newDestinationSchema'`

``` purescript
newDestinationSchema' :: ({ "RecordFormatType" :: NullOrUndefined (RecordFormatType) } -> { "RecordFormatType" :: NullOrUndefined (RecordFormatType) }) -> DestinationSchema
```

Constructs DestinationSchema's fields from required parameters

#### `DiscoverInputSchemaRequest`

``` purescript
newtype DiscoverInputSchemaRequest
  = DiscoverInputSchemaRequest { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration), "S3Configuration" :: NullOrUndefined (S3Configuration), "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration) }
```

##### Instances
``` purescript
Newtype DiscoverInputSchemaRequest _
Generic DiscoverInputSchemaRequest _
Show DiscoverInputSchemaRequest
Decode DiscoverInputSchemaRequest
Encode DiscoverInputSchemaRequest
```

#### `newDiscoverInputSchemaRequest`

``` purescript
newDiscoverInputSchemaRequest :: DiscoverInputSchemaRequest
```

Constructs DiscoverInputSchemaRequest from required parameters

#### `newDiscoverInputSchemaRequest'`

``` purescript
newDiscoverInputSchemaRequest' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration), "S3Configuration" :: NullOrUndefined (S3Configuration), "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration), "S3Configuration" :: NullOrUndefined (S3Configuration), "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration) }) -> DiscoverInputSchemaRequest
```

Constructs DiscoverInputSchemaRequest's fields from required parameters

#### `DiscoverInputSchemaResponse`

``` purescript
newtype DiscoverInputSchemaResponse
  = DiscoverInputSchemaResponse { "InputSchema" :: NullOrUndefined (SourceSchema), "ParsedInputRecords" :: NullOrUndefined (ParsedInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords), "RawInputRecords" :: NullOrUndefined (RawInputRecords) }
```

<p/>

##### Instances
``` purescript
Newtype DiscoverInputSchemaResponse _
Generic DiscoverInputSchemaResponse _
Show DiscoverInputSchemaResponse
Decode DiscoverInputSchemaResponse
Encode DiscoverInputSchemaResponse
```

#### `newDiscoverInputSchemaResponse`

``` purescript
newDiscoverInputSchemaResponse :: DiscoverInputSchemaResponse
```

Constructs DiscoverInputSchemaResponse from required parameters

#### `newDiscoverInputSchemaResponse'`

``` purescript
newDiscoverInputSchemaResponse' :: ({ "InputSchema" :: NullOrUndefined (SourceSchema), "ParsedInputRecords" :: NullOrUndefined (ParsedInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords), "RawInputRecords" :: NullOrUndefined (RawInputRecords) } -> { "InputSchema" :: NullOrUndefined (SourceSchema), "ParsedInputRecords" :: NullOrUndefined (ParsedInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords), "RawInputRecords" :: NullOrUndefined (RawInputRecords) }) -> DiscoverInputSchemaResponse
```

Constructs DiscoverInputSchemaResponse's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FileKey`

``` purescript
newtype FileKey
  = FileKey String
```

##### Instances
``` purescript
Newtype FileKey _
Generic FileKey _
Show FileKey
Decode FileKey
Encode FileKey
```

#### `Id`

``` purescript
newtype Id
  = Id String
```

##### Instances
``` purescript
Newtype Id _
Generic Id _
Show Id
Decode Id
Encode Id
```

#### `InAppStreamName`

``` purescript
newtype InAppStreamName
  = InAppStreamName String
```

##### Instances
``` purescript
Newtype InAppStreamName _
Generic InAppStreamName _
Show InAppStreamName
Decode InAppStreamName
Encode InAppStreamName
```

#### `InAppStreamNames`

``` purescript
newtype InAppStreamNames
  = InAppStreamNames (Array InAppStreamName)
```

##### Instances
``` purescript
Newtype InAppStreamNames _
Generic InAppStreamNames _
Show InAppStreamNames
Decode InAppStreamNames
Encode InAppStreamNames
```

#### `InAppTableName`

``` purescript
newtype InAppTableName
  = InAppTableName String
```

##### Instances
``` purescript
Newtype InAppTableName _
Generic InAppTableName _
Show InAppTableName
Decode InAppTableName
Encode InAppTableName
```

#### `Input`

``` purescript
newtype Input
  = Input { "NamePrefix" :: InAppStreamName, "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration), "KinesisStreamsInput" :: NullOrUndefined (KinesisStreamsInput), "KinesisFirehoseInput" :: NullOrUndefined (KinesisFirehoseInput), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputSchema" :: SourceSchema }
```

<p>When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>

##### Instances
``` purescript
Newtype Input _
Generic Input _
Show Input
Decode Input
Encode Input
```

#### `newInput`

``` purescript
newInput :: SourceSchema -> InAppStreamName -> Input
```

Constructs Input from required parameters

#### `newInput'`

``` purescript
newInput' :: SourceSchema -> InAppStreamName -> ({ "NamePrefix" :: InAppStreamName, "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration), "KinesisStreamsInput" :: NullOrUndefined (KinesisStreamsInput), "KinesisFirehoseInput" :: NullOrUndefined (KinesisFirehoseInput), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputSchema" :: SourceSchema } -> { "NamePrefix" :: InAppStreamName, "InputProcessingConfiguration" :: NullOrUndefined (InputProcessingConfiguration), "KinesisStreamsInput" :: NullOrUndefined (KinesisStreamsInput), "KinesisFirehoseInput" :: NullOrUndefined (KinesisFirehoseInput), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputSchema" :: SourceSchema }) -> Input
```

Constructs Input's fields from required parameters

#### `InputConfiguration`

``` purescript
newtype InputConfiguration
  = InputConfiguration { "Id" :: Id, "InputStartingPositionConfiguration" :: InputStartingPositionConfiguration }
```

<p>When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.</p>

##### Instances
``` purescript
Newtype InputConfiguration _
Generic InputConfiguration _
Show InputConfiguration
Decode InputConfiguration
Encode InputConfiguration
```

#### `newInputConfiguration`

``` purescript
newInputConfiguration :: Id -> InputStartingPositionConfiguration -> InputConfiguration
```

Constructs InputConfiguration from required parameters

#### `newInputConfiguration'`

``` purescript
newInputConfiguration' :: Id -> InputStartingPositionConfiguration -> ({ "Id" :: Id, "InputStartingPositionConfiguration" :: InputStartingPositionConfiguration } -> { "Id" :: Id, "InputStartingPositionConfiguration" :: InputStartingPositionConfiguration }) -> InputConfiguration
```

Constructs InputConfiguration's fields from required parameters

#### `InputConfigurations`

``` purescript
newtype InputConfigurations
  = InputConfigurations (Array InputConfiguration)
```

##### Instances
``` purescript
Newtype InputConfigurations _
Generic InputConfigurations _
Show InputConfigurations
Decode InputConfigurations
Encode InputConfigurations
```

#### `InputDescription`

``` purescript
newtype InputDescription
  = InputDescription { "InputId" :: NullOrUndefined (Id), "NamePrefix" :: NullOrUndefined (InAppStreamName), "InAppStreamNames" :: NullOrUndefined (InAppStreamNames), "InputProcessingConfigurationDescription" :: NullOrUndefined (InputProcessingConfigurationDescription), "KinesisStreamsInputDescription" :: NullOrUndefined (KinesisStreamsInputDescription), "KinesisFirehoseInputDescription" :: NullOrUndefined (KinesisFirehoseInputDescription), "InputSchema" :: NullOrUndefined (SourceSchema), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration) }
```

<p>Describes the application input configuration. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>

##### Instances
``` purescript
Newtype InputDescription _
Generic InputDescription _
Show InputDescription
Decode InputDescription
Encode InputDescription
```

#### `newInputDescription`

``` purescript
newInputDescription :: InputDescription
```

Constructs InputDescription from required parameters

#### `newInputDescription'`

``` purescript
newInputDescription' :: ({ "InputId" :: NullOrUndefined (Id), "NamePrefix" :: NullOrUndefined (InAppStreamName), "InAppStreamNames" :: NullOrUndefined (InAppStreamNames), "InputProcessingConfigurationDescription" :: NullOrUndefined (InputProcessingConfigurationDescription), "KinesisStreamsInputDescription" :: NullOrUndefined (KinesisStreamsInputDescription), "KinesisFirehoseInputDescription" :: NullOrUndefined (KinesisFirehoseInputDescription), "InputSchema" :: NullOrUndefined (SourceSchema), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration) } -> { "InputId" :: NullOrUndefined (Id), "NamePrefix" :: NullOrUndefined (InAppStreamName), "InAppStreamNames" :: NullOrUndefined (InAppStreamNames), "InputProcessingConfigurationDescription" :: NullOrUndefined (InputProcessingConfigurationDescription), "KinesisStreamsInputDescription" :: NullOrUndefined (KinesisStreamsInputDescription), "KinesisFirehoseInputDescription" :: NullOrUndefined (KinesisFirehoseInputDescription), "InputSchema" :: NullOrUndefined (SourceSchema), "InputParallelism" :: NullOrUndefined (InputParallelism), "InputStartingPositionConfiguration" :: NullOrUndefined (InputStartingPositionConfiguration) }) -> InputDescription
```

Constructs InputDescription's fields from required parameters

#### `InputDescriptions`

``` purescript
newtype InputDescriptions
  = InputDescriptions (Array InputDescription)
```

##### Instances
``` purescript
Newtype InputDescriptions _
Generic InputDescriptions _
Show InputDescriptions
Decode InputDescriptions
Encode InputDescriptions
```

#### `InputLambdaProcessor`

``` purescript
newtype InputLambdaProcessor
  = InputLambdaProcessor { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda function. </p>

##### Instances
``` purescript
Newtype InputLambdaProcessor _
Generic InputLambdaProcessor _
Show InputLambdaProcessor
Decode InputLambdaProcessor
Encode InputLambdaProcessor
```

#### `newInputLambdaProcessor`

``` purescript
newInputLambdaProcessor :: ResourceARN -> RoleARN -> InputLambdaProcessor
```

Constructs InputLambdaProcessor from required parameters

#### `newInputLambdaProcessor'`

``` purescript
newInputLambdaProcessor' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> InputLambdaProcessor
```

Constructs InputLambdaProcessor's fields from required parameters

#### `InputLambdaProcessorDescription`

``` purescript
newtype InputLambdaProcessorDescription
  = InputLambdaProcessorDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda expression.</p>

##### Instances
``` purescript
Newtype InputLambdaProcessorDescription _
Generic InputLambdaProcessorDescription _
Show InputLambdaProcessorDescription
Decode InputLambdaProcessorDescription
Encode InputLambdaProcessorDescription
```

#### `newInputLambdaProcessorDescription`

``` purescript
newInputLambdaProcessorDescription :: InputLambdaProcessorDescription
```

Constructs InputLambdaProcessorDescription from required parameters

#### `newInputLambdaProcessorDescription'`

``` purescript
newInputLambdaProcessorDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> InputLambdaProcessorDescription
```

Constructs InputLambdaProcessorDescription's fields from required parameters

#### `InputLambdaProcessorUpdate`

``` purescript
newtype InputLambdaProcessorUpdate
  = InputLambdaProcessorUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>Represents an update to the <a>InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>

##### Instances
``` purescript
Newtype InputLambdaProcessorUpdate _
Generic InputLambdaProcessorUpdate _
Show InputLambdaProcessorUpdate
Decode InputLambdaProcessorUpdate
Encode InputLambdaProcessorUpdate
```

#### `newInputLambdaProcessorUpdate`

``` purescript
newInputLambdaProcessorUpdate :: InputLambdaProcessorUpdate
```

Constructs InputLambdaProcessorUpdate from required parameters

#### `newInputLambdaProcessorUpdate'`

``` purescript
newInputLambdaProcessorUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> InputLambdaProcessorUpdate
```

Constructs InputLambdaProcessorUpdate's fields from required parameters

#### `InputParallelism`

``` purescript
newtype InputParallelism
  = InputParallelism { "Count" :: NullOrUndefined (InputParallelismCount) }
```

<p>Describes the number of in-application streams to create for a given streaming source. For information about parallelism, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>

##### Instances
``` purescript
Newtype InputParallelism _
Generic InputParallelism _
Show InputParallelism
Decode InputParallelism
Encode InputParallelism
```

#### `newInputParallelism`

``` purescript
newInputParallelism :: InputParallelism
```

Constructs InputParallelism from required parameters

#### `newInputParallelism'`

``` purescript
newInputParallelism' :: ({ "Count" :: NullOrUndefined (InputParallelismCount) } -> { "Count" :: NullOrUndefined (InputParallelismCount) }) -> InputParallelism
```

Constructs InputParallelism's fields from required parameters

#### `InputParallelismCount`

``` purescript
newtype InputParallelismCount
  = InputParallelismCount Int
```

##### Instances
``` purescript
Newtype InputParallelismCount _
Generic InputParallelismCount _
Show InputParallelismCount
Decode InputParallelismCount
Encode InputParallelismCount
```

#### `InputParallelismUpdate`

``` purescript
newtype InputParallelismUpdate
  = InputParallelismUpdate { "CountUpdate" :: NullOrUndefined (InputParallelismCount) }
```

<p>Provides updates to the parallelism count.</p>

##### Instances
``` purescript
Newtype InputParallelismUpdate _
Generic InputParallelismUpdate _
Show InputParallelismUpdate
Decode InputParallelismUpdate
Encode InputParallelismUpdate
```

#### `newInputParallelismUpdate`

``` purescript
newInputParallelismUpdate :: InputParallelismUpdate
```

Constructs InputParallelismUpdate from required parameters

#### `newInputParallelismUpdate'`

``` purescript
newInputParallelismUpdate' :: ({ "CountUpdate" :: NullOrUndefined (InputParallelismCount) } -> { "CountUpdate" :: NullOrUndefined (InputParallelismCount) }) -> InputParallelismUpdate
```

Constructs InputParallelismUpdate's fields from required parameters

#### `InputProcessingConfiguration`

``` purescript
newtype InputProcessingConfiguration
  = InputProcessingConfiguration { "InputLambdaProcessor" :: InputLambdaProcessor }
```

<p>Provides a description of a processor that is used to preprocess the records in the stream before being processed by your application code. Currently, the only input processor available is <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a>.</p>

##### Instances
``` purescript
Newtype InputProcessingConfiguration _
Generic InputProcessingConfiguration _
Show InputProcessingConfiguration
Decode InputProcessingConfiguration
Encode InputProcessingConfiguration
```

#### `newInputProcessingConfiguration`

``` purescript
newInputProcessingConfiguration :: InputLambdaProcessor -> InputProcessingConfiguration
```

Constructs InputProcessingConfiguration from required parameters

#### `newInputProcessingConfiguration'`

``` purescript
newInputProcessingConfiguration' :: InputLambdaProcessor -> ({ "InputLambdaProcessor" :: InputLambdaProcessor } -> { "InputLambdaProcessor" :: InputLambdaProcessor }) -> InputProcessingConfiguration
```

Constructs InputProcessingConfiguration's fields from required parameters

#### `InputProcessingConfigurationDescription`

``` purescript
newtype InputProcessingConfigurationDescription
  = InputProcessingConfigurationDescription { "InputLambdaProcessorDescription" :: NullOrUndefined (InputLambdaProcessorDescription) }
```

<p>Provides configuration information about an input processor. Currently, the only input processor available is <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a>.</p>

##### Instances
``` purescript
Newtype InputProcessingConfigurationDescription _
Generic InputProcessingConfigurationDescription _
Show InputProcessingConfigurationDescription
Decode InputProcessingConfigurationDescription
Encode InputProcessingConfigurationDescription
```

#### `newInputProcessingConfigurationDescription`

``` purescript
newInputProcessingConfigurationDescription :: InputProcessingConfigurationDescription
```

Constructs InputProcessingConfigurationDescription from required parameters

#### `newInputProcessingConfigurationDescription'`

``` purescript
newInputProcessingConfigurationDescription' :: ({ "InputLambdaProcessorDescription" :: NullOrUndefined (InputLambdaProcessorDescription) } -> { "InputLambdaProcessorDescription" :: NullOrUndefined (InputLambdaProcessorDescription) }) -> InputProcessingConfigurationDescription
```

Constructs InputProcessingConfigurationDescription's fields from required parameters

#### `InputProcessingConfigurationUpdate`

``` purescript
newtype InputProcessingConfigurationUpdate
  = InputProcessingConfigurationUpdate { "InputLambdaProcessorUpdate" :: InputLambdaProcessorUpdate }
```

<p>Describes updates to an <a>InputProcessingConfiguration</a>. </p>

##### Instances
``` purescript
Newtype InputProcessingConfigurationUpdate _
Generic InputProcessingConfigurationUpdate _
Show InputProcessingConfigurationUpdate
Decode InputProcessingConfigurationUpdate
Encode InputProcessingConfigurationUpdate
```

#### `newInputProcessingConfigurationUpdate`

``` purescript
newInputProcessingConfigurationUpdate :: InputLambdaProcessorUpdate -> InputProcessingConfigurationUpdate
```

Constructs InputProcessingConfigurationUpdate from required parameters

#### `newInputProcessingConfigurationUpdate'`

``` purescript
newInputProcessingConfigurationUpdate' :: InputLambdaProcessorUpdate -> ({ "InputLambdaProcessorUpdate" :: InputLambdaProcessorUpdate } -> { "InputLambdaProcessorUpdate" :: InputLambdaProcessorUpdate }) -> InputProcessingConfigurationUpdate
```

Constructs InputProcessingConfigurationUpdate's fields from required parameters

#### `InputSchemaUpdate`

``` purescript
newtype InputSchemaUpdate
  = InputSchemaUpdate { "RecordFormatUpdate" :: NullOrUndefined (RecordFormat), "RecordEncodingUpdate" :: NullOrUndefined (RecordEncoding), "RecordColumnUpdates" :: NullOrUndefined (RecordColumns) }
```

<p>Describes updates for the application's input schema.</p>

##### Instances
``` purescript
Newtype InputSchemaUpdate _
Generic InputSchemaUpdate _
Show InputSchemaUpdate
Decode InputSchemaUpdate
Encode InputSchemaUpdate
```

#### `newInputSchemaUpdate`

``` purescript
newInputSchemaUpdate :: InputSchemaUpdate
```

Constructs InputSchemaUpdate from required parameters

#### `newInputSchemaUpdate'`

``` purescript
newInputSchemaUpdate' :: ({ "RecordFormatUpdate" :: NullOrUndefined (RecordFormat), "RecordEncodingUpdate" :: NullOrUndefined (RecordEncoding), "RecordColumnUpdates" :: NullOrUndefined (RecordColumns) } -> { "RecordFormatUpdate" :: NullOrUndefined (RecordFormat), "RecordEncodingUpdate" :: NullOrUndefined (RecordEncoding), "RecordColumnUpdates" :: NullOrUndefined (RecordColumns) }) -> InputSchemaUpdate
```

Constructs InputSchemaUpdate's fields from required parameters

#### `InputStartingPosition`

``` purescript
newtype InputStartingPosition
  = InputStartingPosition String
```

##### Instances
``` purescript
Newtype InputStartingPosition _
Generic InputStartingPosition _
Show InputStartingPosition
Decode InputStartingPosition
Encode InputStartingPosition
```

#### `InputStartingPositionConfiguration`

``` purescript
newtype InputStartingPositionConfiguration
  = InputStartingPositionConfiguration { "InputStartingPosition" :: NullOrUndefined (InputStartingPosition) }
```

<p>Describes the point at which the application reads from the streaming source.</p>

##### Instances
``` purescript
Newtype InputStartingPositionConfiguration _
Generic InputStartingPositionConfiguration _
Show InputStartingPositionConfiguration
Decode InputStartingPositionConfiguration
Encode InputStartingPositionConfiguration
```

#### `newInputStartingPositionConfiguration`

``` purescript
newInputStartingPositionConfiguration :: InputStartingPositionConfiguration
```

Constructs InputStartingPositionConfiguration from required parameters

#### `newInputStartingPositionConfiguration'`

``` purescript
newInputStartingPositionConfiguration' :: ({ "InputStartingPosition" :: NullOrUndefined (InputStartingPosition) } -> { "InputStartingPosition" :: NullOrUndefined (InputStartingPosition) }) -> InputStartingPositionConfiguration
```

Constructs InputStartingPositionConfiguration's fields from required parameters

#### `InputUpdate`

``` purescript
newtype InputUpdate
  = InputUpdate { "InputId" :: Id, "NamePrefixUpdate" :: NullOrUndefined (InAppStreamName), "InputProcessingConfigurationUpdate" :: NullOrUndefined (InputProcessingConfigurationUpdate), "KinesisStreamsInputUpdate" :: NullOrUndefined (KinesisStreamsInputUpdate), "KinesisFirehoseInputUpdate" :: NullOrUndefined (KinesisFirehoseInputUpdate), "InputSchemaUpdate" :: NullOrUndefined (InputSchemaUpdate), "InputParallelismUpdate" :: NullOrUndefined (InputParallelismUpdate) }
```

<p>Describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>

##### Instances
``` purescript
Newtype InputUpdate _
Generic InputUpdate _
Show InputUpdate
Decode InputUpdate
Encode InputUpdate
```

#### `newInputUpdate`

``` purescript
newInputUpdate :: Id -> InputUpdate
```

Constructs InputUpdate from required parameters

#### `newInputUpdate'`

``` purescript
newInputUpdate' :: Id -> ({ "InputId" :: Id, "NamePrefixUpdate" :: NullOrUndefined (InAppStreamName), "InputProcessingConfigurationUpdate" :: NullOrUndefined (InputProcessingConfigurationUpdate), "KinesisStreamsInputUpdate" :: NullOrUndefined (KinesisStreamsInputUpdate), "KinesisFirehoseInputUpdate" :: NullOrUndefined (KinesisFirehoseInputUpdate), "InputSchemaUpdate" :: NullOrUndefined (InputSchemaUpdate), "InputParallelismUpdate" :: NullOrUndefined (InputParallelismUpdate) } -> { "InputId" :: Id, "NamePrefixUpdate" :: NullOrUndefined (InAppStreamName), "InputProcessingConfigurationUpdate" :: NullOrUndefined (InputProcessingConfigurationUpdate), "KinesisStreamsInputUpdate" :: NullOrUndefined (KinesisStreamsInputUpdate), "KinesisFirehoseInputUpdate" :: NullOrUndefined (KinesisFirehoseInputUpdate), "InputSchemaUpdate" :: NullOrUndefined (InputSchemaUpdate), "InputParallelismUpdate" :: NullOrUndefined (InputParallelismUpdate) }) -> InputUpdate
```

Constructs InputUpdate's fields from required parameters

#### `InputUpdates`

``` purescript
newtype InputUpdates
  = InputUpdates (Array InputUpdate)
```

##### Instances
``` purescript
Newtype InputUpdates _
Generic InputUpdates _
Show InputUpdates
Decode InputUpdates
Encode InputUpdates
```

#### `Inputs`

``` purescript
newtype Inputs
  = Inputs (Array Input)
```

##### Instances
``` purescript
Newtype Inputs _
Generic Inputs _
Show Inputs
Decode Inputs
Encode Inputs
```

#### `InvalidApplicationConfigurationException`

``` purescript
newtype InvalidApplicationConfigurationException
  = InvalidApplicationConfigurationException { message :: NullOrUndefined (ErrorMessage) }
```

<p>User-provided application configuration is not valid.</p>

##### Instances
``` purescript
Newtype InvalidApplicationConfigurationException _
Generic InvalidApplicationConfigurationException _
Show InvalidApplicationConfigurationException
Decode InvalidApplicationConfigurationException
Encode InvalidApplicationConfigurationException
```

#### `newInvalidApplicationConfigurationException`

``` purescript
newInvalidApplicationConfigurationException :: InvalidApplicationConfigurationException
```

Constructs InvalidApplicationConfigurationException from required parameters

#### `newInvalidApplicationConfigurationException'`

``` purescript
newInvalidApplicationConfigurationException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidApplicationConfigurationException
```

Constructs InvalidApplicationConfigurationException's fields from required parameters

#### `InvalidArgumentException`

``` purescript
newtype InvalidArgumentException
  = InvalidArgumentException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Specified input parameter value is invalid.</p>

##### Instances
``` purescript
Newtype InvalidArgumentException _
Generic InvalidArgumentException _
Show InvalidArgumentException
Decode InvalidArgumentException
Encode InvalidArgumentException
```

#### `newInvalidArgumentException`

``` purescript
newInvalidArgumentException :: InvalidArgumentException
```

Constructs InvalidArgumentException from required parameters

#### `newInvalidArgumentException'`

``` purescript
newInvalidArgumentException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidArgumentException
```

Constructs InvalidArgumentException's fields from required parameters

#### `JSONMappingParameters`

``` purescript
newtype JSONMappingParameters
  = JSONMappingParameters { "RecordRowPath" :: RecordRowPath }
```

<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>

##### Instances
``` purescript
Newtype JSONMappingParameters _
Generic JSONMappingParameters _
Show JSONMappingParameters
Decode JSONMappingParameters
Encode JSONMappingParameters
```

#### `newJSONMappingParameters`

``` purescript
newJSONMappingParameters :: RecordRowPath -> JSONMappingParameters
```

Constructs JSONMappingParameters from required parameters

#### `newJSONMappingParameters'`

``` purescript
newJSONMappingParameters' :: RecordRowPath -> ({ "RecordRowPath" :: RecordRowPath } -> { "RecordRowPath" :: RecordRowPath }) -> JSONMappingParameters
```

Constructs JSONMappingParameters's fields from required parameters

#### `KinesisFirehoseInput`

``` purescript
newtype KinesisFirehoseInput
  = KinesisFirehoseInput { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>

##### Instances
``` purescript
Newtype KinesisFirehoseInput _
Generic KinesisFirehoseInput _
Show KinesisFirehoseInput
Decode KinesisFirehoseInput
Encode KinesisFirehoseInput
```

#### `newKinesisFirehoseInput`

``` purescript
newKinesisFirehoseInput :: ResourceARN -> RoleARN -> KinesisFirehoseInput
```

Constructs KinesisFirehoseInput from required parameters

#### `newKinesisFirehoseInput'`

``` purescript
newKinesisFirehoseInput' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> KinesisFirehoseInput
```

Constructs KinesisFirehoseInput's fields from required parameters

#### `KinesisFirehoseInputDescription`

``` purescript
newtype KinesisFirehoseInputDescription
  = KinesisFirehoseInputDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p> Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>

##### Instances
``` purescript
Newtype KinesisFirehoseInputDescription _
Generic KinesisFirehoseInputDescription _
Show KinesisFirehoseInputDescription
Decode KinesisFirehoseInputDescription
Encode KinesisFirehoseInputDescription
```

#### `newKinesisFirehoseInputDescription`

``` purescript
newKinesisFirehoseInputDescription :: KinesisFirehoseInputDescription
```

Constructs KinesisFirehoseInputDescription from required parameters

#### `newKinesisFirehoseInputDescription'`

``` purescript
newKinesisFirehoseInputDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> KinesisFirehoseInputDescription
```

Constructs KinesisFirehoseInputDescription's fields from required parameters

#### `KinesisFirehoseInputUpdate`

``` purescript
newtype KinesisFirehoseInputUpdate
  = KinesisFirehoseInputUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.</p>

##### Instances
``` purescript
Newtype KinesisFirehoseInputUpdate _
Generic KinesisFirehoseInputUpdate _
Show KinesisFirehoseInputUpdate
Decode KinesisFirehoseInputUpdate
Encode KinesisFirehoseInputUpdate
```

#### `newKinesisFirehoseInputUpdate`

``` purescript
newKinesisFirehoseInputUpdate :: KinesisFirehoseInputUpdate
```

Constructs KinesisFirehoseInputUpdate from required parameters

#### `newKinesisFirehoseInputUpdate'`

``` purescript
newKinesisFirehoseInputUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> KinesisFirehoseInputUpdate
```

Constructs KinesisFirehoseInputUpdate's fields from required parameters

#### `KinesisFirehoseOutput`

``` purescript
newtype KinesisFirehoseOutput
  = KinesisFirehoseOutput { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p>When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>

##### Instances
``` purescript
Newtype KinesisFirehoseOutput _
Generic KinesisFirehoseOutput _
Show KinesisFirehoseOutput
Decode KinesisFirehoseOutput
Encode KinesisFirehoseOutput
```

#### `newKinesisFirehoseOutput`

``` purescript
newKinesisFirehoseOutput :: ResourceARN -> RoleARN -> KinesisFirehoseOutput
```

Constructs KinesisFirehoseOutput from required parameters

#### `newKinesisFirehoseOutput'`

``` purescript
newKinesisFirehoseOutput' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> KinesisFirehoseOutput
```

Constructs KinesisFirehoseOutput's fields from required parameters

#### `KinesisFirehoseOutputDescription`

``` purescript
newtype KinesisFirehoseOutputDescription
  = KinesisFirehoseOutputDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p> For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. </p>

##### Instances
``` purescript
Newtype KinesisFirehoseOutputDescription _
Generic KinesisFirehoseOutputDescription _
Show KinesisFirehoseOutputDescription
Decode KinesisFirehoseOutputDescription
Encode KinesisFirehoseOutputDescription
```

#### `newKinesisFirehoseOutputDescription`

``` purescript
newKinesisFirehoseOutputDescription :: KinesisFirehoseOutputDescription
```

Constructs KinesisFirehoseOutputDescription from required parameters

#### `newKinesisFirehoseOutputDescription'`

``` purescript
newKinesisFirehoseOutputDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> KinesisFirehoseOutputDescription
```

Constructs KinesisFirehoseOutputDescription's fields from required parameters

#### `KinesisFirehoseOutputUpdate`

``` purescript
newtype KinesisFirehoseOutputUpdate
  = KinesisFirehoseOutputUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. </p>

##### Instances
``` purescript
Newtype KinesisFirehoseOutputUpdate _
Generic KinesisFirehoseOutputUpdate _
Show KinesisFirehoseOutputUpdate
Decode KinesisFirehoseOutputUpdate
Encode KinesisFirehoseOutputUpdate
```

#### `newKinesisFirehoseOutputUpdate`

``` purescript
newKinesisFirehoseOutputUpdate :: KinesisFirehoseOutputUpdate
```

Constructs KinesisFirehoseOutputUpdate from required parameters

#### `newKinesisFirehoseOutputUpdate'`

``` purescript
newKinesisFirehoseOutputUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> KinesisFirehoseOutputUpdate
```

Constructs KinesisFirehoseOutputUpdate's fields from required parameters

#### `KinesisStreamsInput`

``` purescript
newtype KinesisStreamsInput
  = KinesisStreamsInput { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p> Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>

##### Instances
``` purescript
Newtype KinesisStreamsInput _
Generic KinesisStreamsInput _
Show KinesisStreamsInput
Decode KinesisStreamsInput
Encode KinesisStreamsInput
```

#### `newKinesisStreamsInput`

``` purescript
newKinesisStreamsInput :: ResourceARN -> RoleARN -> KinesisStreamsInput
```

Constructs KinesisStreamsInput from required parameters

#### `newKinesisStreamsInput'`

``` purescript
newKinesisStreamsInput' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> KinesisStreamsInput
```

Constructs KinesisStreamsInput's fields from required parameters

#### `KinesisStreamsInputDescription`

``` purescript
newtype KinesisStreamsInputDescription
  = KinesisStreamsInputDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p> Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. </p>

##### Instances
``` purescript
Newtype KinesisStreamsInputDescription _
Generic KinesisStreamsInputDescription _
Show KinesisStreamsInputDescription
Decode KinesisStreamsInputDescription
Encode KinesisStreamsInputDescription
```

#### `newKinesisStreamsInputDescription`

``` purescript
newKinesisStreamsInputDescription :: KinesisStreamsInputDescription
```

Constructs KinesisStreamsInputDescription from required parameters

#### `newKinesisStreamsInputDescription'`

``` purescript
newKinesisStreamsInputDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> KinesisStreamsInputDescription
```

Constructs KinesisStreamsInputDescription's fields from required parameters

#### `KinesisStreamsInputUpdate`

``` purescript
newtype KinesisStreamsInputUpdate
  = KinesisStreamsInputUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.</p>

##### Instances
``` purescript
Newtype KinesisStreamsInputUpdate _
Generic KinesisStreamsInputUpdate _
Show KinesisStreamsInputUpdate
Decode KinesisStreamsInputUpdate
Encode KinesisStreamsInputUpdate
```

#### `newKinesisStreamsInputUpdate`

``` purescript
newKinesisStreamsInputUpdate :: KinesisStreamsInputUpdate
```

Constructs KinesisStreamsInputUpdate from required parameters

#### `newKinesisStreamsInputUpdate'`

``` purescript
newKinesisStreamsInputUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> KinesisStreamsInputUpdate
```

Constructs KinesisStreamsInputUpdate's fields from required parameters

#### `KinesisStreamsOutput`

``` purescript
newtype KinesisStreamsOutput
  = KinesisStreamsOutput { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p>When configuring application output, identifies an Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>

##### Instances
``` purescript
Newtype KinesisStreamsOutput _
Generic KinesisStreamsOutput _
Show KinesisStreamsOutput
Decode KinesisStreamsOutput
Encode KinesisStreamsOutput
```

#### `newKinesisStreamsOutput`

``` purescript
newKinesisStreamsOutput :: ResourceARN -> RoleARN -> KinesisStreamsOutput
```

Constructs KinesisStreamsOutput from required parameters

#### `newKinesisStreamsOutput'`

``` purescript
newKinesisStreamsOutput' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> KinesisStreamsOutput
```

Constructs KinesisStreamsOutput's fields from required parameters

#### `KinesisStreamsOutputDescription`

``` purescript
newtype KinesisStreamsOutputDescription
  = KinesisStreamsOutputDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p> For an application output, describes the Amazon Kinesis stream configured as its destination. </p>

##### Instances
``` purescript
Newtype KinesisStreamsOutputDescription _
Generic KinesisStreamsOutputDescription _
Show KinesisStreamsOutputDescription
Decode KinesisStreamsOutputDescription
Encode KinesisStreamsOutputDescription
```

#### `newKinesisStreamsOutputDescription`

``` purescript
newKinesisStreamsOutputDescription :: KinesisStreamsOutputDescription
```

Constructs KinesisStreamsOutputDescription from required parameters

#### `newKinesisStreamsOutputDescription'`

``` purescript
newKinesisStreamsOutputDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> KinesisStreamsOutputDescription
```

Constructs KinesisStreamsOutputDescription's fields from required parameters

#### `KinesisStreamsOutputUpdate`

``` purescript
newtype KinesisStreamsOutputUpdate
  = KinesisStreamsOutputUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis stream configured as the destination. </p>

##### Instances
``` purescript
Newtype KinesisStreamsOutputUpdate _
Generic KinesisStreamsOutputUpdate _
Show KinesisStreamsOutputUpdate
Decode KinesisStreamsOutputUpdate
Encode KinesisStreamsOutputUpdate
```

#### `newKinesisStreamsOutputUpdate`

``` purescript
newKinesisStreamsOutputUpdate :: KinesisStreamsOutputUpdate
```

Constructs KinesisStreamsOutputUpdate from required parameters

#### `newKinesisStreamsOutputUpdate'`

``` purescript
newKinesisStreamsOutputUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> KinesisStreamsOutputUpdate
```

Constructs KinesisStreamsOutputUpdate's fields from required parameters

#### `LambdaOutput`

``` purescript
newtype LambdaOutput
  = LambdaOutput { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }
```

<p>When configuring application output, identifies an AWS Lambda function as the destination. You provide the function Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the function on your behalf. </p>

##### Instances
``` purescript
Newtype LambdaOutput _
Generic LambdaOutput _
Show LambdaOutput
Decode LambdaOutput
Encode LambdaOutput
```

#### `newLambdaOutput`

``` purescript
newLambdaOutput :: ResourceARN -> RoleARN -> LambdaOutput
```

Constructs LambdaOutput from required parameters

#### `newLambdaOutput'`

``` purescript
newLambdaOutput' :: ResourceARN -> RoleARN -> ({ "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN } -> { "ResourceARN" :: ResourceARN, "RoleARN" :: RoleARN }) -> LambdaOutput
```

Constructs LambdaOutput's fields from required parameters

#### `LambdaOutputDescription`

``` purescript
newtype LambdaOutputDescription
  = LambdaOutputDescription { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }
```

<p>For an application output, describes the AWS Lambda function configured as its destination. </p>

##### Instances
``` purescript
Newtype LambdaOutputDescription _
Generic LambdaOutputDescription _
Show LambdaOutputDescription
Decode LambdaOutputDescription
Encode LambdaOutputDescription
```

#### `newLambdaOutputDescription`

``` purescript
newLambdaOutputDescription :: LambdaOutputDescription
```

Constructs LambdaOutputDescription from required parameters

#### `newLambdaOutputDescription'`

``` purescript
newLambdaOutputDescription' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "RoleARN" :: NullOrUndefined (RoleARN) }) -> LambdaOutputDescription
```

Constructs LambdaOutputDescription's fields from required parameters

#### `LambdaOutputUpdate`

``` purescript
newtype LambdaOutputUpdate
  = LambdaOutputUpdate { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an AWS Lambda function configured as the destination.</p>

##### Instances
``` purescript
Newtype LambdaOutputUpdate _
Generic LambdaOutputUpdate _
Show LambdaOutputUpdate
Decode LambdaOutputUpdate
Encode LambdaOutputUpdate
```

#### `newLambdaOutputUpdate`

``` purescript
newLambdaOutputUpdate :: LambdaOutputUpdate
```

Constructs LambdaOutputUpdate from required parameters

#### `newLambdaOutputUpdate'`

``` purescript
newLambdaOutputUpdate' :: ({ "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "ResourceARNUpdate" :: NullOrUndefined (ResourceARN), "RoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> LambdaOutputUpdate
```

Constructs LambdaOutputUpdate's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Exceeded the number of applications allowed.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListApplicationsInputLimit`

``` purescript
newtype ListApplicationsInputLimit
  = ListApplicationsInputLimit Int
```

##### Instances
``` purescript
Newtype ListApplicationsInputLimit _
Generic ListApplicationsInputLimit _
Show ListApplicationsInputLimit
Decode ListApplicationsInputLimit
Encode ListApplicationsInputLimit
```

#### `ListApplicationsRequest`

``` purescript
newtype ListApplicationsRequest
  = ListApplicationsRequest { "Limit" :: NullOrUndefined (ListApplicationsInputLimit), "ExclusiveStartApplicationName" :: NullOrUndefined (ApplicationName) }
```

<p/>

##### Instances
``` purescript
Newtype ListApplicationsRequest _
Generic ListApplicationsRequest _
Show ListApplicationsRequest
Decode ListApplicationsRequest
Encode ListApplicationsRequest
```

#### `newListApplicationsRequest`

``` purescript
newListApplicationsRequest :: ListApplicationsRequest
```

Constructs ListApplicationsRequest from required parameters

#### `newListApplicationsRequest'`

``` purescript
newListApplicationsRequest' :: ({ "Limit" :: NullOrUndefined (ListApplicationsInputLimit), "ExclusiveStartApplicationName" :: NullOrUndefined (ApplicationName) } -> { "Limit" :: NullOrUndefined (ListApplicationsInputLimit), "ExclusiveStartApplicationName" :: NullOrUndefined (ApplicationName) }) -> ListApplicationsRequest
```

Constructs ListApplicationsRequest's fields from required parameters

#### `ListApplicationsResponse`

``` purescript
newtype ListApplicationsResponse
  = ListApplicationsResponse { "ApplicationSummaries" :: ApplicationSummaries, "HasMoreApplications" :: BooleanObject }
```

<p/>

##### Instances
``` purescript
Newtype ListApplicationsResponse _
Generic ListApplicationsResponse _
Show ListApplicationsResponse
Decode ListApplicationsResponse
Encode ListApplicationsResponse
```

#### `newListApplicationsResponse`

``` purescript
newListApplicationsResponse :: ApplicationSummaries -> BooleanObject -> ListApplicationsResponse
```

Constructs ListApplicationsResponse from required parameters

#### `newListApplicationsResponse'`

``` purescript
newListApplicationsResponse' :: ApplicationSummaries -> BooleanObject -> ({ "ApplicationSummaries" :: ApplicationSummaries, "HasMoreApplications" :: BooleanObject } -> { "ApplicationSummaries" :: ApplicationSummaries, "HasMoreApplications" :: BooleanObject }) -> ListApplicationsResponse
```

Constructs ListApplicationsResponse's fields from required parameters

#### `LogStreamARN`

``` purescript
newtype LogStreamARN
  = LogStreamARN String
```

##### Instances
``` purescript
Newtype LogStreamARN _
Generic LogStreamARN _
Show LogStreamARN
Decode LogStreamARN
Encode LogStreamARN
```

#### `MappingParameters`

``` purescript
newtype MappingParameters
  = MappingParameters { "JSONMappingParameters" :: NullOrUndefined (JSONMappingParameters), "CSVMappingParameters" :: NullOrUndefined (CSVMappingParameters) }
```

<p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>

##### Instances
``` purescript
Newtype MappingParameters _
Generic MappingParameters _
Show MappingParameters
Decode MappingParameters
Encode MappingParameters
```

#### `newMappingParameters`

``` purescript
newMappingParameters :: MappingParameters
```

Constructs MappingParameters from required parameters

#### `newMappingParameters'`

``` purescript
newMappingParameters' :: ({ "JSONMappingParameters" :: NullOrUndefined (JSONMappingParameters), "CSVMappingParameters" :: NullOrUndefined (CSVMappingParameters) } -> { "JSONMappingParameters" :: NullOrUndefined (JSONMappingParameters), "CSVMappingParameters" :: NullOrUndefined (CSVMappingParameters) }) -> MappingParameters
```

Constructs MappingParameters's fields from required parameters

#### `Output`

``` purescript
newtype Output
  = Output { "Name" :: InAppStreamName, "KinesisStreamsOutput" :: NullOrUndefined (KinesisStreamsOutput), "KinesisFirehoseOutput" :: NullOrUndefined (KinesisFirehoseOutput), "LambdaOutput" :: NullOrUndefined (LambdaOutput), "DestinationSchema" :: DestinationSchema }
```

<p> Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p> <p/> <p>For limits on how many destinations an application can write and other limitations, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p>

##### Instances
``` purescript
Newtype Output _
Generic Output _
Show Output
Decode Output
Encode Output
```

#### `newOutput`

``` purescript
newOutput :: DestinationSchema -> InAppStreamName -> Output
```

Constructs Output from required parameters

#### `newOutput'`

``` purescript
newOutput' :: DestinationSchema -> InAppStreamName -> ({ "Name" :: InAppStreamName, "KinesisStreamsOutput" :: NullOrUndefined (KinesisStreamsOutput), "KinesisFirehoseOutput" :: NullOrUndefined (KinesisFirehoseOutput), "LambdaOutput" :: NullOrUndefined (LambdaOutput), "DestinationSchema" :: DestinationSchema } -> { "Name" :: InAppStreamName, "KinesisStreamsOutput" :: NullOrUndefined (KinesisStreamsOutput), "KinesisFirehoseOutput" :: NullOrUndefined (KinesisFirehoseOutput), "LambdaOutput" :: NullOrUndefined (LambdaOutput), "DestinationSchema" :: DestinationSchema }) -> Output
```

Constructs Output's fields from required parameters

#### `OutputDescription`

``` purescript
newtype OutputDescription
  = OutputDescription { "OutputId" :: NullOrUndefined (Id), "Name" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputDescription" :: NullOrUndefined (KinesisStreamsOutputDescription), "KinesisFirehoseOutputDescription" :: NullOrUndefined (KinesisFirehoseOutputDescription), "LambdaOutputDescription" :: NullOrUndefined (LambdaOutputDescription), "DestinationSchema" :: NullOrUndefined (DestinationSchema) }
```

<p>Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p>

##### Instances
``` purescript
Newtype OutputDescription _
Generic OutputDescription _
Show OutputDescription
Decode OutputDescription
Encode OutputDescription
```

#### `newOutputDescription`

``` purescript
newOutputDescription :: OutputDescription
```

Constructs OutputDescription from required parameters

#### `newOutputDescription'`

``` purescript
newOutputDescription' :: ({ "OutputId" :: NullOrUndefined (Id), "Name" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputDescription" :: NullOrUndefined (KinesisStreamsOutputDescription), "KinesisFirehoseOutputDescription" :: NullOrUndefined (KinesisFirehoseOutputDescription), "LambdaOutputDescription" :: NullOrUndefined (LambdaOutputDescription), "DestinationSchema" :: NullOrUndefined (DestinationSchema) } -> { "OutputId" :: NullOrUndefined (Id), "Name" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputDescription" :: NullOrUndefined (KinesisStreamsOutputDescription), "KinesisFirehoseOutputDescription" :: NullOrUndefined (KinesisFirehoseOutputDescription), "LambdaOutputDescription" :: NullOrUndefined (LambdaOutputDescription), "DestinationSchema" :: NullOrUndefined (DestinationSchema) }) -> OutputDescription
```

Constructs OutputDescription's fields from required parameters

#### `OutputDescriptions`

``` purescript
newtype OutputDescriptions
  = OutputDescriptions (Array OutputDescription)
```

##### Instances
``` purescript
Newtype OutputDescriptions _
Generic OutputDescriptions _
Show OutputDescriptions
Decode OutputDescriptions
Encode OutputDescriptions
```

#### `OutputUpdate`

``` purescript
newtype OutputUpdate
  = OutputUpdate { "OutputId" :: Id, "NameUpdate" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputUpdate" :: NullOrUndefined (KinesisStreamsOutputUpdate), "KinesisFirehoseOutputUpdate" :: NullOrUndefined (KinesisFirehoseOutputUpdate), "LambdaOutputUpdate" :: NullOrUndefined (LambdaOutputUpdate), "DestinationSchemaUpdate" :: NullOrUndefined (DestinationSchema) }
```

<p> Describes updates to the output configuration identified by the <code>OutputId</code>. </p>

##### Instances
``` purescript
Newtype OutputUpdate _
Generic OutputUpdate _
Show OutputUpdate
Decode OutputUpdate
Encode OutputUpdate
```

#### `newOutputUpdate`

``` purescript
newOutputUpdate :: Id -> OutputUpdate
```

Constructs OutputUpdate from required parameters

#### `newOutputUpdate'`

``` purescript
newOutputUpdate' :: Id -> ({ "OutputId" :: Id, "NameUpdate" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputUpdate" :: NullOrUndefined (KinesisStreamsOutputUpdate), "KinesisFirehoseOutputUpdate" :: NullOrUndefined (KinesisFirehoseOutputUpdate), "LambdaOutputUpdate" :: NullOrUndefined (LambdaOutputUpdate), "DestinationSchemaUpdate" :: NullOrUndefined (DestinationSchema) } -> { "OutputId" :: Id, "NameUpdate" :: NullOrUndefined (InAppStreamName), "KinesisStreamsOutputUpdate" :: NullOrUndefined (KinesisStreamsOutputUpdate), "KinesisFirehoseOutputUpdate" :: NullOrUndefined (KinesisFirehoseOutputUpdate), "LambdaOutputUpdate" :: NullOrUndefined (LambdaOutputUpdate), "DestinationSchemaUpdate" :: NullOrUndefined (DestinationSchema) }) -> OutputUpdate
```

Constructs OutputUpdate's fields from required parameters

#### `OutputUpdates`

``` purescript
newtype OutputUpdates
  = OutputUpdates (Array OutputUpdate)
```

##### Instances
``` purescript
Newtype OutputUpdates _
Generic OutputUpdates _
Show OutputUpdates
Decode OutputUpdates
Encode OutputUpdates
```

#### `Outputs`

``` purescript
newtype Outputs
  = Outputs (Array Output)
```

##### Instances
``` purescript
Newtype Outputs _
Generic Outputs _
Show Outputs
Decode Outputs
Encode Outputs
```

#### `ParsedInputRecord`

``` purescript
newtype ParsedInputRecord
  = ParsedInputRecord (Array ParsedInputRecordField)
```

##### Instances
``` purescript
Newtype ParsedInputRecord _
Generic ParsedInputRecord _
Show ParsedInputRecord
Decode ParsedInputRecord
Encode ParsedInputRecord
```

#### `ParsedInputRecordField`

``` purescript
newtype ParsedInputRecordField
  = ParsedInputRecordField String
```

##### Instances
``` purescript
Newtype ParsedInputRecordField _
Generic ParsedInputRecordField _
Show ParsedInputRecordField
Decode ParsedInputRecordField
Encode ParsedInputRecordField
```

#### `ParsedInputRecords`

``` purescript
newtype ParsedInputRecords
  = ParsedInputRecords (Array ParsedInputRecord)
```

##### Instances
``` purescript
Newtype ParsedInputRecords _
Generic ParsedInputRecords _
Show ParsedInputRecords
Decode ParsedInputRecords
Encode ParsedInputRecords
```

#### `ProcessedInputRecord`

``` purescript
newtype ProcessedInputRecord
  = ProcessedInputRecord String
```

##### Instances
``` purescript
Newtype ProcessedInputRecord _
Generic ProcessedInputRecord _
Show ProcessedInputRecord
Decode ProcessedInputRecord
Encode ProcessedInputRecord
```

#### `ProcessedInputRecords`

``` purescript
newtype ProcessedInputRecords
  = ProcessedInputRecords (Array ProcessedInputRecord)
```

##### Instances
``` purescript
Newtype ProcessedInputRecords _
Generic ProcessedInputRecords _
Show ProcessedInputRecords
Decode ProcessedInputRecords
Encode ProcessedInputRecords
```

#### `RawInputRecord`

``` purescript
newtype RawInputRecord
  = RawInputRecord String
```

##### Instances
``` purescript
Newtype RawInputRecord _
Generic RawInputRecord _
Show RawInputRecord
Decode RawInputRecord
Encode RawInputRecord
```

#### `RawInputRecords`

``` purescript
newtype RawInputRecords
  = RawInputRecords (Array RawInputRecord)
```

##### Instances
``` purescript
Newtype RawInputRecords _
Generic RawInputRecords _
Show RawInputRecords
Decode RawInputRecords
Encode RawInputRecords
```

#### `RecordColumn`

``` purescript
newtype RecordColumn
  = RecordColumn { "Name" :: RecordColumnName, "Mapping" :: NullOrUndefined (RecordColumnMapping), "SqlType" :: RecordColumnSqlType }
```

<p>Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>

##### Instances
``` purescript
Newtype RecordColumn _
Generic RecordColumn _
Show RecordColumn
Decode RecordColumn
Encode RecordColumn
```

#### `newRecordColumn`

``` purescript
newRecordColumn :: RecordColumnName -> RecordColumnSqlType -> RecordColumn
```

Constructs RecordColumn from required parameters

#### `newRecordColumn'`

``` purescript
newRecordColumn' :: RecordColumnName -> RecordColumnSqlType -> ({ "Name" :: RecordColumnName, "Mapping" :: NullOrUndefined (RecordColumnMapping), "SqlType" :: RecordColumnSqlType } -> { "Name" :: RecordColumnName, "Mapping" :: NullOrUndefined (RecordColumnMapping), "SqlType" :: RecordColumnSqlType }) -> RecordColumn
```

Constructs RecordColumn's fields from required parameters

#### `RecordColumnDelimiter`

``` purescript
newtype RecordColumnDelimiter
  = RecordColumnDelimiter String
```

##### Instances
``` purescript
Newtype RecordColumnDelimiter _
Generic RecordColumnDelimiter _
Show RecordColumnDelimiter
Decode RecordColumnDelimiter
Encode RecordColumnDelimiter
```

#### `RecordColumnMapping`

``` purescript
newtype RecordColumnMapping
  = RecordColumnMapping String
```

##### Instances
``` purescript
Newtype RecordColumnMapping _
Generic RecordColumnMapping _
Show RecordColumnMapping
Decode RecordColumnMapping
Encode RecordColumnMapping
```

#### `RecordColumnName`

``` purescript
newtype RecordColumnName
  = RecordColumnName String
```

##### Instances
``` purescript
Newtype RecordColumnName _
Generic RecordColumnName _
Show RecordColumnName
Decode RecordColumnName
Encode RecordColumnName
```

#### `RecordColumnSqlType`

``` purescript
newtype RecordColumnSqlType
  = RecordColumnSqlType String
```

##### Instances
``` purescript
Newtype RecordColumnSqlType _
Generic RecordColumnSqlType _
Show RecordColumnSqlType
Decode RecordColumnSqlType
Encode RecordColumnSqlType
```

#### `RecordColumns`

``` purescript
newtype RecordColumns
  = RecordColumns (Array RecordColumn)
```

##### Instances
``` purescript
Newtype RecordColumns _
Generic RecordColumns _
Show RecordColumns
Decode RecordColumns
Encode RecordColumns
```

#### `RecordEncoding`

``` purescript
newtype RecordEncoding
  = RecordEncoding String
```

##### Instances
``` purescript
Newtype RecordEncoding _
Generic RecordEncoding _
Show RecordEncoding
Decode RecordEncoding
Encode RecordEncoding
```

#### `RecordFormat`

``` purescript
newtype RecordFormat
  = RecordFormat { "RecordFormatType" :: RecordFormatType, "MappingParameters" :: NullOrUndefined (MappingParameters) }
```

<p> Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>

##### Instances
``` purescript
Newtype RecordFormat _
Generic RecordFormat _
Show RecordFormat
Decode RecordFormat
Encode RecordFormat
```

#### `newRecordFormat`

``` purescript
newRecordFormat :: RecordFormatType -> RecordFormat
```

Constructs RecordFormat from required parameters

#### `newRecordFormat'`

``` purescript
newRecordFormat' :: RecordFormatType -> ({ "RecordFormatType" :: RecordFormatType, "MappingParameters" :: NullOrUndefined (MappingParameters) } -> { "RecordFormatType" :: RecordFormatType, "MappingParameters" :: NullOrUndefined (MappingParameters) }) -> RecordFormat
```

Constructs RecordFormat's fields from required parameters

#### `RecordFormatType`

``` purescript
newtype RecordFormatType
  = RecordFormatType String
```

##### Instances
``` purescript
Newtype RecordFormatType _
Generic RecordFormatType _
Show RecordFormatType
Decode RecordFormatType
Encode RecordFormatType
```

#### `RecordRowDelimiter`

``` purescript
newtype RecordRowDelimiter
  = RecordRowDelimiter String
```

##### Instances
``` purescript
Newtype RecordRowDelimiter _
Generic RecordRowDelimiter _
Show RecordRowDelimiter
Decode RecordRowDelimiter
Encode RecordRowDelimiter
```

#### `RecordRowPath`

``` purescript
newtype RecordRowPath
  = RecordRowPath String
```

##### Instances
``` purescript
Newtype RecordRowPath _
Generic RecordRowPath _
Show RecordRowPath
Decode RecordRowPath
Encode RecordRowPath
```

#### `ReferenceDataSource`

``` purescript
newtype ReferenceDataSource
  = ReferenceDataSource { "TableName" :: InAppTableName, "S3ReferenceDataSource" :: NullOrUndefined (S3ReferenceDataSource), "ReferenceSchema" :: SourceSchema }
```

<p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>

##### Instances
``` purescript
Newtype ReferenceDataSource _
Generic ReferenceDataSource _
Show ReferenceDataSource
Decode ReferenceDataSource
Encode ReferenceDataSource
```

#### `newReferenceDataSource`

``` purescript
newReferenceDataSource :: SourceSchema -> InAppTableName -> ReferenceDataSource
```

Constructs ReferenceDataSource from required parameters

#### `newReferenceDataSource'`

``` purescript
newReferenceDataSource' :: SourceSchema -> InAppTableName -> ({ "TableName" :: InAppTableName, "S3ReferenceDataSource" :: NullOrUndefined (S3ReferenceDataSource), "ReferenceSchema" :: SourceSchema } -> { "TableName" :: InAppTableName, "S3ReferenceDataSource" :: NullOrUndefined (S3ReferenceDataSource), "ReferenceSchema" :: SourceSchema }) -> ReferenceDataSource
```

Constructs ReferenceDataSource's fields from required parameters

#### `ReferenceDataSourceDescription`

``` purescript
newtype ReferenceDataSourceDescription
  = ReferenceDataSourceDescription { "ReferenceId" :: Id, "TableName" :: InAppTableName, "S3ReferenceDataSourceDescription" :: S3ReferenceDataSourceDescription, "ReferenceSchema" :: NullOrUndefined (SourceSchema) }
```

<p>Describes the reference data source configured for an application.</p>

##### Instances
``` purescript
Newtype ReferenceDataSourceDescription _
Generic ReferenceDataSourceDescription _
Show ReferenceDataSourceDescription
Decode ReferenceDataSourceDescription
Encode ReferenceDataSourceDescription
```

#### `newReferenceDataSourceDescription`

``` purescript
newReferenceDataSourceDescription :: Id -> S3ReferenceDataSourceDescription -> InAppTableName -> ReferenceDataSourceDescription
```

Constructs ReferenceDataSourceDescription from required parameters

#### `newReferenceDataSourceDescription'`

``` purescript
newReferenceDataSourceDescription' :: Id -> S3ReferenceDataSourceDescription -> InAppTableName -> ({ "ReferenceId" :: Id, "TableName" :: InAppTableName, "S3ReferenceDataSourceDescription" :: S3ReferenceDataSourceDescription, "ReferenceSchema" :: NullOrUndefined (SourceSchema) } -> { "ReferenceId" :: Id, "TableName" :: InAppTableName, "S3ReferenceDataSourceDescription" :: S3ReferenceDataSourceDescription, "ReferenceSchema" :: NullOrUndefined (SourceSchema) }) -> ReferenceDataSourceDescription
```

Constructs ReferenceDataSourceDescription's fields from required parameters

#### `ReferenceDataSourceDescriptions`

``` purescript
newtype ReferenceDataSourceDescriptions
  = ReferenceDataSourceDescriptions (Array ReferenceDataSourceDescription)
```

##### Instances
``` purescript
Newtype ReferenceDataSourceDescriptions _
Generic ReferenceDataSourceDescriptions _
Show ReferenceDataSourceDescriptions
Decode ReferenceDataSourceDescriptions
Encode ReferenceDataSourceDescriptions
```

#### `ReferenceDataSourceUpdate`

``` purescript
newtype ReferenceDataSourceUpdate
  = ReferenceDataSourceUpdate { "ReferenceId" :: Id, "TableNameUpdate" :: NullOrUndefined (InAppTableName), "S3ReferenceDataSourceUpdate" :: NullOrUndefined (S3ReferenceDataSourceUpdate), "ReferenceSchemaUpdate" :: NullOrUndefined (SourceSchema) }
```

<p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>

##### Instances
``` purescript
Newtype ReferenceDataSourceUpdate _
Generic ReferenceDataSourceUpdate _
Show ReferenceDataSourceUpdate
Decode ReferenceDataSourceUpdate
Encode ReferenceDataSourceUpdate
```

#### `newReferenceDataSourceUpdate`

``` purescript
newReferenceDataSourceUpdate :: Id -> ReferenceDataSourceUpdate
```

Constructs ReferenceDataSourceUpdate from required parameters

#### `newReferenceDataSourceUpdate'`

``` purescript
newReferenceDataSourceUpdate' :: Id -> ({ "ReferenceId" :: Id, "TableNameUpdate" :: NullOrUndefined (InAppTableName), "S3ReferenceDataSourceUpdate" :: NullOrUndefined (S3ReferenceDataSourceUpdate), "ReferenceSchemaUpdate" :: NullOrUndefined (SourceSchema) } -> { "ReferenceId" :: Id, "TableNameUpdate" :: NullOrUndefined (InAppTableName), "S3ReferenceDataSourceUpdate" :: NullOrUndefined (S3ReferenceDataSourceUpdate), "ReferenceSchemaUpdate" :: NullOrUndefined (SourceSchema) }) -> ReferenceDataSourceUpdate
```

Constructs ReferenceDataSourceUpdate's fields from required parameters

#### `ReferenceDataSourceUpdates`

``` purescript
newtype ReferenceDataSourceUpdates
  = ReferenceDataSourceUpdates (Array ReferenceDataSourceUpdate)
```

##### Instances
``` purescript
Newtype ReferenceDataSourceUpdates _
Generic ReferenceDataSourceUpdates _
Show ReferenceDataSourceUpdates
Decode ReferenceDataSourceUpdates
Encode ReferenceDataSourceUpdates
```

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Application is not available for this operation.</p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `newResourceInUseException`

``` purescript
newResourceInUseException :: ResourceInUseException
```

Constructs ResourceInUseException from required parameters

#### `newResourceInUseException'`

``` purescript
newResourceInUseException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceInUseException
```

Constructs ResourceInUseException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Specified application can't be found.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ResourceProvisionedThroughputExceededException`

``` purescript
newtype ResourceProvisionedThroughputExceededException
  = ResourceProvisionedThroughputExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Discovery failed to get a record from the streaming source because of the Amazon Kinesis Streams ProvisionedThroughputExceededException. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html">GetRecords</a> in the Amazon Kinesis Streams API Reference.</p>

##### Instances
``` purescript
Newtype ResourceProvisionedThroughputExceededException _
Generic ResourceProvisionedThroughputExceededException _
Show ResourceProvisionedThroughputExceededException
Decode ResourceProvisionedThroughputExceededException
Encode ResourceProvisionedThroughputExceededException
```

#### `newResourceProvisionedThroughputExceededException`

``` purescript
newResourceProvisionedThroughputExceededException :: ResourceProvisionedThroughputExceededException
```

Constructs ResourceProvisionedThroughputExceededException from required parameters

#### `newResourceProvisionedThroughputExceededException'`

``` purescript
newResourceProvisionedThroughputExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceProvisionedThroughputExceededException
```

Constructs ResourceProvisionedThroughputExceededException's fields from required parameters

#### `RoleARN`

``` purescript
newtype RoleARN
  = RoleARN String
```

##### Instances
``` purescript
Newtype RoleARN _
Generic RoleARN _
Show RoleARN
Decode RoleARN
Encode RoleARN
```

#### `S3Configuration`

``` purescript
newtype S3Configuration
  = S3Configuration { "RoleARN" :: RoleARN, "BucketARN" :: BucketARN, "FileKey" :: FileKey }
```

<p>Provides a description of an Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket, the ARN of the IAM role that is used to access the bucket, and the name of the S3 object that contains the data.</p>

##### Instances
``` purescript
Newtype S3Configuration _
Generic S3Configuration _
Show S3Configuration
Decode S3Configuration
Encode S3Configuration
```

#### `newS3Configuration`

``` purescript
newS3Configuration :: BucketARN -> FileKey -> RoleARN -> S3Configuration
```

Constructs S3Configuration from required parameters

#### `newS3Configuration'`

``` purescript
newS3Configuration' :: BucketARN -> FileKey -> RoleARN -> ({ "RoleARN" :: RoleARN, "BucketARN" :: BucketARN, "FileKey" :: FileKey } -> { "RoleARN" :: RoleARN, "BucketARN" :: BucketARN, "FileKey" :: FileKey }) -> S3Configuration
```

Constructs S3Configuration's fields from required parameters

#### `S3ReferenceDataSource`

``` purescript
newtype S3ReferenceDataSource
  = S3ReferenceDataSource { "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN }
```

<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p> <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application.</p>

##### Instances
``` purescript
Newtype S3ReferenceDataSource _
Generic S3ReferenceDataSource _
Show S3ReferenceDataSource
Decode S3ReferenceDataSource
Encode S3ReferenceDataSource
```

#### `newS3ReferenceDataSource`

``` purescript
newS3ReferenceDataSource :: BucketARN -> FileKey -> RoleARN -> S3ReferenceDataSource
```

Constructs S3ReferenceDataSource from required parameters

#### `newS3ReferenceDataSource'`

``` purescript
newS3ReferenceDataSource' :: BucketARN -> FileKey -> RoleARN -> ({ "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN } -> { "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN }) -> S3ReferenceDataSource
```

Constructs S3ReferenceDataSource's fields from required parameters

#### `S3ReferenceDataSourceDescription`

``` purescript
newtype S3ReferenceDataSourceDescription
  = S3ReferenceDataSourceDescription { "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN }
```

<p>Provides the bucket name and object key name that stores the reference data.</p>

##### Instances
``` purescript
Newtype S3ReferenceDataSourceDescription _
Generic S3ReferenceDataSourceDescription _
Show S3ReferenceDataSourceDescription
Decode S3ReferenceDataSourceDescription
Encode S3ReferenceDataSourceDescription
```

#### `newS3ReferenceDataSourceDescription`

``` purescript
newS3ReferenceDataSourceDescription :: BucketARN -> FileKey -> RoleARN -> S3ReferenceDataSourceDescription
```

Constructs S3ReferenceDataSourceDescription from required parameters

#### `newS3ReferenceDataSourceDescription'`

``` purescript
newS3ReferenceDataSourceDescription' :: BucketARN -> FileKey -> RoleARN -> ({ "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN } -> { "BucketARN" :: BucketARN, "FileKey" :: FileKey, "ReferenceRoleARN" :: RoleARN }) -> S3ReferenceDataSourceDescription
```

Constructs S3ReferenceDataSourceDescription's fields from required parameters

#### `S3ReferenceDataSourceUpdate`

``` purescript
newtype S3ReferenceDataSourceUpdate
  = S3ReferenceDataSourceUpdate { "BucketARNUpdate" :: NullOrUndefined (BucketARN), "FileKeyUpdate" :: NullOrUndefined (FileKey), "ReferenceRoleARNUpdate" :: NullOrUndefined (RoleARN) }
```

<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>

##### Instances
``` purescript
Newtype S3ReferenceDataSourceUpdate _
Generic S3ReferenceDataSourceUpdate _
Show S3ReferenceDataSourceUpdate
Decode S3ReferenceDataSourceUpdate
Encode S3ReferenceDataSourceUpdate
```

#### `newS3ReferenceDataSourceUpdate`

``` purescript
newS3ReferenceDataSourceUpdate :: S3ReferenceDataSourceUpdate
```

Constructs S3ReferenceDataSourceUpdate from required parameters

#### `newS3ReferenceDataSourceUpdate'`

``` purescript
newS3ReferenceDataSourceUpdate' :: ({ "BucketARNUpdate" :: NullOrUndefined (BucketARN), "FileKeyUpdate" :: NullOrUndefined (FileKey), "ReferenceRoleARNUpdate" :: NullOrUndefined (RoleARN) } -> { "BucketARNUpdate" :: NullOrUndefined (BucketARN), "FileKeyUpdate" :: NullOrUndefined (FileKey), "ReferenceRoleARNUpdate" :: NullOrUndefined (RoleARN) }) -> S3ReferenceDataSourceUpdate
```

Constructs S3ReferenceDataSourceUpdate's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The service is unavailable, back off and retry the operation. </p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `SourceSchema`

``` purescript
newtype SourceSchema
  = SourceSchema { "RecordFormat" :: RecordFormat, "RecordEncoding" :: NullOrUndefined (RecordEncoding), "RecordColumns" :: RecordColumns }
```

<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>

##### Instances
``` purescript
Newtype SourceSchema _
Generic SourceSchema _
Show SourceSchema
Decode SourceSchema
Encode SourceSchema
```

#### `newSourceSchema`

``` purescript
newSourceSchema :: RecordColumns -> RecordFormat -> SourceSchema
```

Constructs SourceSchema from required parameters

#### `newSourceSchema'`

``` purescript
newSourceSchema' :: RecordColumns -> RecordFormat -> ({ "RecordFormat" :: RecordFormat, "RecordEncoding" :: NullOrUndefined (RecordEncoding), "RecordColumns" :: RecordColumns } -> { "RecordFormat" :: RecordFormat, "RecordEncoding" :: NullOrUndefined (RecordEncoding), "RecordColumns" :: RecordColumns }) -> SourceSchema
```

Constructs SourceSchema's fields from required parameters

#### `StartApplicationRequest`

``` purescript
newtype StartApplicationRequest
  = StartApplicationRequest { "ApplicationName" :: ApplicationName, "InputConfigurations" :: InputConfigurations }
```

<p/>

##### Instances
``` purescript
Newtype StartApplicationRequest _
Generic StartApplicationRequest _
Show StartApplicationRequest
Decode StartApplicationRequest
Encode StartApplicationRequest
```

#### `newStartApplicationRequest`

``` purescript
newStartApplicationRequest :: ApplicationName -> InputConfigurations -> StartApplicationRequest
```

Constructs StartApplicationRequest from required parameters

#### `newStartApplicationRequest'`

``` purescript
newStartApplicationRequest' :: ApplicationName -> InputConfigurations -> ({ "ApplicationName" :: ApplicationName, "InputConfigurations" :: InputConfigurations } -> { "ApplicationName" :: ApplicationName, "InputConfigurations" :: InputConfigurations }) -> StartApplicationRequest
```

Constructs StartApplicationRequest's fields from required parameters

#### `StartApplicationResponse`

``` purescript
newtype StartApplicationResponse
  = StartApplicationResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype StartApplicationResponse _
Generic StartApplicationResponse _
Show StartApplicationResponse
Decode StartApplicationResponse
Encode StartApplicationResponse
```

#### `StopApplicationRequest`

``` purescript
newtype StopApplicationRequest
  = StopApplicationRequest { "ApplicationName" :: ApplicationName }
```

<p/>

##### Instances
``` purescript
Newtype StopApplicationRequest _
Generic StopApplicationRequest _
Show StopApplicationRequest
Decode StopApplicationRequest
Encode StopApplicationRequest
```

#### `newStopApplicationRequest`

``` purescript
newStopApplicationRequest :: ApplicationName -> StopApplicationRequest
```

Constructs StopApplicationRequest from required parameters

#### `newStopApplicationRequest'`

``` purescript
newStopApplicationRequest' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName } -> { "ApplicationName" :: ApplicationName }) -> StopApplicationRequest
```

Constructs StopApplicationRequest's fields from required parameters

#### `StopApplicationResponse`

``` purescript
newtype StopApplicationResponse
  = StopApplicationResponse NoArguments
```

<p/>

##### Instances
``` purescript
Newtype StopApplicationResponse _
Generic StopApplicationResponse _
Show StopApplicationResponse
Decode StopApplicationResponse
Encode StopApplicationResponse
```

#### `UnableToDetectSchemaException`

``` purescript
newtype UnableToDetectSchemaException
  = UnableToDetectSchemaException { message :: NullOrUndefined (ErrorMessage), "RawInputRecords" :: NullOrUndefined (RawInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords) }
```

<p>Data format is not valid, Amazon Kinesis Analytics is not able to detect schema for the given streaming source.</p>

##### Instances
``` purescript
Newtype UnableToDetectSchemaException _
Generic UnableToDetectSchemaException _
Show UnableToDetectSchemaException
Decode UnableToDetectSchemaException
Encode UnableToDetectSchemaException
```

#### `newUnableToDetectSchemaException`

``` purescript
newUnableToDetectSchemaException :: UnableToDetectSchemaException
```

Constructs UnableToDetectSchemaException from required parameters

#### `newUnableToDetectSchemaException'`

``` purescript
newUnableToDetectSchemaException' :: ({ message :: NullOrUndefined (ErrorMessage), "RawInputRecords" :: NullOrUndefined (RawInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords) } -> { message :: NullOrUndefined (ErrorMessage), "RawInputRecords" :: NullOrUndefined (RawInputRecords), "ProcessedInputRecords" :: NullOrUndefined (ProcessedInputRecords) }) -> UnableToDetectSchemaException
```

Constructs UnableToDetectSchemaException's fields from required parameters

#### `UpdateApplicationRequest`

``` purescript
newtype UpdateApplicationRequest
  = UpdateApplicationRequest { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ApplicationUpdate" :: ApplicationUpdate }
```

##### Instances
``` purescript
Newtype UpdateApplicationRequest _
Generic UpdateApplicationRequest _
Show UpdateApplicationRequest
Decode UpdateApplicationRequest
Encode UpdateApplicationRequest
```

#### `newUpdateApplicationRequest`

``` purescript
newUpdateApplicationRequest :: ApplicationName -> ApplicationUpdate -> ApplicationVersionId -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest from required parameters

#### `newUpdateApplicationRequest'`

``` purescript
newUpdateApplicationRequest' :: ApplicationName -> ApplicationUpdate -> ApplicationVersionId -> ({ "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ApplicationUpdate" :: ApplicationUpdate } -> { "ApplicationName" :: ApplicationName, "CurrentApplicationVersionId" :: ApplicationVersionId, "ApplicationUpdate" :: ApplicationUpdate }) -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest's fields from required parameters

#### `UpdateApplicationResponse`

``` purescript
newtype UpdateApplicationResponse
  = UpdateApplicationResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateApplicationResponse _
Generic UpdateApplicationResponse _
Show UpdateApplicationResponse
Decode UpdateApplicationResponse
Encode UpdateApplicationResponse
```


