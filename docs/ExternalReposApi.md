# saturn_api.ExternalReposApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalReposApi.md#create) | **POST** /api/external_repos | Create external repo
[**delete**](ExternalReposApi.md#delete) | **DELETE** /api/external_repos/{external_repo_id} | Delete external repo
[**get**](ExternalReposApi.md#get) | **GET** /api/external_repos/{external_repo_id} | Get external repo
[**list**](ExternalReposApi.md#list) | **GET** /api/external_repos | List external repos
[**update**](ExternalReposApi.md#update) | **PATCH** /api/external_repos/{external_repo_id} | Update external repo


# **create**
> ExternalRepo create(external_repo_create)

Create external repo

Create a new external repo.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo import ExternalRepo
from saturn_api.models.external_repo_create import ExternalRepoCreate
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
    api_instance = saturn_api.ExternalReposApi(api_client)
    external_repo_create = saturn_api.ExternalRepoCreate() # ExternalRepoCreate | 

    try:
        # Create external repo
        api_response = await api_instance.create(external_repo_create)
        print("The response of ExternalReposApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalReposApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_create** | [**ExternalRepoCreate**](ExternalRepoCreate.md)|  | 

### Return type

[**ExternalRepo**](ExternalRepo.md)

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
> delete(external_repo_id)

Delete external repo

Delete an external repo.

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
    api_instance = saturn_api.ExternalReposApi(api_client)
    external_repo_id = 'external_repo_id_example' # str | 

    try:
        # Delete external repo
        await api_instance.delete(external_repo_id)
    except Exception as e:
        print("Exception when calling ExternalReposApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_id** | **str**|  | 

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
> ExternalRepo get(external_repo_id)

Get external repo

Get an external repo.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo import ExternalRepo
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
    api_instance = saturn_api.ExternalReposApi(api_client)
    external_repo_id = 'external_repo_id_example' # str | 

    try:
        # Get external repo
        api_response = await api_instance.get(external_repo_id)
        print("The response of ExternalReposApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalReposApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_id** | **str**|  | 

### Return type

[**ExternalRepo**](ExternalRepo.md)

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
> ExternalRepoList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, remote_url=remote_url, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List external repos

Paginated list of external repos.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo_list import ExternalRepoList
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
    api_instance = saturn_api.ExternalReposApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    remote_url = 'remote_url_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List external repos
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, remote_url=remote_url, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ExternalReposApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalReposApi->list: %s\n" % e)
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
 **remote_url** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**ExternalRepoList**](ExternalRepoList.md)

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
> ExternalRepo update(external_repo_id, external_repo_update)

Update external repo

Update an external repo.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo import ExternalRepo
from saturn_api.models.external_repo_update import ExternalRepoUpdate
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
    api_instance = saturn_api.ExternalReposApi(api_client)
    external_repo_id = 'external_repo_id_example' # str | 
    external_repo_update = saturn_api.ExternalRepoUpdate() # ExternalRepoUpdate | 

    try:
        # Update external repo
        api_response = await api_instance.update(external_repo_id, external_repo_update)
        print("The response of ExternalReposApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalReposApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_id** | **str**|  | 
 **external_repo_update** | [**ExternalRepoUpdate**](ExternalRepoUpdate.md)|  | 

### Return type

[**ExternalRepo**](ExternalRepo.md)

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

