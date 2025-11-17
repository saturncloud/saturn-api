# saturn_api.InvitationsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](InvitationsApi.md#create) | **POST** /api/invitations | 
[**delete**](InvitationsApi.md#delete) | **DELETE** /api/invitations/{invitation_id} | 
[**get**](InvitationsApi.md#get) | **GET** /api/invitations/{invitation_id} | 
[**list**](InvitationsApi.md#list) | **GET** /api/invitations | 
[**update**](InvitationsApi.md#update) | **PATCH** /api/invitations/{invitation_id} | 


# **create**
> Invitation create(invitation_create)

Create invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.invitation import Invitation
from saturn_api.models.invitation_create import InvitationCreate
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
    api_instance = saturn_api.InvitationsApi(api_client)
    invitation_create = saturn_api.InvitationCreate() # InvitationCreate | 

    try:
        api_response = await api_instance.create(invitation_create)
        print("The response of InvitationsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvitationsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_create** | [**InvitationCreate**](InvitationCreate.md)|  | 

### Return type

[**Invitation**](Invitation.md)

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
> delete(invitation_id)

Delete invitation

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
    api_instance = saturn_api.InvitationsApi(api_client)
    invitation_id = 'invitation_id_example' # str | 

    try:
        await api_instance.delete(invitation_id)
    except Exception as e:
        print("Exception when calling InvitationsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **get**
> Invitation get(invitation_id)

Get invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.invitation import Invitation
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
    api_instance = saturn_api.InvitationsApi(api_client)
    invitation_id = 'invitation_id_example' # str | 

    try:
        api_response = await api_instance.get(invitation_id)
        print("The response of InvitationsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvitationsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **str**|  | 

### Return type

[**Invitation**](Invitation.md)

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
> InvitationList list(status=status, email=email, invitor_id=invitor_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List invitations

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.invitation_list import InvitationList
from saturn_api.models.invitation_status import InvitationStatus
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
    api_instance = saturn_api.InvitationsApi(api_client)
    status = saturn_api.InvitationStatus() # InvitationStatus |  (optional)
    email = 'email_example' # str |  (optional)
    invitor_id = 'invitor_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(status=status, email=email, invitor_id=invitor_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of InvitationsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvitationsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**InvitationStatus**](.md)|  | [optional] 
 **email** | **str**|  | [optional] 
 **invitor_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**InvitationList**](InvitationList.md)

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
> Invitation update(invitation_id, invitation_update)

Update invitation

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.invitation import Invitation
from saturn_api.models.invitation_update import InvitationUpdate
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
    api_instance = saturn_api.InvitationsApi(api_client)
    invitation_id = 'invitation_id_example' # str | 
    invitation_update = saturn_api.InvitationUpdate() # InvitationUpdate | 

    try:
        api_response = await api_instance.update(invitation_id, invitation_update)
        print("The response of InvitationsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvitationsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **str**|  | 
 **invitation_update** | [**InvitationUpdate**](InvitationUpdate.md)|  | 

### Return type

[**Invitation**](Invitation.md)

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

