# saturn_api.OrgsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept_invitation**](OrgsApi.md#accept_invitation) | **POST** /api/orgs/invitation/{token}/accept | Accept org invitation
[**create**](OrgsApi.md#create) | **POST** /api/orgs | Create org
[**create_invitation**](OrgsApi.md#create_invitation) | **POST** /api/orgs/{org_id}/invitations | Create org invitation
[**create_member**](OrgsApi.md#create_member) | **POST** /api/orgs/{org_id}/members | Create org member
[**decline_invitation**](OrgsApi.md#decline_invitation) | **DELETE** /api/orgs/invitation/{token}/decline | Decline org invitation
[**delete**](OrgsApi.md#delete) | **DELETE** /api/orgs/{org_id} | Delete org
[**delete_invitation**](OrgsApi.md#delete_invitation) | **DELETE** /api/orgs/{org_id}/invitations/{invitation_id} | Delete org invitation
[**delete_member**](OrgsApi.md#delete_member) | **DELETE** /api/orgs/{org_id}/members/{user_id} | Delete org member
[**get**](OrgsApi.md#get) | **GET** /api/orgs/{org_id} | Get org
[**get_aggregated_usage**](OrgsApi.md#get_aggregated_usage) | **GET** /api/orgs/{org_id}/usage/aggregated | Get org usage
[**get_daily_usage**](OrgsApi.md#get_daily_usage) | **GET** /api/orgs/{org_id}/usage/daily | Get org daily usage
[**get_daily_user_usage**](OrgsApi.md#get_daily_user_usage) | **GET** /api/orgs/{org_id}/members/{user_id}/usage/daily | Get org member daily usage
[**get_invitation**](OrgsApi.md#get_invitation) | **GET** /api/orgs/{org_id}/invitations/{invitation_id} | Get org invitation
[**get_member**](OrgsApi.md#get_member) | **GET** /api/orgs/{org_id}/members/{user_id} | Get org member
[**get_owner_usage**](OrgsApi.md#get_owner_usage) | **GET** /api/orgs/{org_id}/usage/owners | Get org owner usage
[**get_usage_limits**](OrgsApi.md#get_usage_limits) | **GET** /api/orgs/{org_id}/limits | Get org usage limits
[**list**](OrgsApi.md#list) | **GET** /api/orgs | List orgs
[**list_invitations**](OrgsApi.md#list_invitations) | **GET** /api/orgs/{org_id}/invitations | List org invitations
[**list_owners**](OrgsApi.md#list_owners) | **GET** /api/orgs/{org_id}/owners | List org owners
[**update**](OrgsApi.md#update) | **PATCH** /api/orgs/{org_id} | Update org
[**update_invitation**](OrgsApi.md#update_invitation) | **PATCH** /api/orgs/{org_id}/invitations/{invitation_id} | Update org invitation
[**update_member**](OrgsApi.md#update_member) | **PATCH** /api/orgs/{org_id}/members/{user_id} | Update org member


# **accept_invitation**
> OwnerDetailed accept_invitation(token)

Accept org invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.owner_detailed import OwnerDetailed
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
    api_instance = saturn_api.OrgsApi(api_client)
    token = 'token_example' # str | 

    try:
        # Accept org invitation
        api_response = await api_instance.accept_invitation(token)
        print("The response of OrgsApi->accept_invitation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->accept_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **str**|  | 

### Return type

[**OwnerDetailed**](OwnerDetailed.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> Org create(org_create)

Create org

Create a new org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org import Org
from saturn_api.models.org_create import OrgCreate
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_create = saturn_api.OrgCreate() # OrgCreate | 

    try:
        # Create org
        api_response = await api_instance.create(org_create)
        print("The response of OrgsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_create** | [**OrgCreate**](OrgCreate.md)|  | 

### Return type

[**Org**](Org.md)

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

# **create_invitation**
> OrgInvitation create_invitation(org_id, org_invitation_create)

Create org invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_invitation import OrgInvitation
from saturn_api.models.org_invitation_create import OrgInvitationCreate
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    org_invitation_create = saturn_api.OrgInvitationCreate() # OrgInvitationCreate | 

    try:
        # Create org invitation
        api_response = await api_instance.create_invitation(org_id, org_invitation_create)
        print("The response of OrgsApi->create_invitation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->create_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **org_invitation_create** | [**OrgInvitationCreate**](OrgInvitationCreate.md)|  | 

### Return type

[**OrgInvitation**](OrgInvitation.md)

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
> OrgMemberDetailed create_member(org_id, org_member_create)

Create org member

Add a user to the org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_member_create import OrgMemberCreate
from saturn_api.models.org_member_detailed import OrgMemberDetailed
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    org_member_create = saturn_api.OrgMemberCreate() # OrgMemberCreate | 

    try:
        # Create org member
        api_response = await api_instance.create_member(org_id, org_member_create)
        print("The response of OrgsApi->create_member:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->create_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **org_member_create** | [**OrgMemberCreate**](OrgMemberCreate.md)|  | 

### Return type

[**OrgMemberDetailed**](OrgMemberDetailed.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **decline_invitation**
> decline_invitation(token)

Decline org invitation

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
    api_instance = saturn_api.OrgsApi(api_client)
    token = 'token_example' # str | 

    try:
        # Decline org invitation
        await api_instance.decline_invitation(token)
    except Exception as e:
        print("Exception when calling OrgsApi->decline_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **str**|  | 

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
**204** | Declined |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(org_id)

Delete org

Delete an org.

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Delete org
        await api_instance.delete(org_id)
    except Exception as e:
        print("Exception when calling OrgsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

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

# **delete_invitation**
> delete_invitation(org_id, invitation_id)

Delete org invitation

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    invitation_id = 'invitation_id_example' # str | 

    try:
        # Delete org invitation
        await api_instance.delete_invitation(org_id, invitation_id)
    except Exception as e:
        print("Exception when calling OrgsApi->delete_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **invitation_id** | **str**|  | 

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
> delete_member(org_id, user_id)

Delete org member

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Delete org member
        await api_instance.delete_member(org_id, user_id)
    except Exception as e:
        print("Exception when calling OrgsApi->delete_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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
> Org get(org_id)

Get org

Get an org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org import Org
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get org
        api_response = await api_instance.get(org_id)
        print("The response of OrgsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**Org**](Org.md)

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

# **get_aggregated_usage**
> AggregatedUsage get_aggregated_usage(org_id, start=start, end=end)

Get org usage

Get total aggregated usage for the org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.aggregated_usage import AggregatedUsage
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get org usage
        api_response = await api_instance.get_aggregated_usage(org_id, start=start, end=end)
        print("The response of OrgsApi->get_aggregated_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_aggregated_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 

### Return type

[**AggregatedUsage**](AggregatedUsage.md)

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
> DailyUsageList get_daily_usage(org_id, start=start, end=end)

Get org daily usage

Get usage for the org aggregated by day.

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get org daily usage
        api_response = await api_instance.get_daily_usage(org_id, start=start, end=end)
        print("The response of OrgsApi->get_daily_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_daily_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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

# **get_daily_user_usage**
> DailyUsageList get_daily_user_usage(org_id, user_id, start=start, end=end)

Get org member daily usage

Get usage for a user in the org aggregated by day.

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get org member daily usage
        api_response = await api_instance.get_daily_user_usage(org_id, user_id, start=start, end=end)
        print("The response of OrgsApi->get_daily_user_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_daily_user_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 
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

# **get_invitation**
> OrgInvitation get_invitation(org_id, invitation_id)

Get org invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_invitation import OrgInvitation
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    invitation_id = 'invitation_id_example' # str | 

    try:
        # Get org invitation
        api_response = await api_instance.get_invitation(org_id, invitation_id)
        print("The response of OrgsApi->get_invitation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **invitation_id** | **str**|  | 

### Return type

[**OrgInvitation**](OrgInvitation.md)

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

# **get_member**
> OrgMemberDetailed get_member(org_id, user_id)

Get org member

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_member_detailed import OrgMemberDetailed
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Get org member
        api_response = await api_instance.get_member(org_id, user_id)
        print("The response of OrgsApi->get_member:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**OrgMemberDetailed**](OrgMemberDetailed.md)

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

# **get_owner_usage**
> OwnerUsageList get_owner_usage(org_id, start=start, end=end)

Get org owner usage

Get aggregated usage for users and groups in the org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.owner_usage_list import OwnerUsageList
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Get org owner usage
        api_response = await api_instance.get_owner_usage(org_id, start=start, end=end)
        print("The response of OrgsApi->get_owner_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_owner_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 

### Return type

[**OwnerUsageList**](OwnerUsageList.md)

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

# **get_usage_limits**
> UsageLimits get_usage_limits(org_id)

Get org usage limits

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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get org usage limits
        api_response = await api_instance.get_usage_limits(org_id)
        print("The response of OrgsApi->get_usage_limits:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->get_usage_limits: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

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

# **list**
> OrgList list(name=name, all_orgs=all_orgs, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List orgs

Paginated list of orgs.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_list import OrgList
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
    api_instance = saturn_api.OrgsApi(api_client)
    name = 'name_example' # str |  (optional)
    all_orgs = True # bool |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List orgs
        api_response = await api_instance.list(name=name, all_orgs=all_orgs, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of OrgsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | [optional] 
 **all_orgs** | **bool**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**OrgList**](OrgList.md)

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

# **list_invitations**
> OrgInvitationList list_invitations(org_id, status=status, email=email, invitor_id=invitor_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List org invitations

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.invitation_status import InvitationStatus
from saturn_api.models.org_invitation_list import OrgInvitationList
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    status = saturn_api.InvitationStatus() # InvitationStatus |  (optional)
    email = 'email_example' # str |  (optional)
    invitor_id = 'invitor_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List org invitations
        api_response = await api_instance.list_invitations(org_id, status=status, email=email, invitor_id=invitor_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of OrgsApi->list_invitations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->list_invitations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **status** | [**InvitationStatus**](.md)|  | [optional] 
 **email** | **str**|  | [optional] 
 **invitor_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**OrgInvitationList**](OrgInvitationList.md)

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
> OrgsListOwners200Response list_owners(org_id, name=name, identity_type=identity_type, all_users=all_users, all_groups=all_groups, details=details, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List org owners

List users and groups that are in the org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.identity_type import IdentityType
from saturn_api.models.orgs_list_owners200_response import OrgsListOwners200Response
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    name = 'name_example' # str |  (optional)
    identity_type = saturn_api.IdentityType() # IdentityType |  (optional)
    all_users = False # bool |  (optional) (default to False)
    all_groups = False # bool |  (optional) (default to False)
    details = False # bool |  (optional) (default to False)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List org owners
        api_response = await api_instance.list_owners(org_id, name=name, identity_type=identity_type, all_users=all_users, all_groups=all_groups, details=details, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of OrgsApi->list_owners:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->list_owners: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **name** | **str**|  | [optional] 
 **identity_type** | [**IdentityType**](.md)|  | [optional] 
 **all_users** | **bool**|  | [optional] [default to False]
 **all_groups** | **bool**|  | [optional] [default to False]
 **details** | **bool**|  | [optional] [default to False]
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**OrgsListOwners200Response**](OrgsListOwners200Response.md)

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
> Org update(org_id, org_update)

Update org

Update an org.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org import Org
from saturn_api.models.org_update import OrgUpdate
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    org_update = saturn_api.OrgUpdate() # OrgUpdate | 

    try:
        # Update org
        api_response = await api_instance.update(org_id, org_update)
        print("The response of OrgsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **org_update** | [**OrgUpdate**](OrgUpdate.md)|  | 

### Return type

[**Org**](Org.md)

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

# **update_invitation**
> OrgInvitation update_invitation(org_id, invitation_id, org_invitation_update)

Update org invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_invitation import OrgInvitation
from saturn_api.models.org_invitation_update import OrgInvitationUpdate
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    invitation_id = 'invitation_id_example' # str | 
    org_invitation_update = saturn_api.OrgInvitationUpdate() # OrgInvitationUpdate | 

    try:
        # Update org invitation
        api_response = await api_instance.update_invitation(org_id, invitation_id, org_invitation_update)
        print("The response of OrgsApi->update_invitation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->update_invitation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **invitation_id** | **str**|  | 
 **org_invitation_update** | [**OrgInvitationUpdate**](OrgInvitationUpdate.md)|  | 

### Return type

[**OrgInvitation**](OrgInvitation.md)

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

# **update_member**
> OrgMemberDetailed update_member(org_id, user_id, org_member_update)

Update org member

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.org_member_detailed import OrgMemberDetailed
from saturn_api.models.org_member_update import OrgMemberUpdate
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
    api_instance = saturn_api.OrgsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 
    org_member_update = saturn_api.OrgMemberUpdate() # OrgMemberUpdate | 

    try:
        # Update org member
        api_response = await api_instance.update_member(org_id, user_id, org_member_update)
        print("The response of OrgsApi->update_member:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrgsApi->update_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 
 **org_member_update** | [**OrgMemberUpdate**](OrgMemberUpdate.md)|  | 

### Return type

[**OrgMemberDetailed**](OrgMemberDetailed.md)

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

