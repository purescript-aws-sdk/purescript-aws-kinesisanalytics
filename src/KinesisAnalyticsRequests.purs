
module AWS.KinesisAnalytics.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.KinesisAnalytics as KinesisAnalytics
import AWS.KinesisAnalytics.Types as KinesisAnalyticsTypes


-- | <p>Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>
addApplicationCloudWatchLoggingOption :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.AddApplicationCloudWatchLoggingOptionRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.AddApplicationCloudWatchLoggingOptionResponse
addApplicationCloudWatchLoggingOption (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addApplicationCloudWatchLoggingOption"


-- | <p> Adds a streaming source to your Amazon Kinesis application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p> <p>You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see <a>CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationInput</code> action.</p>
addApplicationInput :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.AddApplicationInputRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.AddApplicationInputResponse
addApplicationInput (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addApplicationInput"


-- | <p>Adds an <a>InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is <a href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a>.</p>
addApplicationInputProcessingConfiguration :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.AddApplicationInputProcessingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.AddApplicationInputProcessingConfigurationResponse
addApplicationInputProcessingConfiguration (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addApplicationInputProcessingConfiguration"


-- | <p>Adds an external destination to your Amazon Kinesis Analytics application.</p> <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application Output (Destination)</a>. </p> <p> Note that any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p> <p>For the limits on the number of application inputs and outputs you can configure, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>
addApplicationOutput :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.AddApplicationOutputRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.AddApplicationOutputResponse
addApplicationOutput (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addApplicationOutput"


-- | <p>Adds a reference data source to an existing application.</p> <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p> <p> For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. For the limits on data sources you can add to your application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action. </p>
addApplicationReferenceDataSource :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.AddApplicationReferenceDataSourceRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.AddApplicationReferenceDataSourceResponse
addApplicationReferenceDataSource (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addApplicationReferenceDataSource"


-- | <p> Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>. </p> <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source.</p> <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p> <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p> <p> To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the <code>kinesisanalytics:CreateApplication</code> action. </p> <p> For introductory exercises to create an Amazon Kinesis Analytics application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>. </p>
createApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.CreateApplicationResponse
createApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplication"


-- | <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>
deleteApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DeleteApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DeleteApplicationResponse
deleteApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplication"


-- | <p>Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>
deleteApplicationCloudWatchLoggingOption :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DeleteApplicationCloudWatchLoggingOptionRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DeleteApplicationCloudWatchLoggingOptionResponse
deleteApplicationCloudWatchLoggingOption (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplicationCloudWatchLoggingOption"


-- | <p>Deletes an <a>InputProcessingConfiguration</a> from an input.</p>
deleteApplicationInputProcessingConfiguration :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DeleteApplicationInputProcessingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DeleteApplicationInputProcessingConfigurationResponse
deleteApplicationInputProcessingConfiguration (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplicationInputProcessingConfiguration"


-- | <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>
deleteApplicationOutput :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DeleteApplicationOutputRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DeleteApplicationOutputResponse
deleteApplicationOutput (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplicationOutput"


-- | <p>Deletes a reference data source configuration from the specified application configuration.</p> <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <a>AddApplicationReferenceDataSource</a> operation. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.</p>
deleteApplicationReferenceDataSource :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DeleteApplicationReferenceDataSourceRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DeleteApplicationReferenceDataSourceResponse
deleteApplicationReferenceDataSource (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplicationReferenceDataSource"


-- | <p>Returns information about a specific Amazon Kinesis Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a>ListApplications</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other operations such as <code>Update</code>. </p>
describeApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DescribeApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DescribeApplicationResponse
describeApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeApplication"


-- | <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:DiscoverInputSchema</code> action. </p>
discoverInputSchema :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.DiscoverInputSchemaRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.DiscoverInputSchemaResponse
discoverInputSchema (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "discoverInputSchema"


-- | <p>Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the <code>HasMoreApplications</code> value as true, you can send another request by adding the <code>ExclusiveStartApplicationName</code> in the request body, and set the value of this to the last application name from the previous response. </p> <p>If you want detailed information about a specific application, use <a>DescribeApplication</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:ListApplications</code> action.</p>
listApplications :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.ListApplicationsRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.ListApplicationsResponse
listApplications (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listApplications"


-- | <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p> <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p> <p> The application status must be <code>READY</code> for you to start an application. You can get the application status in the console or using the <a>DescribeApplication</a> operation.</p> <p>After you start the application, you can stop the application from processing the input by calling the <a>StopApplication</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StartApplication</code> action.</p>
startApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.StartApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.StartApplicationResponse
startApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startApplication"


-- | <p>Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <a>DescribeApplication</a> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StopApplication</code> action.</p>
stopApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.StopApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.StopApplicationResponse
stopApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopApplication"


-- | <p>Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration. </p> <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> each time you update your application. </p> <p>This operation requires permission for the <code>kinesisanalytics:UpdateApplication</code> action.</p>
updateApplication :: forall eff. KinesisAnalytics.Service -> KinesisAnalyticsTypes.UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) KinesisAnalyticsTypes.UpdateApplicationResponse
updateApplication (KinesisAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplication"
