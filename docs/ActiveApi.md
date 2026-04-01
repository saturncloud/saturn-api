# saturn_api.ActiveApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_pod**](ActiveApi.md#get_pod) | **GET** /api/active/pods/{name} | Get pod runtime summary
[**get_pod_logs**](ActiveApi.md#get_pod_logs) | **GET** /api/active/pods/{name}/logs | Get pod logs
[**list_pods**](ActiveApi.md#list_pods) | **GET** /api/active/pods | List pod runtime summaries
[**list_resources**](ActiveApi.md#list_resources) | **GET** /api/active/resources | List active resources


# **get_pod**
> PodRuntimeSummary get_pod(name, cluster=cluster)

Get pod runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.pod_runtime_summary import PodRuntimeSummary
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
    name = 'name_example' # str | 
    cluster = 'cluster_example' # str |  (optional)

    try:
        # Get pod runtime summary
        api_response = await api_instance.get_pod(name, cluster=cluster)
        print("The response of ActiveApi->get_pod:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->get_pod: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | 
 **cluster** | **str**|  | [optional] 

### Return type

[**PodRuntimeSummary**](PodRuntimeSummary.md)

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

# **get_pod_logs**
> PodLogs get_pod_logs(name, container_name=container_name, previous=previous, cluster=cluster, page_size=page_size)

Get pod logs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.pod_logs import PodLogs
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
    name = 'name_example' # str | 
    container_name = 'container_name_example' # str | Name of the container to retrieve logs for. Defaults to first container in the pod. (optional)
    previous = False # bool | Retrieve logs for the previous instance of a container, if it exists. (optional) (default to False)
    cluster = 'cluster_example' # str | Name of the cluster where the pod is running. (optional)
    page_size = 1000 # int | Number of log lines to retrieve. (optional) (default to 1000)

    try:
        # Get pod logs
        api_response = await api_instance.get_pod_logs(name, container_name=container_name, previous=previous, cluster=cluster, page_size=page_size)
        print("The response of ActiveApi->get_pod_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->get_pod_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | 
 **container_name** | **str**| Name of the container to retrieve logs for. Defaults to first container in the pod. | [optional] 
 **previous** | **bool**| Retrieve logs for the previous instance of a container, if it exists. | [optional] [default to False]
 **cluster** | **str**| Name of the cluster where the pod is running. | [optional] 
 **page_size** | **int**| Number of log lines to retrieve. | [optional] [default to 1000]

### Return type

[**PodLogs**](PodLogs.md)

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

# **list_pods**
> PodRuntimeSummaryList list_pods(workload_type, workload_id, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

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
    workload_type = saturn_api.WorkloadType() # WorkloadType | Type of pods to query.
    workload_id = 'workload_id_example' # str | ID of the workload.
    cluster = 'cluster_example' # str | Name of the cluster to query. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # List pod runtime summaries
        api_response = await api_instance.list_pods(workload_type, workload_id, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of ActiveApi->list_pods:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveApi->list_pods: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workload_type** | [**WorkloadType**](.md)| Type of pods to query. | 
 **workload_id** | **str**| ID of the workload. | 
 **cluster** | **str**| Name of the cluster to query. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

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
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    resource_type = saturn_api.ResourceType() # ResourceType | Filter the type of returned resources. (optional)
    list_by = owner # str | List active resources at the owner, org, or account level. Org and Account require elevated permissions. (optional) (default to owner)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

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
 **user_id** | **str**| Reference owner by user ID. | [optional] 
 **group_id** | **str**| Reference owner by group ID. | [optional] 
 **org_id** | **str**| Reference owner by org ID. | [optional] 
 **resource_type** | [**ResourceType**](.md)| Filter the type of returned resources. | [optional] 
 **list_by** | **str**| List active resources at the owner, org, or account level. Org and Account require elevated permissions. | [optional] [default to owner]
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

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

