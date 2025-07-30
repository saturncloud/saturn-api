# saturn_api.DaskClustersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adapt**](DaskClustersApi.md#adapt) | **POST** /api/dask_clusters/{dask_cluster_id}/adapt | 
[**create**](DaskClustersApi.md#create) | **POST** /api/dask_clusters | 
[**delete**](DaskClustersApi.md#delete) | **DELETE** /api/dask_clusters/{dask_cluster_id} | 
[**get**](DaskClustersApi.md#get) | **GET** /api/dask_clusters/{dask_cluster_id} | 
[**get_info**](DaskClustersApi.md#get_info) | **GET** /api/dask_clusters/{dask_cluster_id}/info | 
[**get_log_history**](DaskClustersApi.md#get_log_history) | **GET** /api/dask_clusters/{dask_cluster_id}/logs | 
[**get_metrics**](DaskClustersApi.md#get_metrics) | **GET** /api/dask_clusters/{dask_cluster_id}/metrics | 
[**get_runtime_summary**](DaskClustersApi.md#get_runtime_summary) | **GET** /api/dask_clusters/{dask_cluster_id}/runtimesummary | 
[**get_scheduler_info**](DaskClustersApi.md#get_scheduler_info) | **GET** /api/dask_clusters/{dask_cluster_id}/scheduler_info | 
[**get_scheduler_status**](DaskClustersApi.md#get_scheduler_status) | **GET** /api/dask_clusters/{dask_cluster_id}/status | 
[**get_server_info**](DaskClustersApi.md#get_server_info) | **GET** /api/dask_clusters/info | 
[**get_status_history**](DaskClustersApi.md#get_status_history) | **GET** /api/dask_clusters/{dask_cluster_id}/history | 
[**get_token_info**](DaskClustersApi.md#get_token_info) | **GET** /api/dask_clusters/{dask_cluster_id}/token | 
[**kubecluster_runtime_summary**](DaskClustersApi.md#kubecluster_runtime_summary) | **GET** /api/dask_clusters/{dask_cluster_id}/kubecluster/runtimesummary | 
[**list**](DaskClustersApi.md#list) | **GET** /api/dask_clusters | 
[**restart**](DaskClustersApi.md#restart) | **POST** /api/dask_clusters/{dask_cluster_id}/restart | 
[**rotate_token**](DaskClustersApi.md#rotate_token) | **POST** /api/dask_clusters/{dask_cluster_id}/token | 
[**scale**](DaskClustersApi.md#scale) | **POST** /api/dask_clusters/{dask_cluster_id}/scale | 
[**scheduler_runtimesummary**](DaskClustersApi.md#scheduler_runtimesummary) | **GET** /api/dask_clusters/{dask_cluster_id}/scheduler/runtimesummary | 
[**start**](DaskClustersApi.md#start) | **POST** /api/dask_clusters/{dask_cluster_id}/start | 
[**stop**](DaskClustersApi.md#stop) | **POST** /api/dask_clusters/{dask_cluster_id}/close | 
[**update**](DaskClustersApi.md#update) | **PATCH** /api/dask_clusters/{dask_cluster_id} | 
[**update_token**](DaskClustersApi.md#update_token) | **PATCH** /api/dask_clusters/{dask_cluster_id}/token | 
[**workers_runtimesummary**](DaskClustersApi.md#workers_runtimesummary) | **GET** /api/dask_clusters/{dask_cluster_id}/workers/runtimesummary | 


# **adapt**
> adapt(dask_cluster_id, dask_cluster_adapt)

Set adaptive scaling on a dask cluster

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_adapt import DaskClusterAdapt
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_adapt = saturn_api.DaskClusterAdapt() # DaskClusterAdapt | 

    try:
        await api_instance.adapt(dask_cluster_id, dask_cluster_adapt)
    except Exception as e:
        print("Exception when calling DaskClustersApi->adapt: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **dask_cluster_adapt** | [**DaskClusterAdapt**](DaskClusterAdapt.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> DaskCluster create(dask_cluster_create)

Create a dask cluster

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
from saturn_api.models.dask_cluster_create import DaskClusterCreate
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_create = saturn_api.DaskClusterCreate() # DaskClusterCreate | 

    try:
        api_response = await api_instance.create(dask_cluster_create)
        print("The response of DaskClustersApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_create** | [**DaskClusterCreate**](DaskClusterCreate.md)|  | 

### Return type

[**DaskCluster**](DaskCluster.md)

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
> delete(dask_cluster_id)

Delete dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        await api_instance.delete(dask_cluster_id)
    except Exception as e:
        print("Exception when calling DaskClustersApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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
> DaskCluster get(dask_cluster_id)

Get dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get(dask_cluster_id)
        print("The response of DaskClustersApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**DaskCluster**](DaskCluster.md)

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

# **get_info**
> Dict[str, object] get_info(dask_cluster_id)

Passthrough to dask's /info route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_info(dask_cluster_id)
        print("The response of DaskClustersApi->get_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

**Dict[str, object]**

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

# **get_log_history**
> HistoricLogs get_log_history(dask_cluster_id)

Get dask cluster historical logs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.historic_logs import HistoricLogs
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_log_history(dask_cluster_id)
        print("The response of DaskClustersApi->get_log_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_log_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**HistoricLogs**](HistoricLogs.md)

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
> Metrics get_metrics(dask_cluster_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster, component=component)

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    type = 'type_example' # str |  (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    resolution = 'resolution_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)
    component = 'component_example' # str |  (optional)

    try:
        api_response = await api_instance.get_metrics(dask_cluster_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster, component=component)
        print("The response of DaskClustersApi->get_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_metrics: %s\n" % e)
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

# **get_runtime_summary**
> DaskClusterRuntimeSummary get_runtime_summary(dask_cluster_id)

Get dask cluster runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_runtime_summary import DaskClusterRuntimeSummary
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_runtime_summary(dask_cluster_id)
        print("The response of DaskClustersApi->get_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_runtime_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**DaskClusterRuntimeSummary**](DaskClusterRuntimeSummary.md)

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

# **get_scheduler_info**
> Dict[str, object] get_scheduler_info(dask_cluster_id)

Passthrough to dask's /scheduler_info route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_scheduler_info(dask_cluster_id)
        print("The response of DaskClustersApi->get_scheduler_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_scheduler_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

**Dict[str, object]**

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

# **get_scheduler_status**
> Dict[str, object] get_scheduler_status(dask_cluster_id)

Passthrough to dask's /status route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_scheduler_status(dask_cluster_id)
        print("The response of DaskClustersApi->get_scheduler_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_scheduler_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

**Dict[str, object]**

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

# **get_server_info**
> DaskClusterServerOptions get_server_info()

Get server options for dask workers and schedulers

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_server_options import DaskClusterServerOptions
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
    api_instance = saturn_api.DaskClustersApi(api_client)

    try:
        api_response = await api_instance.get_server_info()
        print("The response of DaskClustersApi->get_server_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_server_info: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**DaskClusterServerOptions**](DaskClusterServerOptions.md)

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

# **get_status_history**
> ResourceHistory get_status_history(dask_cluster_id)

Get dask cluster status history

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_history import ResourceHistory
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_status_history(dask_cluster_id)
        print("The response of DaskClustersApi->get_status_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_status_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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

# **get_token_info**
> ResourceTokenInfo get_token_info(dask_cluster_id)

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.get_token_info(dask_cluster_id)
        print("The response of DaskClustersApi->get_token_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_token_info: %s\n" % e)
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

# **kubecluster_runtime_summary**
> DeploymentRuntimeSummary kubecluster_runtime_summary(dask_cluster_id, details=details)

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.kubecluster_runtime_summary(dask_cluster_id, details=details)
        print("The response of DaskClustersApi->kubecluster_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->kubecluster_runtime_summary: %s\n" % e)
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

# **list**
> DaskClusterList list(owner_id=owner_id, owner_name=owner_name, user_id=user_id, group_id=group_id, org_id=org_id, include_groups=include_groups)

List dask clusters for a user or group

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_list import DaskClusterList
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    owner_id = 'owner_id_example' # str |  (optional)
    owner_name = 'owner_name_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    include_groups = True # bool |  (optional) (default to True)

    try:
        api_response = await api_instance.list(owner_id=owner_id, owner_name=owner_name, user_id=user_id, group_id=group_id, org_id=org_id, include_groups=include_groups)
        print("The response of DaskClustersApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_id** | **str**|  | [optional] 
 **owner_name** | **str**|  | [optional] 
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **include_groups** | **bool**|  | [optional] [default to True]

### Return type

[**DaskClusterList**](DaskClusterList.md)

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
> DaskCluster restart(dask_cluster_id)

Restart dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.restart(dask_cluster_id)
        print("The response of DaskClustersApi->restart:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->restart: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**DaskCluster**](DaskCluster.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Restarted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotate_token**
> ResourceTokenInfo rotate_token(dask_cluster_id)

Rotate dask cluster resource API token. Invalidates existing token.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.rotate_token(dask_cluster_id)
        print("The response of DaskClustersApi->rotate_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->rotate_token: %s\n" % e)
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

# **scale**
> scale(dask_cluster_id, dask_cluster_scale)

Scale dask cluster workers to desired count

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_scale import DaskClusterScale
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_scale = saturn_api.DaskClusterScale() # DaskClusterScale | 

    try:
        await api_instance.scale(dask_cluster_id, dask_cluster_scale)
    except Exception as e:
        print("Exception when calling DaskClustersApi->scale: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **dask_cluster_scale** | [**DaskClusterScale**](DaskClusterScale.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduler_runtimesummary**
> PodRuntimeSummary scheduler_runtimesummary(dask_cluster_id, details=details)

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.scheduler_runtimesummary(dask_cluster_id, details=details)
        print("The response of DaskClustersApi->scheduler_runtimesummary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->scheduler_runtimesummary: %s\n" % e)
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

# **start**
> DaskCluster start(dask_cluster_id)

Start dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.start(dask_cluster_id)
        print("The response of DaskClustersApi->start:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->start: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**DaskCluster**](DaskCluster.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop**
> DaskCluster stop(dask_cluster_id)

Stop dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        api_response = await api_instance.stop(dask_cluster_id)
        print("The response of DaskClustersApi->stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

### Return type

[**DaskCluster**](DaskCluster.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Stopped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> DaskCluster update(dask_cluster_id, dask_cluster_update=dask_cluster_update)

Update dask cluster by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
from saturn_api.models.dask_cluster_update import DaskClusterUpdate
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_update = saturn_api.DaskClusterUpdate() # DaskClusterUpdate |  (optional)

    try:
        api_response = await api_instance.update(dask_cluster_id, dask_cluster_update=dask_cluster_update)
        print("The response of DaskClustersApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **dask_cluster_update** | [**DaskClusterUpdate**](DaskClusterUpdate.md)|  | [optional] 

### Return type

[**DaskCluster**](DaskCluster.md)

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
> ResourceTokenInfo update_token(dask_cluster_id, resource_token_update=resource_token_update)

Update and rotate dask cluster resource API token. Invalidates existing token.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        api_response = await api_instance.update_token(dask_cluster_id, resource_token_update=resource_token_update)
        print("The response of DaskClustersApi->update_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->update_token: %s\n" % e)
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

# **workers_runtimesummary**
> DaskWorkersRuntimeSummaryPage workers_runtimesummary(dask_cluster_id, page=page, page_size=page_size)

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    page = 1 # int |  (optional) (default to 1)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        api_response = await api_instance.workers_runtimesummary(dask_cluster_id, page=page, page_size=page_size)
        print("The response of DaskClustersApi->workers_runtimesummary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->workers_runtimesummary: %s\n" % e)
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

