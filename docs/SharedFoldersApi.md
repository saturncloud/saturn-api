# saturn_api.SharedFoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SharedFoldersApi.md#create) | **POST** /api/shared_folders | Create shared folder
[**delete**](SharedFoldersApi.md#delete) | **DELETE** /api/shared_folders/{shared_folder_id} | Delete shared folder
[**get**](SharedFoldersApi.md#get) | **GET** /api/shared_folders/{shared_folder_id} | Get shared folder
[**list**](SharedFoldersApi.md#list) | **GET** /api/shared_folders | List shared folders
[**update**](SharedFoldersApi.md#update) | **PATCH** /api/shared_folders/{shared_folder_id} | Update shared folder


# **create**
> SharedFolder create(shared_folder_create)

Create shared folder

Create a new shared folder.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
from saturn_api.models.shared_folder_create import SharedFolderCreate
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_create = saturn_api.SharedFolderCreate() # SharedFolderCreate | 

    try:
        # Create shared folder
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

Delete a shared folder.

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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 

    try:
        # Delete shared folder
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

Get a shared folder.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 

    try:
        # Get shared folder
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

Paginated list of shared folders.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_access_level import SharedFolderAccessLevel
from saturn_api.models.shared_folder_list import SharedFolderList
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    name = 'name_example' # str | Substring matched search string on shared folder name. (optional)
    access = saturn_api.SharedFolderAccessLevel() # SharedFolderAccessLevel | Filter shared folders by access level. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List shared folders
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, access=access, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SharedFoldersApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFoldersApi->list: %s\n" % e)
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
 **name** | **str**| Substring matched search string on shared folder name. | [optional] 
 **access** | [**SharedFolderAccessLevel**](.md)| Filter shared folders by access level. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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

Update a shared folder.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder import SharedFolder
from saturn_api.models.shared_folder_update import SharedFolderUpdate
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
    api_instance = saturn_api.SharedFoldersApi(api_client)
    shared_folder_id = 'shared_folder_id_example' # str | 
    shared_folder_update = saturn_api.SharedFolderUpdate() # SharedFolderUpdate | 

    try:
        # Update shared folder
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

