# saturn_api.CurrentUserApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](CurrentUserApi.md#delete) | **DELETE** /api/user | Delete current user
[**get**](CurrentUserApi.md#get) | **GET** /api/user | Get current user
[**get_aggregated_usage**](CurrentUserApi.md#get_aggregated_usage) | **GET** /api/user/usage/aggregated | Get aggregated usage
[**get_preferences**](CurrentUserApi.md#get_preferences) | **GET** /api/user/preferences | Get current user preferences
[**list_owners**](CurrentUserApi.md#list_owners) | **GET** /api/user/owners | List current user owners across orgs
[**list_owners_0**](CurrentUserApi.md#list_owners_0) | **GET** /api/users/{user_id}/owners | List user owners across orgs
[**update**](CurrentUserApi.md#update) | **PATCH** /api/user | Update current user
[**update_preferences**](CurrentUserApi.md#update_preferences) | **PATCH** /api/user/preferences | Update current user preferences


# **delete**
> delete()

Delete current user

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
    api_instance = saturn_api.CurrentUserApi(api_client)

    try:
        # Delete current user
        await api_instance.delete()
    except Exception as e:
        print("Exception when calling CurrentUserApi->delete: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
> UserDetailed get()

Get current user

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_detailed import UserDetailed
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
    api_instance = saturn_api.CurrentUserApi(api_client)

    try:
        # Get current user
        api_response = await api_instance.get()
        print("The response of CurrentUserApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**UserDetailed**](UserDetailed.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |
**204** | No authenticated user |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_aggregated_usage**
> UsageLimits get_aggregated_usage(start=start, end=end)

Get aggregated usage

Get total aggregated usage for the current user.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get aggregated usage
        api_response = await api_instance.get_aggregated_usage(start=start, end=end)
        print("The response of CurrentUserApi->get_aggregated_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->get_aggregated_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 

### Return type

[**UsageLimits**](UsageLimits.md)

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

# **get_preferences**
> UserPreferences get_preferences()

Get current user preferences

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_preferences import UserPreferences
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
    api_instance = saturn_api.CurrentUserApi(api_client)

    try:
        # Get current user preferences
        api_response = await api_instance.get_preferences()
        print("The response of CurrentUserApi->get_preferences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->get_preferences: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**UserPreferences**](UserPreferences.md)

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

# **list_owners**
> UserOwnerList list_owners(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List current user owners across orgs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_owner_list import UserOwnerList
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List current user owners across orgs
        api_response = await api_instance.list_owners(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of CurrentUserApi->list_owners:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->list_owners: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**UserOwnerList**](UserOwnerList.md)

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

# **list_owners_0**
> UserOwnerList list_owners_0(user_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List user owners across orgs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_owner_list import UserOwnerList
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    user_id = 'user_id_example' # str | 
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List user owners across orgs
        api_response = await api_instance.list_owners_0(user_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of CurrentUserApi->list_owners_0:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->list_owners_0: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**UserOwnerList**](UserOwnerList.md)

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
> UserDetailed update(user_update)

Update current user

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_detailed import UserDetailed
from saturn_api.models.user_update import UserUpdate
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    user_update = saturn_api.UserUpdate() # UserUpdate | 

    try:
        # Update current user
        api_response = await api_instance.update(user_update)
        print("The response of CurrentUserApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_update** | [**UserUpdate**](UserUpdate.md)|  | 

### Return type

[**UserDetailed**](UserDetailed.md)

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

# **update_preferences**
> UserPreferences update_preferences(user_preferences_update)

Update current user preferences

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_preferences import UserPreferences
from saturn_api.models.user_preferences_update import UserPreferencesUpdate
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    user_preferences_update = saturn_api.UserPreferencesUpdate() # UserPreferencesUpdate | 

    try:
        # Update current user preferences
        api_response = await api_instance.update_preferences(user_preferences_update)
        print("The response of CurrentUserApi->update_preferences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->update_preferences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_preferences_update** | [**UserPreferencesUpdate**](UserPreferencesUpdate.md)|  | 

### Return type

[**UserPreferences**](UserPreferences.md)

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

