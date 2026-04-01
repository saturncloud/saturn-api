# saturn_api.DaskClustersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adapt**](DaskClustersApi.md#adapt) | **POST** /api/dask_clusters/{dask_cluster_id}/adapt | Set dask cluster adaptive scaling
[**create**](DaskClustersApi.md#create) | **POST** /api/dask_clusters | Create dask cluster
[**delete**](DaskClustersApi.md#delete) | **DELETE** /api/dask_clusters/{dask_cluster_id} | Delete dask cluster
[**get**](DaskClustersApi.md#get) | **GET** /api/dask_clusters/{dask_cluster_id} | Get dask cluster
[**get_info**](DaskClustersApi.md#get_info) | **GET** /api/dask_clusters/{dask_cluster_id}/info | Get dask cluster info
[**get_kubecluster_runtime_summary**](DaskClustersApi.md#get_kubecluster_runtime_summary) | **GET** /api/dask_clusters/{dask_cluster_id}/kubecluster/runtimesummary | Get dask cluster kubecluster runtime summary
[**get_logs**](DaskClustersApi.md#get_logs) | **GET** /api/dask_clusters/{dask_cluster_id}/logs | Get dask cluster historical logs
[**get_metrics**](DaskClustersApi.md#get_metrics) | **GET** /api/dask_clusters/{dask_cluster_id}/metrics | Get dask cluster metrics
[**get_pod_history**](DaskClustersApi.md#get_pod_history) | **GET** /api/dask_clusters/{dask_cluster_id}/history | Get dask cluster pod history
[**get_runtime_summary**](DaskClustersApi.md#get_runtime_summary) | **GET** /api/dask_clusters/{dask_cluster_id}/runtimesummary | Get dask cluster runtime summary
[**get_scheduler_info**](DaskClustersApi.md#get_scheduler_info) | **GET** /api/dask_clusters/{dask_cluster_id}/scheduler_info | Get dask cluster scheduler info
[**get_scheduler_runtimesummary**](DaskClustersApi.md#get_scheduler_runtimesummary) | **GET** /api/dask_clusters/{dask_cluster_id}/scheduler/runtimesummary | Get dask cluster scheduler runtime summary
[**get_scheduler_status**](DaskClustersApi.md#get_scheduler_status) | **GET** /api/dask_clusters/{dask_cluster_id}/status | Get dask cluster scheduler status
[**get_server_options**](DaskClustersApi.md#get_server_options) | **GET** /api/dask_clusters/info | Get dask cluster server options
[**get_token_info**](DaskClustersApi.md#get_token_info) | **GET** /api/dask_clusters/{dask_cluster_id}/token | Get dask cluster API token info
[**list**](DaskClustersApi.md#list) | **GET** /api/dask_clusters | List dask clusters
[**list_worker_runtime_summaries**](DaskClustersApi.md#list_worker_runtime_summaries) | **GET** /api/dask_clusters/{dask_cluster_id}/workers/runtimesummary | List dask cluster worker runtime summaries
[**restart**](DaskClustersApi.md#restart) | **POST** /api/dask_clusters/{dask_cluster_id}/restart | Restart dask cluster
[**rotate_token**](DaskClustersApi.md#rotate_token) | **POST** /api/dask_clusters/{dask_cluster_id}/token | Rotate dask cluster API token
[**scale**](DaskClustersApi.md#scale) | **POST** /api/dask_clusters/{dask_cluster_id}/scale | Scale dask cluster worker count
[**start**](DaskClustersApi.md#start) | **POST** /api/dask_clusters/{dask_cluster_id}/start | Start dask cluster
[**stop**](DaskClustersApi.md#stop) | **POST** /api/dask_clusters/{dask_cluster_id}/stop | Stop dask cluster
[**update**](DaskClustersApi.md#update) | **PATCH** /api/dask_clusters/{dask_cluster_id} | Update dask cluster
[**update_token**](DaskClustersApi.md#update_token) | **PATCH** /api/dask_clusters/{dask_cluster_id}/token | Update dask cluster API token


# **adapt**
> adapt(dask_cluster_id, dask_cluster_adapt)

Set dask cluster adaptive scaling

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_adapt import DaskClusterAdapt
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_adapt = saturn_api.DaskClusterAdapt() # DaskClusterAdapt | 

    try:
        # Set dask cluster adaptive scaling
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

Create dask cluster

Create a new dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
from saturn_api.models.dask_cluster_create import DaskClusterCreate
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_create = saturn_api.DaskClusterCreate() # DaskClusterCreate | 

    try:
        # Create dask cluster
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
> delete(dask_cluster_id, allow_active=allow_active)

Delete dask cluster

Delete a dask cluster.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    allow_active = False # bool | Force delete dask cluster that is currently active. (optional) (default to False)

    try:
        # Delete dask cluster
        await api_instance.delete(dask_cluster_id, allow_active=allow_active)
    except Exception as e:
        print("Exception when calling DaskClustersApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **allow_active** | **bool**| Force delete dask cluster that is currently active. | [optional] [default to False]

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

Get dask cluster

Get a dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster
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

Get dask cluster info

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster info
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

# **get_kubecluster_runtime_summary**
> DeploymentRuntimeSummary get_kubecluster_runtime_summary(dask_cluster_id)

Get dask cluster kubecluster runtime summary

Summary of the current runtime status.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_runtime_summary import DeploymentRuntimeSummary
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster kubecluster runtime summary
        api_response = await api_instance.get_kubecluster_runtime_summary(dask_cluster_id)
        print("The response of DaskClustersApi->get_kubecluster_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_kubecluster_runtime_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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

# **get_logs**
> HistoricLogList get_logs(dask_cluster_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size, component=component)

Get dask cluster historical logs

Historical record of logs from the resource.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_components import DaskComponents
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    pod_name = 'pod_name_example' # str | Name of the pod to retrieve logs from. (optional)
    cluster = 'cluster_example' # str | Name of the cluster the pod lives in. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)
    component = saturn_api.DaskComponents() # DaskComponents | Dask component to query. (optional)

    try:
        # Get dask cluster historical logs
        api_response = await api_instance.get_logs(dask_cluster_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size, component=component)
        print("The response of DaskClustersApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **pod_name** | **str**| Name of the pod to retrieve logs from. | [optional] 
 **cluster** | **str**| Name of the cluster the pod lives in. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]
 **component** | [**DaskComponents**](.md)| Dask component to query. | [optional] 

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
> Metrics get_metrics(dask_cluster_id, component=component, type=type, start=start, end=end, resolution=resolution, cluster=cluster)

Get dask cluster metrics

Hardware utilization metrics.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_components import DaskComponents
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    component = saturn_api.DaskComponents() # DaskComponents | Dask component to query. (optional)
    type = 'type_example' # str | Filter metric series by type. (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime | Start timestamp of the metrics query. (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime | End timestamp of the metrics query. (optional)
    resolution = 'resolution_example' # str | Sampling resolution of metrics points. (optional)
    cluster = 'cluster_example' # str | Cluster to query for metrics. (optional)

    try:
        # Get dask cluster metrics
        api_response = await api_instance.get_metrics(dask_cluster_id, component=component, type=type, start=start, end=end, resolution=resolution, cluster=cluster)
        print("The response of DaskClustersApi->get_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_metrics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **component** | [**DaskComponents**](.md)| Dask component to query. | [optional] 
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
> ResourceHistory get_pod_history(dask_cluster_id, component=component)

Get dask cluster pod history

Get history of pods run for the dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_components import DaskComponents
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    component = saturn_api.DaskComponents() # DaskComponents | Dask component to query. (optional)

    try:
        # Get dask cluster pod history
        api_response = await api_instance.get_pod_history(dask_cluster_id, component=component)
        print("The response of DaskClustersApi->get_pod_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_pod_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **component** | [**DaskComponents**](.md)| Dask component to query. | [optional] 

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

# **get_runtime_summary**
> DaskClusterRuntimeSummary get_runtime_summary(dask_cluster_id)

Get dask cluster runtime summary

Summary of the current runtime status.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_runtime_summary import DaskClusterRuntimeSummary
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster runtime summary
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

Get dask cluster scheduler info

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster scheduler info
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

# **get_scheduler_runtimesummary**
> PodRuntimeSummary get_scheduler_runtimesummary(dask_cluster_id)

Get dask cluster scheduler runtime summary

Summary of the current runtime status.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster scheduler runtime summary
        api_response = await api_instance.get_scheduler_runtimesummary(dask_cluster_id)
        print("The response of DaskClustersApi->get_scheduler_runtimesummary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_scheduler_runtimesummary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 

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

# **get_scheduler_status**
> Dict[str, object] get_scheduler_status(dask_cluster_id)

Get dask cluster scheduler status

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster scheduler status
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

# **get_server_options**
> DaskClusterServerOptions get_server_options()

Get dask cluster server options

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_server_options import DaskClusterServerOptions
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
    api_instance = saturn_api.DaskClustersApi(api_client)

    try:
        # Get dask cluster server options
        api_response = await api_instance.get_server_options()
        print("The response of DaskClustersApi->get_server_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->get_server_options: %s\n" % e)
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
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_info**
> ResourceTokenInfo get_token_info(dask_cluster_id)

Get dask cluster API token info

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Get dask cluster API token info
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

# **list**
> DaskClusterList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List dask clusters

Paginated list of dask clusters.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_list import DaskClusterList
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List dask clusters
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DaskClustersApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->list: %s\n" % e)
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
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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

# **list_worker_runtime_summaries**
> DaskWorkerRuntimeSummaryList list_worker_runtime_summaries(dask_cluster_id, prev_key=prev_key, next_key=next_key, page_size=page_size)

List dask cluster worker runtime summaries

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_worker_runtime_summary_list import DaskWorkerRuntimeSummaryList
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # List dask cluster worker runtime summaries
        api_response = await api_instance.list_worker_runtime_summaries(dask_cluster_id, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of DaskClustersApi->list_worker_runtime_summaries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->list_worker_runtime_summaries: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

### Return type

[**DaskWorkerRuntimeSummaryList**](DaskWorkerRuntimeSummaryList.md)

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

Restart dask cluster

Restart a running dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Restart dask cluster
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
**200** | Restarted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotate_token**
> ResourceTokenInfo rotate_token(dask_cluster_id)

Rotate dask cluster API token

Invalidate existing API tokens for the dask cluster.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Rotate dask cluster API token
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
**200** | Rotated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scale**
> scale(dask_cluster_id, dask_cluster_scale)

Scale dask cluster worker count

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster_scale import DaskClusterScale
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_scale = saturn_api.DaskClusterScale() # DaskClusterScale | 

    try:
        # Scale dask cluster worker count
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

# **start**
> DaskCluster start(dask_cluster_id)

Start dask cluster

Run a dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Start dask cluster
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
**200** | Started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop**
> DaskCluster stop(dask_cluster_id)

Stop dask cluster

Stop a running dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 

    try:
        # Stop dask cluster
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
**200** | Stopped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> DaskCluster update(dask_cluster_id, dask_cluster_update)

Update dask cluster

Update a dask cluster.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dask_cluster import DaskCluster
from saturn_api.models.dask_cluster_update import DaskClusterUpdate
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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    dask_cluster_update = saturn_api.DaskClusterUpdate() # DaskClusterUpdate | 

    try:
        # Update dask cluster
        api_response = await api_instance.update(dask_cluster_id, dask_cluster_update)
        print("The response of DaskClustersApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DaskClustersApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dask_cluster_id** | **str**|  | 
 **dask_cluster_update** | [**DaskClusterUpdate**](DaskClusterUpdate.md)|  | 

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

Update dask cluster API token

Update API token scope on the dask cluster. Invalidates existing tokens.

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
    api_instance = saturn_api.DaskClustersApi(api_client)
    dask_cluster_id = 'dask_cluster_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        # Update dask cluster API token
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
**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

