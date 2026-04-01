# saturn_api.GroupsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](GroupsApi.md#create) | **POST** /api/groups | Create group
[**create_member**](GroupsApi.md#create_member) | **POST** /api/groups/{group_id}/members | Create group member
[**delete**](GroupsApi.md#delete) | **DELETE** /api/groups/{group_id} | Delete group
[**delete_member**](GroupsApi.md#delete_member) | **DELETE** /api/groups/{group_id}/members | Delete group member
[**get**](GroupsApi.md#get) | **GET** /api/groups/{group_id} | Get group
[**get_daily_usage**](GroupsApi.md#get_daily_usage) | **GET** /api/groups/{group_id}/usage/daily | Get group daily usage
[**list**](GroupsApi.md#list) | **GET** /api/groups | List groups
[**list_members**](GroupsApi.md#list_members) | **GET** /api/groups/{group_id}/members | List group members
[**update**](GroupsApi.md#update) | **PATCH** /api/groups/{group_id} | Update group


# **create**
> Group create(group_create)

Create group

Create a new group.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group import Group
from saturn_api.models.group_create import GroupCreate
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_create = saturn_api.GroupCreate() # GroupCreate | 

    try:
        # Create group
        api_response = await api_instance.create(group_create)
        print("The response of GroupsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_create** | [**GroupCreate**](GroupCreate.md)|  | 

### Return type

[**Group**](Group.md)

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

# **create_member**
> GroupMember create_member(group_id, group_member_create)

Create group member

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group_member import GroupMember
from saturn_api.models.group_member_create import GroupMemberCreate
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 
    group_member_create = saturn_api.GroupMemberCreate() # GroupMemberCreate | 

    try:
        # Create group member
        api_response = await api_instance.create_member(group_id, group_member_create)
        print("The response of GroupsApi->create_member:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->create_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 
 **group_member_create** | [**GroupMemberCreate**](GroupMemberCreate.md)|  | 

### Return type

[**GroupMember**](GroupMember.md)

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
> delete(group_id)

Delete group

Delete a group.

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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 

    try:
        # Delete group
        await api_instance.delete(group_id)
    except Exception as e:
        print("Exception when calling GroupsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 

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

# **delete_member**
> delete_member(group_id, user_id)

Delete group member

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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 
    user_id = 'user_id_example' # str | User ID to remove from the group.

    try:
        # Delete group member
        await api_instance.delete_member(group_id, user_id)
    except Exception as e:
        print("Exception when calling GroupsApi->delete_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 
 **user_id** | **str**| User ID to remove from the group. | 

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
> Group get(group_id)

Get group

Get a group.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group import Group
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 

    try:
        # Get group
        api_response = await api_instance.get(group_id)
        print("The response of GroupsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 

### Return type

[**Group**](Group.md)

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

# **get_daily_usage**
> DailyUsageList get_daily_usage(group_id, start=start, end=end)

Get group daily usage

Get usage for the group aggregated by day.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.daily_usage_list import DailyUsageList
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get group daily usage
        api_response = await api_instance.get_daily_usage(group_id, start=start, end=end)
        print("The response of GroupsApi->get_daily_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->get_daily_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 

### Return type

[**DailyUsageList**](DailyUsageList.md)

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
> GroupList list(name=name, org_id=org_id, all_groups=all_groups, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List groups

Paginated list of groups.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group_list import GroupList
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
    api_instance = saturn_api.GroupsApi(api_client)
    name = 'name_example' # str | Prefix matched search string on group name. (optional)
    org_id = 'org_id_example' # str | Org ID to query for groups. Defaults to the default org for the authenticated user. (optional)
    all_groups = False # bool | Search for all groups in the org, instead of only groups the authenticated user is a member of. (optional) (default to False)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List groups
        api_response = await api_instance.list(name=name, org_id=org_id, all_groups=all_groups, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of GroupsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Prefix matched search string on group name. | [optional] 
 **org_id** | **str**| Org ID to query for groups. Defaults to the default org for the authenticated user. | [optional] 
 **all_groups** | **bool**| Search for all groups in the org, instead of only groups the authenticated user is a member of. | [optional] [default to False]
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**GroupList**](GroupList.md)

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

# **list_members**
> GroupMemberList list_members(group_id, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List group members

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group_member_list import GroupMemberList
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 
    name = 'name_example' # str | Prefix matched search string on group member username. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List group members
        api_response = await api_instance.list_members(group_id, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of GroupsApi->list_members:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->list_members: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 
 **name** | **str**| Prefix matched search string on group member username. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**GroupMemberList**](GroupMemberList.md)

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
> Group update(group_id, group_update)

Update group

Update a group.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.group import Group
from saturn_api.models.group_update import GroupUpdate
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
    api_instance = saturn_api.GroupsApi(api_client)
    group_id = 'group_id_example' # str | 
    group_update = saturn_api.GroupUpdate() # GroupUpdate | 

    try:
        # Update group
        api_response = await api_instance.update(group_id, group_update)
        print("The response of GroupsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **str**|  | 
 **group_update** | [**GroupUpdate**](GroupUpdate.md)|  | 

### Return type

[**Group**](Group.md)

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

