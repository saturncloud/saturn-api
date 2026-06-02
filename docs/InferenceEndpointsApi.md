# saturn_api.InferenceEndpointsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](InferenceEndpointsApi.md#create) | **POST** /api/orgs/{org_id}/token-factory/inference-endpoints | Create inference endpoint
[**delete**](InferenceEndpointsApi.md#delete) | **DELETE** /api/orgs/{org_id}/token-factory/inference-endpoints/{endpoint_id} | Delete inference endpoint
[**endpoints_start**](InferenceEndpointsApi.md#endpoints_start) | **POST** /api/orgs/{org_id}/token-factory/inference-endpoints/{endpoint_id}/start | Start inference endpoint
[**endpoints_stop**](InferenceEndpointsApi.md#endpoints_stop) | **POST** /api/orgs/{org_id}/token-factory/inference-endpoints/{endpoint_id}/stop | Stop inference endpoint
[**get**](InferenceEndpointsApi.md#get) | **GET** /api/orgs/{org_id}/token-factory/inference-endpoints/{endpoint_id} | Get inference endpoint
[**get_logs**](InferenceEndpointsApi.md#get_logs) | **GET** /api/orgs/{org_id}/token-factory/inference-endpoints/{endpoint_id}/logs | Get inference endpoint historical logs
[**list**](InferenceEndpointsApi.md#list) | **GET** /api/orgs/{org_id}/token-factory/inference-endpoints | List inference endpoints


# **create**
> InferenceEndpointView create(org_id, inference_endpoint_create)

Create inference endpoint

Create a new inference endpoint.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.inference_endpoint_create import InferenceEndpointCreate
from saturn_api.models.inference_endpoint_view import InferenceEndpointView
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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    inference_endpoint_create = saturn_api.InferenceEndpointCreate() # InferenceEndpointCreate | 

    try:
        # Create inference endpoint
        api_response = await api_instance.create(org_id, inference_endpoint_create)
        print("The response of InferenceEndpointsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **inference_endpoint_create** | [**InferenceEndpointCreate**](InferenceEndpointCreate.md)|  | 

### Return type

[**InferenceEndpointView**](InferenceEndpointView.md)

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
> delete(org_id, endpoint_id)

Delete inference endpoint

Delete an inference endpoint.

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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    endpoint_id = 'endpoint_id_example' # str | 

    try:
        # Delete inference endpoint
        await api_instance.delete(org_id, endpoint_id)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **endpoint_id** | **str**|  | 

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

# **endpoints_start**
> InferenceEndpointView endpoints_start(org_id, endpoint_id)

Start inference endpoint

Bring up the underlying persistent deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.inference_endpoint_view import InferenceEndpointView
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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    endpoint_id = 'endpoint_id_example' # str | 

    try:
        # Start inference endpoint
        api_response = await api_instance.endpoints_start(org_id, endpoint_id)
        print("The response of InferenceEndpointsApi->endpoints_start:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->endpoints_start: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **endpoint_id** | **str**|  | 

### Return type

[**InferenceEndpointView**](InferenceEndpointView.md)

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

# **endpoints_stop**
> InferenceEndpointView endpoints_stop(org_id, endpoint_id)

Stop inference endpoint

Tear down the pod but keep the DB row.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.inference_endpoint_view import InferenceEndpointView
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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    endpoint_id = 'endpoint_id_example' # str | 

    try:
        # Stop inference endpoint
        api_response = await api_instance.endpoints_stop(org_id, endpoint_id)
        print("The response of InferenceEndpointsApi->endpoints_stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->endpoints_stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **endpoint_id** | **str**|  | 

### Return type

[**InferenceEndpointView**](InferenceEndpointView.md)

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

# **get**
> InferenceEndpointView get(org_id, endpoint_id)

Get inference endpoint

Get an inference endpoint.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.inference_endpoint_view import InferenceEndpointView
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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    endpoint_id = 'endpoint_id_example' # str | 

    try:
        # Get inference endpoint
        api_response = await api_instance.get(org_id, endpoint_id)
        print("The response of InferenceEndpointsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **endpoint_id** | **str**|  | 

### Return type

[**InferenceEndpointView**](InferenceEndpointView.md)

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
> HistoricLogList get_logs(org_id, endpoint_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

Get inference endpoint historical logs

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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    endpoint_id = 'endpoint_id_example' # str | 
    pod_name = 'pod_name_example' # str | Name of the pod to retrieve logs from. (optional)
    cluster = 'cluster_example' # str | Name of the cluster the pod lives in. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # Get inference endpoint historical logs
        api_response = await api_instance.get_logs(org_id, endpoint_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of InferenceEndpointsApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **endpoint_id** | **str**|  | 
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

# **list**
> InferenceEndpointList list(org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List inference endpoints

Paginated list of inference endpoints.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.inference_endpoint_list import InferenceEndpointList
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
    api_instance = saturn_api.InferenceEndpointsApi(api_client)
    org_id = 'org_id_example' # str | 
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List inference endpoints
        api_response = await api_instance.list(org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of InferenceEndpointsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InferenceEndpointsApi->list: %s\n" % e)
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

[**InferenceEndpointList**](InferenceEndpointList.md)

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

