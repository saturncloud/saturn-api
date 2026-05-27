# saturn_api.DatasetsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DatasetsApi.md#create) | **POST** /api/orgs/{org_id}/token-factory/datasets | Create dataset
[**delete**](DatasetsApi.md#delete) | **DELETE** /api/orgs/{org_id}/token-factory/datasets/{dataset_id} | Delete dataset
[**get**](DatasetsApi.md#get) | **GET** /api/orgs/{org_id}/token-factory/datasets/{dataset_id} | Get dataset
[**list**](DatasetsApi.md#list) | **GET** /api/orgs/{org_id}/token-factory/datasets | List datasets
[**seal**](DatasetsApi.md#seal) | **POST** /api/orgs/{org_id}/token-factory/datasets/{dataset_id}/seal | Seal dataset


# **create**
> Dataset create(org_id, dataset_create)

Create dataset

Create a new dataset.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dataset import Dataset
from saturn_api.models.dataset_create import DatasetCreate
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
    api_instance = saturn_api.DatasetsApi(api_client)
    org_id = 'org_id_example' # str | 
    dataset_create = saturn_api.DatasetCreate() # DatasetCreate | 

    try:
        # Create dataset
        api_response = await api_instance.create(org_id, dataset_create)
        print("The response of DatasetsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DatasetsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **dataset_create** | [**DatasetCreate**](DatasetCreate.md)|  | 

### Return type

[**Dataset**](Dataset.md)

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
> delete(org_id, dataset_id)

Delete dataset

Delete a dataset.

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
    api_instance = saturn_api.DatasetsApi(api_client)
    org_id = 'org_id_example' # str | 
    dataset_id = 'dataset_id_example' # str | 

    try:
        # Delete dataset
        await api_instance.delete(org_id, dataset_id)
    except Exception as e:
        print("Exception when calling DatasetsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **dataset_id** | **str**|  | 

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
> Dataset get(org_id, dataset_id)

Get dataset

Get a dataset.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dataset import Dataset
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
    api_instance = saturn_api.DatasetsApi(api_client)
    org_id = 'org_id_example' # str | 
    dataset_id = 'dataset_id_example' # str | 

    try:
        # Get dataset
        api_response = await api_instance.get(org_id, dataset_id)
        print("The response of DatasetsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DatasetsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **dataset_id** | **str**|  | 

### Return type

[**Dataset**](Dataset.md)

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
> DatasetList list(org_id, status=status, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List datasets

Paginated list of datasets.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.artifact_status import ArtifactStatus
from saturn_api.models.dataset_list import DatasetList
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
    api_instance = saturn_api.DatasetsApi(api_client)
    org_id = 'org_id_example' # str | 
    status = saturn_api.ArtifactStatus() # ArtifactStatus | Filter datasets by status. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List datasets
        api_response = await api_instance.list(org_id, status=status, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DatasetsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DatasetsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **status** | [**ArtifactStatus**](.md)| Filter datasets by status. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**DatasetList**](DatasetList.md)

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

# **seal**
> Dataset seal(org_id, dataset_id)

Seal dataset

Transition a dataset from `assembling` to `ready`, making it immutable.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.dataset import Dataset
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
    api_instance = saturn_api.DatasetsApi(api_client)
    org_id = 'org_id_example' # str | 
    dataset_id = 'dataset_id_example' # str | 

    try:
        # Seal dataset
        api_response = await api_instance.seal(org_id, dataset_id)
        print("The response of DatasetsApi->seal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DatasetsApi->seal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **dataset_id** | **str**|  | 

### Return type

[**Dataset**](Dataset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sealed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

