# saturn_api.ArtifactsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ArtifactsApi.md#create) | **POST** /api/orgs/{org_id}/artifacts | Create artifact
[**delete**](ArtifactsApi.md#delete) | **DELETE** /api/orgs/{org_id}/artifacts/{artifact_id} | Delete artifact
[**get**](ArtifactsApi.md#get) | **GET** /api/orgs/{org_id}/artifacts/{artifact_id} | Get artifact
[**list**](ArtifactsApi.md#list) | **GET** /api/orgs/{org_id}/artifacts | List artifacts
[**update**](ArtifactsApi.md#update) | **PATCH** /api/orgs/{org_id}/artifacts/{artifact_id} | Update artifact


# **create**
> Artifact create(org_id, artifact_create)

Create artifact

Create a new artifact.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.artifact import Artifact
from saturn_api.models.artifact_create import ArtifactCreate
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
    api_instance = saturn_api.ArtifactsApi(api_client)
    org_id = 'org_id_example' # str | 
    artifact_create = saturn_api.ArtifactCreate() # ArtifactCreate | 

    try:
        # Create artifact
        api_response = await api_instance.create(org_id, artifact_create)
        print("The response of ArtifactsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **artifact_create** | [**ArtifactCreate**](ArtifactCreate.md)|  | 

### Return type

[**Artifact**](Artifact.md)

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
> delete(org_id, artifact_id)

Delete artifact

Delete an artifact.

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
    api_instance = saturn_api.ArtifactsApi(api_client)
    org_id = 'org_id_example' # str | 
    artifact_id = 'artifact_id_example' # str | 

    try:
        # Delete artifact
        await api_instance.delete(org_id, artifact_id)
    except Exception as e:
        print("Exception when calling ArtifactsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **artifact_id** | **str**|  | 

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
> Artifact get(org_id, artifact_id)

Get artifact

Get an artifact.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.artifact import Artifact
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
    api_instance = saturn_api.ArtifactsApi(api_client)
    org_id = 'org_id_example' # str | 
    artifact_id = 'artifact_id_example' # str | 

    try:
        # Get artifact
        api_response = await api_instance.get(org_id, artifact_id)
        print("The response of ArtifactsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **artifact_id** | **str**|  | 

### Return type

[**Artifact**](Artifact.md)

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
> ArtifactList list(org_id, kind=kind, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List artifacts

Paginated list of artifacts.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.artifact_kind import ArtifactKind
from saturn_api.models.artifact_list import ArtifactList
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
    api_instance = saturn_api.ArtifactsApi(api_client)
    org_id = 'org_id_example' # str | 
    kind = saturn_api.ArtifactKind() # ArtifactKind | Filter artifacts by kind. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List artifacts
        api_response = await api_instance.list(org_id, kind=kind, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ArtifactsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **kind** | [**ArtifactKind**](.md)| Filter artifacts by kind. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**ArtifactList**](ArtifactList.md)

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

# **update**
> Artifact update(org_id, artifact_id, artifact_update)

Update artifact

Update an artifact.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.artifact import Artifact
from saturn_api.models.artifact_update import ArtifactUpdate
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
    api_instance = saturn_api.ArtifactsApi(api_client)
    org_id = 'org_id_example' # str | 
    artifact_id = 'artifact_id_example' # str | 
    artifact_update = saturn_api.ArtifactUpdate() # ArtifactUpdate | 

    try:
        # Update artifact
        api_response = await api_instance.update(org_id, artifact_id, artifact_update)
        print("The response of ArtifactsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **artifact_id** | **str**|  | 
 **artifact_update** | [**ArtifactUpdate**](ArtifactUpdate.md)|  | 

### Return type

[**Artifact**](Artifact.md)

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

