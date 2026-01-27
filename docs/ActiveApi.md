# saturn_api.ActiveApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_logs**](ActiveApi.md#get_logs) | **GET** /api/active/logs | Get pod logs
[**list_pod_summaries**](ActiveApi.md#list_pod_summaries) | **GET** /api/active/pod_summaries | List pod runtime summaries
[**list_resources**](ActiveApi.md#list_resources) | **GET** /api/active/resources | List active resources


# **get_logs**
> ActiveLogs get_logs(pod_name, container_name=container_name, previous=previous, cluster=cluster, page_size=page_size)

Get pod logs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.active_logs import ActiveLogs
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
    api_instance = saturn_api.ActiveApi(api_client)
    pod_name = 'pod_name_example' # str | 
    container_name = 'container_name_example' # str |  (optional)
    previous = False # bool |  (optional) (default to False)
    cluster = 'cluster_example' # str |  (optional)
    page_size = 1000 # int |  (optional) (default to 1000)

    try:
        # Get pod logs
        api_response = await api_instance.get_logs(pod_name, container_name=container_name, previous=previous, cluster=cluster, page_size=page_size)
        print("The response of ActiveApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pod_name** | **str**|  | 
 **container_name** | **str**|  | [optional] 
 **previous** | **bool**|  | [optional] [default to False]
 **cluster** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 1000]

### Return type

[**ActiveLogs**](ActiveLogs.md)

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

# **list_pod_summaries**
> PodRuntimeSummaryList list_pod_summaries(workload_type, workload_id, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

List pod runtime summaries

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.pod_runtime_summary_list import PodRuntimeSummaryList
from saturn_api.models.workload_type import WorkloadType
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
    api_instance = saturn_api.ActiveApi(api_client)
    workload_type = saturn_api.WorkloadType() # WorkloadType | 
    workload_id = 'workload_id_example' # str | 
    cluster = 'cluster_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        # List pod runtime summaries
        api_response = await api_instance.list_pod_summaries(workload_type, workload_id, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of ActiveApi->list_pod_summaries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->list_pod_summaries: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workload_type** | [**WorkloadType**](.md)|  | 
 **workload_id** | **str**|  | 
 **cluster** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**PodRuntimeSummaryList**](PodRuntimeSummaryList.md)

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

# **list_resources**
> ActiveResourceList list_resources(user_id=user_id, group_id=group_id, org_id=org_id, resource_type=resource_type, list_by=list_by, prev_key=prev_key, next_key=next_key, page_size=page_size)

List active resources

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.active_resource_list import ActiveResourceList
from saturn_api.models.resource_type import ResourceType
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
    api_instance = saturn_api.ActiveApi(api_client)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    resource_type = saturn_api.ResourceType() # ResourceType |  (optional)
    list_by = owner # str |  (optional) (default to owner)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        # List active resources
        api_response = await api_instance.list_resources(user_id=user_id, group_id=group_id, org_id=org_id, resource_type=resource_type, list_by=list_by, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of ActiveApi->list_resources:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->list_resources: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **resource_type** | [**ResourceType**](.md)|  | [optional] 
 **list_by** | **str**|  | [optional] [default to owner]
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**ActiveResourceList**](ActiveResourceList.md)

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

