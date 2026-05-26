# saturn_api.JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](JobsApi.md#create) | **POST** /api/jobs | Create job
[**create_resource_template**](JobsApi.md#create_resource_template) | **POST** /api/jobs/{job_id}/template | Create job resource template
[**create_secret_attachment**](JobsApi.md#create_secret_attachment) | **POST** /api/jobs/{job_id}/secrets | Create job secret attachment
[**create_service_account_attachment**](JobsApi.md#create_service_account_attachment) | **PUT** /api/jobs/{job_id}/service_account | Create job service account attachment
[**delete**](JobsApi.md#delete) | **DELETE** /api/jobs/{job_id} | Delete job
[**delete_secret_attachment**](JobsApi.md#delete_secret_attachment) | **DELETE** /api/jobs/{job_id}/secrets/{secret_attachment_id} | Delete job secret attachment
[**delete_service_account_attachment**](JobsApi.md#delete_service_account_attachment) | **DELETE** /api/jobs/{job_id}/service_account | Delete job service account attachment
[**get**](JobsApi.md#get) | **GET** /api/jobs/{job_id} | Get job
[**get_cluster_history**](JobsApi.md#get_cluster_history) | **GET** /api/jobs/{job_id}/clusters | Get job cluster history
[**get_logs**](JobsApi.md#get_logs) | **GET** /api/jobs/{job_id}/logs | Get job historical logs
[**get_metrics**](JobsApi.md#get_metrics) | **GET** /api/jobs/{job_id}/metrics | Get job metrics
[**get_pod_history**](JobsApi.md#get_pod_history) | **GET** /api/jobs/{job_id}/history | Get job pod history
[**get_recipe**](JobsApi.md#get_recipe) | **GET** /api/jobs/{job_id}/recipe | Get job recipe
[**get_resource_template**](JobsApi.md#get_resource_template) | **GET** /api/jobs/{job_id}/template | Get job resource template
[**get_secret_attachment**](JobsApi.md#get_secret_attachment) | **GET** /api/jobs/{job_id}/secrets/{secret_attachment_id} | Get job secret attachment
[**get_server_options**](JobsApi.md#get_server_options) | **GET** /api/jobs/info | Get job server options
[**get_service_account_attachment**](JobsApi.md#get_service_account_attachment) | **GET** /api/jobs/{job_id}/service_account | Get job service account attachment
[**get_token_info**](JobsApi.md#get_token_info) | **GET** /api/jobs/{job_id}/token | Get job API token info
[**list**](JobsApi.md#list) | **GET** /api/jobs | List jobs
[**list_runtime_summaries**](JobsApi.md#list_runtime_summaries) | **GET** /api/jobs/{job_id}/runtimesummary | List job runtime summaries
[**list_secret_attachments**](JobsApi.md#list_secret_attachments) | **GET** /api/jobs/{job_id}/secrets | List job secret attachments
[**restart**](JobsApi.md#restart) | **POST** /api/jobs/{job_id}/restart | Restart job
[**rotate_token**](JobsApi.md#rotate_token) | **POST** /api/jobs/{job_id}/token | Rotate job API token
[**schedule**](JobsApi.md#schedule) | **POST** /api/jobs/{job_id}/schedule | Activate job cron schedule
[**start**](JobsApi.md#start) | **POST** /api/jobs/{job_id}/start | Start job
[**stop**](JobsApi.md#stop) | **POST** /api/jobs/{job_id}/stop | Stop job
[**stop_run**](JobsApi.md#stop_run) | **POST** /api/jobs/{job_id}/stop/{run_name} | Stop job run
[**unschedule**](JobsApi.md#unschedule) | **POST** /api/jobs/{job_id}/unschedule | Deactivate job cron schedule
[**update**](JobsApi.md#update) | **PATCH** /api/jobs/{job_id} | Update job
[**update_resource_template**](JobsApi.md#update_resource_template) | **PATCH** /api/jobs/{job_id}/template | Update job resource template
[**update_secret_attachment**](JobsApi.md#update_secret_attachment) | **PATCH** /api/jobs/{job_id}/secrets/{secret_attachment_id} | Update job secret attachment
[**update_token**](JobsApi.md#update_token) | **PATCH** /api/jobs/{job_id}/token | Update job API token


# **create**
> Job create(job_create)

Create job

Create a new job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.models.job_create import JobCreate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_create = saturn_api.JobCreate() # JobCreate | 

    try:
        # Create job
        api_response = await api_instance.create(job_create)
        print("The response of JobsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_create** | [**JobCreate**](JobCreate.md)|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_resource_template**
> ResourceTemplate create_resource_template(job_id)

Create job resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Create job resource template
        api_response = await api_instance.create_resource_template(job_id)
        print("The response of JobsApi->create_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->create_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_secret_attachment**
> SecretAttachment create_secret_attachment(job_id, secret_attachment_create)

Create job secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.models.secret_attachment_create import SecretAttachmentCreate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        # Create job secret attachment
        api_response = await api_instance.create_secret_attachment(job_id, secret_attachment_create)
        print("The response of JobsApi->create_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->create_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **secret_attachment_create** | [**SecretAttachmentCreate**](SecretAttachmentCreate.md)|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_service_account_attachment**
> ServiceAccountAttachment create_service_account_attachment(job_id, service_account_create_attachment)

Create job service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment import ServiceAccountAttachment
from saturn_api.models.service_account_create_attachment import ServiceAccountCreateAttachment
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    service_account_create_attachment = saturn_api.ServiceAccountCreateAttachment() # ServiceAccountCreateAttachment | 

    try:
        # Create job service account attachment
        api_response = await api_instance.create_service_account_attachment(job_id, service_account_create_attachment)
        print("The response of JobsApi->create_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->create_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **service_account_create_attachment** | [**ServiceAccountCreateAttachment**](ServiceAccountCreateAttachment.md)|  | 

### Return type

[**ServiceAccountAttachment**](ServiceAccountAttachment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(job_id, allow_active=allow_active)

Delete job

Delete a job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    allow_active = False # bool | Force delete job that is currently active. (optional) (default to False)

    try:
        # Delete job
        await api_instance.delete(job_id, allow_active=allow_active)
    except Exception as e:
        print("Exception when calling JobsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **allow_active** | **bool**| Force delete job that is currently active. | [optional] [default to False]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_secret_attachment**
> delete_secret_attachment(job_id, secret_attachment_id)

Delete job secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Delete job secret attachment
        await api_instance.delete_secret_attachment(job_id, secret_attachment_id)
    except Exception as e:
        print("Exception when calling JobsApi->delete_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_service_account_attachment**
> delete_service_account_attachment(job_id)

Delete job service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Delete job service account attachment
        await api_instance.delete_service_account_attachment(job_id)
    except Exception as e:
        print("Exception when calling JobsApi->delete_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
> Job get(job_id)

Get job

Get a job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get job
        api_response = await api_instance.get(job_id)
        print("The response of JobsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cluster_history**
> ResourceClusters get_cluster_history(job_id)

Get job cluster history

Get a list of clusters that the job has recently run on.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_clusters import ResourceClusters
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get job cluster history
        api_response = await api_instance.get_cluster_history(job_id)
        print("The response of JobsApi->get_cluster_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_cluster_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceClusters**](ResourceClusters.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_logs**
> HistoricLogList get_logs(job_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

Get job historical logs

Historical record of logs from the resource.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.historic_log_list import HistoricLogList
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    pod_name = 'pod_name_example' # str | Name of the pod to retrieve logs from. (optional)
    cluster = 'cluster_example' # str | Name of the cluster the pod lives in. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # Get job historical logs
        api_response = await api_instance.get_logs(job_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of JobsApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **pod_name** | **str**| Name of the pod to retrieve logs from. | [optional] 
 **cluster** | **str**| Name of the cluster the pod lives in. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

### Return type

[**HistoricLogList**](HistoricLogList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_metrics**
> Metrics get_metrics(job_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)

Get job metrics

Hardware utilization metrics.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.metrics import Metrics
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    type = 'type_example' # str | Filter metric series by type. (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime | Start timestamp of the metrics query. (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime | End timestamp of the metrics query. (optional)
    resolution = 'resolution_example' # str | Sampling resolution of metrics points. (optional)
    cluster = 'cluster_example' # str | Cluster to query for metrics. (optional)

    try:
        # Get job metrics
        api_response = await api_instance.get_metrics(job_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)
        print("The response of JobsApi->get_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_metrics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **type** | **str**| Filter metric series by type. | [optional] 
 **start** | **datetime**| Start timestamp of the metrics query. | [optional] 
 **end** | **datetime**| End timestamp of the metrics query. | [optional] 
 **resolution** | **str**| Sampling resolution of metrics points. | [optional] 
 **cluster** | **str**| Cluster to query for metrics. | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pod_history**
> ResourceHistory get_pod_history(job_id, cluster=cluster)

Get job pod history

Get history of pods run for the job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_history import ResourceHistory
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    cluster = 'cluster_example' # str | Cluster to query for metrics. (optional)

    try:
        # Get job pod history
        api_response = await api_instance.get_pod_history(job_id, cluster=cluster)
        print("The response of JobsApi->get_pod_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_pod_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **cluster** | **str**| Cluster to query for metrics. | [optional] 

### Return type

[**ResourceHistory**](ResourceHistory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe**
> JobRecipe get_recipe(job_id, as_template=as_template)

Get job recipe

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job_recipe import JobRecipe
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    as_template = False # bool |  (optional) (default to False)

    try:
        # Get job recipe
        api_response = await api_instance.get_recipe(job_id, as_template=as_template)
        print("The response of JobsApi->get_recipe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_recipe: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **as_template** | **bool**|  | [optional] [default to False]

### Return type

[**JobRecipe**](JobRecipe.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_template**
> ResourceTemplate get_resource_template(job_id)

Get job resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get job resource template
        api_response = await api_instance.get_resource_template(job_id)
        print("The response of JobsApi->get_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_secret_attachment**
> SecretAttachment get_secret_attachment(job_id, secret_attachment_id)

Get job secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Get job secret attachment
        api_response = await api_instance.get_secret_attachment(job_id, secret_attachment_id)
        print("The response of JobsApi->get_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_server_options**
> JobServerInfo get_server_options()

Get job server options

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job_server_info import JobServerInfo
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)

    try:
        # Get job server options
        api_response = await api_instance.get_server_options()
        print("The response of JobsApi->get_server_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_server_options: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**JobServerInfo**](JobServerInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_account_attachment**
> ServiceAccountAttachment get_service_account_attachment(job_id)

Get job service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment import ServiceAccountAttachment
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get job service account attachment
        api_response = await api_instance.get_service_account_attachment(job_id)
        print("The response of JobsApi->get_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ServiceAccountAttachment**](ServiceAccountAttachment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_info**
> ResourceTokenInfo get_token_info(job_id)

Get job API token info

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get job API token info
        api_response = await api_instance.get_token_info(job_id)
        print("The response of JobsApi->get_token_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_token_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> JobList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, tags=tags, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List jobs

Paginated list of jobs.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job_list import JobList
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    name = 'name_example' # str | Substring matched search string on job name. (optional)
    tags = 'tags_example' # str | Filter to jobs whose tags contain the given 'key:value' pair, e.g. 'saturn.io/kind:finetune'. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List jobs
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, tags=tags, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of JobsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_name** | **str**| Reference owner by name. | [optional] 
 **owner_id** | **str**| Reference owner by ID. | [optional] 
 **user_id** | **str**| Reference owner by user ID. | [optional] 
 **group_id** | **str**| Reference owner by group ID. | [optional] 
 **org_id** | **str**| Reference owner by org ID. | [optional] 
 **owner** | **str**| Reference owner by name. | [optional] 
 **name** | **str**| Substring matched search string on job name. | [optional] 
 **tags** | **str**| Filter to jobs whose tags contain the given &#39;key:value&#39; pair, e.g. &#39;saturn.io/kind:finetune&#39;. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**JobList**](JobList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_runtime_summaries**
> JobRuntimeSummaryList list_runtime_summaries(job_id, prev_key=prev_key, next_key=next_key, page_size=page_size)

List job runtime summaries

List of current runtime summaries.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job_runtime_summary_list import JobRuntimeSummaryList
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # List job runtime summaries
        api_response = await api_instance.list_runtime_summaries(job_id, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of JobsApi->list_runtime_summaries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->list_runtime_summaries: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

### Return type

[**JobRuntimeSummaryList**](JobRuntimeSummaryList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_secret_attachments**
> SecretAttachmentList list_secret_attachments(job_id, location=location, attachment_type=attachment_type, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List job secret attachments

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment_list import SecretAttachmentList
from saturn_api.models.secret_attachment_type import SecretAttachmentType
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    location = 'location_example' # str | Substring matched search string on secret attachment location. (optional)
    attachment_type = saturn_api.SecretAttachmentType() # SecretAttachmentType | Filter secret attachments by type. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List job secret attachments
        api_response = await api_instance.list_secret_attachments(job_id, location=location, attachment_type=attachment_type, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of JobsApi->list_secret_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->list_secret_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **location** | **str**| Substring matched search string on secret attachment location. | [optional] 
 **attachment_type** | [**SecretAttachmentType**](.md)| Filter secret attachments by type. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**SecretAttachmentList**](SecretAttachmentList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restart**
> Job restart(job_id, job_restart=job_restart)

Restart job

Restart a running job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.models.job_restart import JobRestart
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    job_restart = saturn_api.JobRestart() # JobRestart |  (optional)

    try:
        # Restart job
        api_response = await api_instance.restart(job_id, job_restart=job_restart)
        print("The response of JobsApi->restart:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->restart: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **job_restart** | [**JobRestart**](JobRestart.md)|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Restarted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotate_token**
> ResourceTokenInfo rotate_token(job_id)

Rotate job API token

Invalidate existing API tokens for the job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Rotate job API token
        api_response = await api_instance.rotate_token(job_id)
        print("The response of JobsApi->rotate_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->rotate_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Rotated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **schedule**
> Job schedule(job_id, cron_schedule_update=cron_schedule_update)

Activate job cron schedule

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.cron_schedule_update import CronScheduleUpdate
from saturn_api.models.job import Job
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    cron_schedule_update = saturn_api.CronScheduleUpdate() # CronScheduleUpdate |  (optional)

    try:
        # Activate job cron schedule
        api_response = await api_instance.schedule(job_id, cron_schedule_update=cron_schedule_update)
        print("The response of JobsApi->schedule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->schedule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **cron_schedule_update** | [**CronScheduleUpdate**](CronScheduleUpdate.md)|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scheduled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start**
> Job start(job_id, job_start=job_start)

Start job

Run a job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.models.job_start import JobStart
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    job_start = saturn_api.JobStart() # JobStart |  (optional)

    try:
        # Start job
        api_response = await api_instance.start(job_id, job_start=job_start)
        print("The response of JobsApi->start:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->start: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **job_start** | [**JobStart**](JobStart.md)|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop**
> Job stop(job_id)

Stop job

Stop a running job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Stop job
        api_response = await api_instance.stop(job_id)
        print("The response of JobsApi->stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Stopped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_run**
> Job stop_run(job_id, run_name)

Stop job run

Stop a single job run.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    run_name = 'run_name_example' # str | 

    try:
        # Stop job run
        api_response = await api_instance.stop_run(job_id, run_name)
        print("The response of JobsApi->stop_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->stop_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **run_name** | **str**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Stopped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unschedule**
> Job unschedule(job_id)

Deactivate job cron schedule

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Deactivate job cron schedule
        api_response = await api_instance.unschedule(job_id)
        print("The response of JobsApi->unschedule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->unschedule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Unscheduled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Job update(job_id, job_update)

Update job

Update a job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job import Job
from saturn_api.models.job_update import JobUpdate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    job_update = saturn_api.JobUpdate() # JobUpdate | 

    try:
        # Update job
        api_response = await api_instance.update(job_id, job_update)
        print("The response of JobsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **job_update** | [**JobUpdate**](JobUpdate.md)|  | 

### Return type

[**Job**](Job.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_resource_template**
> ResourceTemplate update_resource_template(job_id)

Update job resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Update job resource template
        api_response = await api_instance.update_resource_template(job_id)
        print("The response of JobsApi->update_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->update_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_secret_attachment**
> SecretAttachment update_secret_attachment(job_id, secret_attachment_id, secret_attachment_update)

Update job secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.models.secret_attachment_update import SecretAttachmentUpdate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 
    secret_attachment_update = saturn_api.SecretAttachmentUpdate() # SecretAttachmentUpdate | 

    try:
        # Update job secret attachment
        api_response = await api_instance.update_secret_attachment(job_id, secret_attachment_id, secret_attachment_update)
        print("The response of JobsApi->update_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->update_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 
 **secret_attachment_update** | [**SecretAttachmentUpdate**](SecretAttachmentUpdate.md)|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_token**
> ResourceTokenInfo update_token(job_id, resource_token_update=resource_token_update)

Update job API token

Update API token scope on the job. Invalidates existing tokens.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.models.resource_token_update import ResourceTokenUpdate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.JobsApi(api_client)
    job_id = 'job_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        # Update job API token
        api_response = await api_instance.update_token(job_id, resource_token_update=resource_token_update)
        print("The response of JobsApi->update_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->update_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **resource_token_update** | [**ResourceTokenUpdate**](ResourceTokenUpdate.md)|  | [optional] 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

