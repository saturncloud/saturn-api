# saturn_api.CurrentUserApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CurrentUserApi.md#get) | **GET** /api/user | Get current user
[**get_aggregated_usage**](CurrentUserApi.md#get_aggregated_usage) | **GET** /api/user/usage/aggregated | Get aggregated usage
[**get_preferences**](CurrentUserApi.md#get_preferences) | **GET** /api/user/preferences | Get current user preferences
[**list_org_memberships**](CurrentUserApi.md#list_org_memberships) | **GET** /api/user/org_memberships | List current user org memberships
[**update**](CurrentUserApi.md#update) | **PATCH** /api/user | Update current user
[**update_preferences**](CurrentUserApi.md#update_preferences) | **PATCH** /api/user/preferences | Update current user preferences


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

# **list_org_memberships**
> OrgMembershipList list_org_memberships(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List current user org memberships

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_membership_list import OrgMembershipList
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
    api_instance = saturn_api.CurrentUserApi(api_client)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List current user org memberships
        api_response = await api_instance.list_org_memberships(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of CurrentUserApi->list_org_memberships:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CurrentUserApi->list_org_memberships: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**OrgMembershipList**](OrgMembershipList.md)

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

