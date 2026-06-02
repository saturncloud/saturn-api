# saturn_api.FineTuningJobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](FineTuningJobsApi.md#create) | **POST** /api/orgs/{org_id}/token-factory/fine-tuning/jobs | Create fine-tuning job
[**get**](FineTuningJobsApi.md#get) | **GET** /api/orgs/{org_id}/token-factory/fine-tuning/jobs/{job_id} | Get fine-tuning job
[**get_logs**](FineTuningJobsApi.md#get_logs) | **GET** /api/orgs/{org_id}/token-factory/fine-tuning/jobs/{job_id}/logs | Get fine-tuning job historical logs
[**jobs_cancel**](FineTuningJobsApi.md#jobs_cancel) | **POST** /api/orgs/{org_id}/token-factory/fine-tuning/jobs/{job_id}/cancel | Cancel fine-tuning job
[**list**](FineTuningJobsApi.md#list) | **GET** /api/orgs/{org_id}/token-factory/fine-tuning/jobs | List fine-tuning jobs


# **create**
> FineTuneJobView create(org_id, fine_tune_job_create)

Create fine-tuning job

Create a new fine-tuning job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.fine_tune_job_create import FineTuneJobCreate
from saturn_api.models.fine_tune_job_view import FineTuneJobView
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
    api_instance = saturn_api.FineTuningJobsApi(api_client)
    org_id = 'org_id_example' # str | 
    fine_tune_job_create = saturn_api.FineTuneJobCreate() # FineTuneJobCreate | 

    try:
        # Create fine-tuning job
        api_response = await api_instance.create(org_id, fine_tune_job_create)
        print("The response of FineTuningJobsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FineTuningJobsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **fine_tune_job_create** | [**FineTuneJobCreate**](FineTuneJobCreate.md)|  | 

### Return type

[**FineTuneJobView**](FineTuneJobView.md)

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

# **get**
> FineTuneJobView get(org_id, job_id)

Get fine-tuning job

Get a fine-tuning job.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.fine_tune_job_view import FineTuneJobView
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
    api_instance = saturn_api.FineTuningJobsApi(api_client)
    org_id = 'org_id_example' # str | 
    job_id = 'job_id_example' # str | 

    try:
        # Get fine-tuning job
        api_response = await api_instance.get(org_id, job_id)
        print("The response of FineTuningJobsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FineTuningJobsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **job_id** | **str**|  | 

### Return type

[**FineTuneJobView**](FineTuneJobView.md)

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
> HistoricLogList get_logs(org_id, job_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

Get fine-tuning job historical logs

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
    api_instance = saturn_api.FineTuningJobsApi(api_client)
    org_id = 'org_id_example' # str | 
    job_id = 'job_id_example' # str | 
    pod_name = 'pod_name_example' # str | Name of the pod to retrieve logs from. (optional)
    cluster = 'cluster_example' # str | Name of the cluster the pod lives in. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # Get fine-tuning job historical logs
        api_response = await api_instance.get_logs(org_id, job_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of FineTuningJobsApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FineTuningJobsApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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

# **jobs_cancel**
> FineTuneJobView jobs_cancel(org_id, job_id)

Cancel fine-tuning job

Stop the underlying intermittent deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.fine_tune_job_view import FineTuneJobView
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
    api_instance = saturn_api.FineTuningJobsApi(api_client)
    org_id = 'org_id_example' # str | 
    job_id = 'job_id_example' # str | 

    try:
        # Cancel fine-tuning job
        api_response = await api_instance.jobs_cancel(org_id, job_id)
        print("The response of FineTuningJobsApi->jobs_cancel:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FineTuningJobsApi->jobs_cancel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **job_id** | **str**|  | 

### Return type

[**FineTuneJobView**](FineTuneJobView.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Cancelled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> FineTuneJobList list(org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List fine-tuning jobs

Paginated list of fine-tuning jobs.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.fine_tune_job_list import FineTuneJobList
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
    api_instance = saturn_api.FineTuningJobsApi(api_client)
    org_id = 'org_id_example' # str | 
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List fine-tuning jobs
        api_response = await api_instance.list(org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of FineTuningJobsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FineTuningJobsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**FineTuneJobList**](FineTuneJobList.md)

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

