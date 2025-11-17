# saturn_api.SharedFoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SharedFoldersApi.md#create) | **POST** /api/shared_folders | 
[**delete**](SharedFoldersApi.md#delete) | **DELETE** /api/shared_folders/{shared_folder_id} | 
[**get**](SharedFoldersApi.md#get) | **GET** /api/shared_folders/{shared_folder_id} | 
[**list**](SharedFoldersApi.md#list) | **GET** /api/shared_folders | 
[**update**](SharedFoldersApi.md#update) | **PATCH** /api/shared_folders/{shared_folder_id} | 


# **create**
> SharedFolder create(shared_folder_create)

Create shared folder

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
from saturn_api.models.shared_folder_create import SharedFolderCreate
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_create = saturn_api.SharedFolderCreate() # SharedFolderCreate | 

    try:
        api_response = await api_instance.create(shared_folder_create)
        print("The response of SharedFoldersApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_create** | [**SharedFolderCreate**](SharedFolderCreate.md)|  | 

### Return type

[**SharedFolder**](SharedFolder.md)

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
> delete(shared_folder_id)

Delete shared folder

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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 

    try:
        await api_instance.delete(shared_folder_id)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_id** | **str**|  | 

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
> SharedFolder get(shared_folder_id)

Get shared folder

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 

    try:
        api_response = await api_instance.get(shared_folder_id)
        print("The response of SharedFoldersApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_id** | **str**|  | 

### Return type

[**SharedFolder**](SharedFolder.md)

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
> SharedFolderList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, access=access, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List shared folders

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_access_level import SharedFolderAccessLevel
from saturn_api.models.shared_folder_list import SharedFolderList
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    access = saturn_api.SharedFolderAccessLevel() # SharedFolderAccessLevel |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, access=access, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SharedFoldersApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_name** | **str**|  | [optional] 
 **owner_id** | **str**|  | [optional] 
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **owner** | **str**|  | [optional] 
 **name** | **str**|  | [optional] 
 **access** | [**SharedFolderAccessLevel**](.md)|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**SharedFolderList**](SharedFolderList.md)

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
> SharedFolder update(shared_folder_id, shared_folder_update)

Update shared folder

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
from saturn_api.models.shared_folder_update import SharedFolderUpdate
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 
    shared_folder_update = saturn_api.SharedFolderUpdate() # SharedFolderUpdate | 

    try:
        api_response = await api_instance.update(shared_folder_id, shared_folder_update)
        print("The response of SharedFoldersApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_id** | **str**|  | 
 **shared_folder_update** | [**SharedFolderUpdate**](SharedFolderUpdate.md)|  | 

### Return type

[**SharedFolder**](SharedFolder.md)

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

