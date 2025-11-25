# saturn_api.UsersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsersApi.md#create) | **POST** /api/users | Create user
[**delete**](UsersApi.md#delete) | **DELETE** /api/users/{user_id} | Delete user
[**get**](UsersApi.md#get) | **GET** /api/users/{user_id} | Get user
[**list**](UsersApi.md#list) | **GET** /api/users | List users
[**update**](UsersApi.md#update) | **PATCH** /api/users/{user_id} | Update user


# **create**
> UserDetailed create(user_admin_create)

Create user

Create a new user.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.user_admin_create import UserAdminCreate
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
    api_instance = saturn_api.UsersApi(api_client)
    user_admin_create = saturn_api.UserAdminCreate() # UserAdminCreate | 

    try:
        # Create user
        api_response = await api_instance.create(user_admin_create)
        print("The response of UsersApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_admin_create** | [**UserAdminCreate**](UserAdminCreate.md)|  | 

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
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(user_id)

Delete user

Delete an user.

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
    api_instance = saturn_api.UsersApi(api_client)
    user_id = 'user_id_example' # str | 

    try:
        # Delete user
        await api_instance.delete(user_id)
    except Exception as e:
        print("Exception when calling UsersApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | 

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
> UsersGet200Response get(user_id, details=details)

Get user

Get an user.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.users_get200_response import UsersGet200Response
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
    api_instance = saturn_api.UsersApi(api_client)
    user_id = 'user_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        # Get user
        api_response = await api_instance.get(user_id, details=details)
        print("The response of UsersApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

### Return type

[**UsersGet200Response**](UsersGet200Response.md)

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
> UsersList200Response list(username=username, details=details, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List users

Paginated list of users.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.users_list200_response import UsersList200Response
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
    api_instance = saturn_api.UsersApi(api_client)
    username = 'username_example' # str |  (optional)
    details = False # bool |  (optional) (default to False)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List users
        api_response = await api_instance.list(username=username, details=details, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of UsersApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | [optional] 
 **details** | **bool**|  | [optional] [default to False]
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**UsersList200Response**](UsersList200Response.md)

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
> UserDetailed update(user_id, user_update)

Update user

Update an user.

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
    api_instance = saturn_api.UsersApi(api_client)
    user_id = 'user_id_example' # str | 
    user_update = saturn_api.UserUpdate() # UserUpdate | 

    try:
        # Update user
        api_response = await api_instance.update(user_id, user_update)
        print("The response of UsersApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | 
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

