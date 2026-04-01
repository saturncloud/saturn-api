# saturn_api.ApiTokensApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ApiTokensApi.md#create) | **POST** /api/tokens | Create api token
[**delete**](ApiTokensApi.md#delete) | **DELETE** /api/tokens/{api_token_id} | Delete api token
[**get**](ApiTokensApi.md#get) | **GET** /api/tokens/{api_token_id} | Get api token
[**list**](ApiTokensApi.md#list) | **GET** /api/tokens | List api tokens
[**update**](ApiTokensApi.md#update) | **PATCH** /api/tokens/{api_token_id} | Update api token


# **create**
> ApiToken create(api_token_create)

Create api token

Create a new api token.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.api_token import ApiToken
from saturn_api.models.api_token_create import ApiTokenCreate
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
    api_instance = saturn_api.ApiTokensApi(api_client)
    api_token_create = saturn_api.ApiTokenCreate() # ApiTokenCreate | 

    try:
        # Create api token
        api_response = await api_instance.create(api_token_create)
        print("The response of ApiTokensApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiTokensApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_token_create** | [**ApiTokenCreate**](ApiTokenCreate.md)|  | 

### Return type

[**ApiToken**](ApiToken.md)

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
> delete(api_token_id)

Delete api token

Delete an api token.

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
    api_instance = saturn_api.ApiTokensApi(api_client)
    api_token_id = 'api_token_id_example' # str | 

    try:
        # Delete api token
        await api_instance.delete(api_token_id)
    except Exception as e:
        print("Exception when calling ApiTokensApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_token_id** | **str**|  | 

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
> ApiTokenInfo get(api_token_id)

Get api token

Get an api token.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.api_token_info import ApiTokenInfo
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
    api_instance = saturn_api.ApiTokensApi(api_client)
    api_token_id = 'api_token_id_example' # str | 

    try:
        # Get api token
        api_response = await api_instance.get(api_token_id)
        print("The response of ApiTokensApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiTokensApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_token_id** | **str**|  | 

### Return type

[**ApiTokenInfo**](ApiTokenInfo.md)

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
> ApiTokenList list(user_id=user_id, group_id=group_id, identity=identity, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List api tokens

Paginated list of api tokens.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.api_token_list import ApiTokenList
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
    api_instance = saturn_api.ApiTokensApi(api_client)
    user_id = 'user_id_example' # str | Identity reference by user ID (optional)
    group_id = 'group_id_example' # str | Identity reference by group ID (optional)
    identity = 'identity_example' # str | Identity reference by name (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List api tokens
        api_response = await api_instance.list(user_id=user_id, group_id=group_id, identity=identity, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ApiTokensApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiTokensApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**| Identity reference by user ID | [optional] 
 **group_id** | **str**| Identity reference by group ID | [optional] 
 **identity** | **str**| Identity reference by name | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**ApiTokenList**](ApiTokenList.md)

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
> ApiTokenInfo update(api_token_id, api_token_update)

Update api token

Update an api token.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.api_token_info import ApiTokenInfo
from saturn_api.models.api_token_update import ApiTokenUpdate
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
    api_instance = saturn_api.ApiTokensApi(api_client)
    api_token_id = 'api_token_id_example' # str | 
    api_token_update = saturn_api.ApiTokenUpdate() # ApiTokenUpdate | 

    try:
        # Update api token
        api_response = await api_instance.update(api_token_id, api_token_update)
        print("The response of ApiTokensApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiTokensApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_token_id** | **str**|  | 
 **api_token_update** | [**ApiTokenUpdate**](ApiTokenUpdate.md)|  | 

### Return type

[**ApiTokenInfo**](ApiTokenInfo.md)

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

