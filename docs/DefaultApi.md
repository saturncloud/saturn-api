# saturn_api.DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get**](DefaultApi.md#api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get) | **GET** /api/dask_clusters/{dask_cluster_id}/kubecluster/runtimesummary | 
[**api_dask_clusters_dask_cluster_id_metrics_get**](DefaultApi.md#api_dask_clusters_dask_cluster_id_metrics_get) | **GET** /api/dask_clusters/{dask_cluster_id}/metrics | 
[**api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get**](DefaultApi.md#api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get) | **GET** /api/dask_clusters/{dask_cluster_id}/scheduler/runtimesummary | 
[**api_dask_clusters_dask_cluster_id_token_get**](DefaultApi.md#api_dask_clusters_dask_cluster_id_token_get) | **GET** /api/dask_clusters/{dask_cluster_id}/token | 
[**api_dask_clusters_dask_cluster_id_token_patch**](DefaultApi.md#api_dask_clusters_dask_cluster_id_token_patch) | **PATCH** /api/dask_clusters/{dask_cluster_id}/token | 
[**api_dask_clusters_dask_cluster_id_token_post**](DefaultApi.md#api_dask_clusters_dask_cluster_id_token_post) | **POST** /api/dask_clusters/{dask_cluster_id}/token | 
[**api_dask_clusters_dask_cluster_id_workers_runtimesummary_get**](DefaultApi.md#api_dask_clusters_dask_cluster_id_workers_runtimesummary_get) | **GET** /api/dask_clusters/{dask_cluster_id}/workers/runtimesummary | 


# **api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get**
> DeploymentRuntimeSummary api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get(dask_cluster_id, details=details)

Get dask kubecluster runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_runtime_summary import DeploymentRuntimeSummary
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get(dask_cluster_id, details=details)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_kubecluster_runtimesummary_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

### Return type

[**DeploymentRuntimeSummary**](DeploymentRuntimeSummary.md)

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

# **api_dask_clusters_dask_cluster_id_metrics_get**
> Metrics api_dask_clusters_dask_cluster_id_metrics_get(dask_cluster_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster, component=component)

Get dask cluster hardware metrics

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.metrics import Metrics
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    type = 'type_example' # str |  (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    resolution = 'resolution_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)
    component = 'component_example' # str |  (optional)

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_metrics_get(dask_cluster_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster, component=component)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_metrics_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_metrics_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **type** | **str**|  | [optional] 
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 
 **resolution** | **str**|  | [optional] 
 **cluster** | **str**|  | [optional] 
 **component** | **str**|  | [optional] 

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

# **api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get**
> PodRuntimeSummary api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get(dask_cluster_id, details=details)

Get dask scheduler runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.pod_runtime_summary import PodRuntimeSummary
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get(dask_cluster_id, details=details)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_scheduler_runtimesummary_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

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

# **api_dask_clusters_dask_cluster_id_token_get**
> ResourceTokenInfo api_dask_clusters_dask_cluster_id_token_get(dask_cluster_id)

Get dask cluster resource API token info

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_token_get(dask_cluster_id)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_token_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_token_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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

# **api_dask_clusters_dask_cluster_id_token_patch**
> ResourceTokenInfo api_dask_clusters_dask_cluster_id_token_patch(dask_cluster_id, resource_token_update=resource_token_update)

Update and rotate dask cluster resource API token

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.models.resource_token_update import ResourceTokenUpdate
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_token_patch(dask_cluster_id, resource_token_update=resource_token_update)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_token_patch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_token_patch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
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
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_dask_clusters_dask_cluster_id_token_post**
> ResourceTokenInfo api_dask_clusters_dask_cluster_id_token_post(dask_cluster_id)

Rotate dask cluster resource API token

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_token_post(dask_cluster_id)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_token_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_token_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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

# **api_dask_clusters_dask_cluster_id_workers_runtimesummary_get**
> DaskWorkersRuntimeSummaryPage api_dask_clusters_dask_cluster_id_workers_runtimesummary_get(dask_cluster_id, page=page, page_size=page_size)

List dask worker runtime summaries

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_workers_runtime_summary_page import DaskWorkersRuntimeSummaryPage
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.DefaultApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    page = 1 # int |  (optional) (default to 1)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        api_response = await api_instance.api_dask_clusters_dask_cluster_id_workers_runtimesummary_get(dask_cluster_id, page=page, page_size=page_size)
        print("The response of DefaultApi->api_dask_clusters_dask_cluster_id_workers_runtimesummary_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->api_dask_clusters_dask_cluster_id_workers_runtimesummary_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**DaskWorkersRuntimeSummaryPage**](DaskWorkersRuntimeSummaryPage.md)

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

