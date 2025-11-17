# saturn_api.ImageTagsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ImageTagsApi.md#create) | **POST** /api/images/{image_id}/tags | 
[**delete**](ImageTagsApi.md#delete) | **DELETE** /api/images/{image_id}/tags/{image_tag_id} | 
[**get**](ImageTagsApi.md#get) | **GET** /api/images/{image_id}/tags/{image_tag_id} | 
[**get_log_history**](ImageTagsApi.md#get_log_history) | **GET** /api/images/{image_id}/tags/{image_tag_id}/logs | 
[**get_status_history**](ImageTagsApi.md#get_status_history) | **GET** /api/images/{image_id}/tags/{image_tag_id}/history | 
[**list**](ImageTagsApi.md#list) | **GET** /api/images/{image_id}/tags | 
[**stop**](ImageTagsApi.md#stop) | **POST** /api/images/{image_id}/tags/{image_tag_id}/stop | 
[**update**](ImageTagsApi.md#update) | **PATCH** /api/images/{image_id}/tags/{image_tag_id} | 


# **create**
> ImageTag create(image_id, image_tag_create)

Create image tag

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.image_tag import ImageTag
from saturn_api.models.image_tag_create import ImageTagCreate
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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_create = saturn_api.ImageTagCreate() # ImageTagCreate | 

    try:
        api_response = await api_instance.create(image_id, image_tag_create)
        print("The response of ImageTagsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_create** | [**ImageTagCreate**](ImageTagCreate.md)|  | 

### Return type

[**ImageTag**](ImageTag.md)

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
> delete(image_id, image_tag_id)

Delete image tag

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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 

    try:
        await api_instance.delete(image_id, image_tag_id)
    except Exception as e:
        print("Exception when calling ImageTagsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 

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
> ImageTag get(image_id, image_tag_id)

Get image tag

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.image_tag import ImageTag
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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 

    try:
        api_response = await api_instance.get(image_id, image_tag_id)
        print("The response of ImageTagsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 

### Return type

[**ImageTag**](ImageTag.md)

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
> HistoricLogs get_log_history(image_id, image_tag_id, pod_name=pod_name, cluster=cluster, first_key=first_key, last_key=last_key)

Get image tag historical logs

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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 
    pod_name = 'pod_name_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)
    first_key = 'first_key_example' # str |  (optional)
    last_key = 'last_key_example' # str |  (optional)

    try:
        api_response = await api_instance.get_log_history(image_id, image_tag_id, pod_name=pod_name, cluster=cluster, first_key=first_key, last_key=last_key)
        print("The response of ImageTagsApi->get_log_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->get_log_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 
 **pod_name** | **str**|  | [optional] 
 **cluster** | **str**|  | [optional] 
 **first_key** | **str**|  | [optional] 
 **last_key** | **str**|  | [optional] 

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

# **get_status_history**
> ResourceHistory get_status_history(image_id, image_tag_id)

Get image tag status history

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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 

    try:
        api_response = await api_instance.get_status_history(image_id, image_tag_id)
        print("The response of ImageTagsApi->get_status_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->get_status_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 

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

# **list**
> ImageTagList list(image_id, version=version, image_uri=image_uri, is_external=is_external, archived=archived, status=status, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List image tags

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.image_build_status import ImageBuildStatus
from saturn_api.models.image_tag_list import ImageTagList
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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    version = 'version_example' # str |  (optional)
    image_uri = 'image_uri_example' # str |  (optional)
    is_external = True # bool |  (optional)
    archived = True # bool |  (optional)
    status = saturn_api.ImageBuildStatus() # ImageBuildStatus |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(image_id, version=version, image_uri=image_uri, is_external=is_external, archived=archived, status=status, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ImageTagsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **version** | **str**|  | [optional] 
 **image_uri** | **str**|  | [optional] 
 **is_external** | **bool**|  | [optional] 
 **archived** | **bool**|  | [optional] 
 **status** | [**ImageBuildStatus**](.md)|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**ImageTagList**](ImageTagList.md)

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

# **stop**
> ImageTag stop(image_id, image_tag_id)

Stop image tag build

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.image_tag import ImageTag
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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 

    try:
        api_response = await api_instance.stop(image_id, image_tag_id)
        print("The response of ImageTagsApi->stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 

### Return type

[**ImageTag**](ImageTag.md)

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
> ImageTag update(image_id, image_tag_id, image_tag_update)

Update image tag

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.image_tag import ImageTag
from saturn_api.models.image_tag_update import ImageTagUpdate
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
    api_instance = saturn_api.ImageTagsApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 
    image_tag_update = saturn_api.ImageTagUpdate() # ImageTagUpdate | 

    try:
        api_response = await api_instance.update(image_id, image_tag_id, image_tag_update)
        print("The response of ImageTagsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImageTagsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 
 **image_tag_update** | [**ImageTagUpdate**](ImageTagUpdate.md)|  | 

### Return type

[**ImageTag**](ImageTag.md)

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

