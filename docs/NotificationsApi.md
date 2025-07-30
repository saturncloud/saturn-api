# saturn_api.NotificationsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge**](NotificationsApi.md#acknowledge) | **PUT** /api/notifications | 
[**delete**](NotificationsApi.md#delete) | **DELETE** /api/notifications | 
[**delete_subscription**](NotificationsApi.md#delete_subscription) | **DELETE** /api/notifications/subscriptions | 
[**list**](NotificationsApi.md#list) | **GET** /api/notifications | 
[**list_subscriptions**](NotificationsApi.md#list_subscriptions) | **GET** /api/notifications/subscriptions | 
[**update_subscription**](NotificationsApi.md#update_subscription) | **PUT** /api/notifications/subscriptions | 


# **acknowledge**
> acknowledge(notification_acknowledged)

Mark notifications as read/unread

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_acknowledged import NotificationAcknowledged
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
    api_instance = saturn_api.NotificationsApi(api_client)
    notification_acknowledged = saturn_api.NotificationAcknowledged() # NotificationAcknowledged | 

    try:
        await api_instance.acknowledge(notification_acknowledged)
    except Exception as e:
        print("Exception when calling NotificationsApi->acknowledge: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_acknowledged** | [**NotificationAcknowledged**](NotificationAcknowledged.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(notification_delete)

Delete notifications

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_delete import NotificationDelete
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
    api_instance = saturn_api.NotificationsApi(api_client)
    notification_delete = saturn_api.NotificationDelete() # NotificationDelete | 

    try:
        await api_instance.delete(notification_delete)
    except Exception as e:
        print("Exception when calling NotificationsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_delete** | [**NotificationDelete**](NotificationDelete.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_subscription**
> delete_subscription(notification_subscription_delete)

Unsubscribe a user from a notification topic

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_subscription_delete import NotificationSubscriptionDelete
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
    api_instance = saturn_api.NotificationsApi(api_client)
    notification_subscription_delete = saturn_api.NotificationSubscriptionDelete() # NotificationSubscriptionDelete | 

    try:
        await api_instance.delete_subscription(notification_subscription_delete)
    except Exception as e:
        print("Exception when calling NotificationsApi->delete_subscription: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_subscription_delete** | [**NotificationSubscriptionDelete**](NotificationSubscriptionDelete.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Ok |  -  |
**403** | Access denied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> NotificationList list(prev_key=prev_key, next_key=next_key, page_size=page_size)

Retrieve user notifications

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_list import NotificationList
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
    api_instance = saturn_api.NotificationsApi(api_client)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        api_response = await api_instance.list(prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of NotificationsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**NotificationList**](NotificationList.md)

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

# **list_subscriptions**
> NotificationSubscriptionsList list_subscriptions(user_id=user_id, topic=topic, prev_key=prev_key, next_key=next_key, page_size=page_size)

Retrieve user notification subscriptions

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_subscriptions_list import NotificationSubscriptionsList
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
    api_instance = saturn_api.NotificationsApi(api_client)
    user_id = 'user_id_example' # str |  (optional)
    topic = 'topic_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        api_response = await api_instance.list_subscriptions(user_id=user_id, topic=topic, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of NotificationsApi->list_subscriptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->list_subscriptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | [optional] 
 **topic** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**NotificationSubscriptionsList**](NotificationSubscriptionsList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |
**403** | Access denied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_subscription**
> NotificationSubscription update_subscription(notification_subscription_update)

Subscribe a user to a notification topic

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_subscription import NotificationSubscription
from saturn_api.models.notification_subscription_update import NotificationSubscriptionUpdate
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
    api_instance = saturn_api.NotificationsApi(api_client)
    notification_subscription_update = saturn_api.NotificationSubscriptionUpdate() # NotificationSubscriptionUpdate | 

    try:
        api_response = await api_instance.update_subscription(notification_subscription_update)
        print("The response of NotificationsApi->update_subscription:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->update_subscription: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_subscription_update** | [**NotificationSubscriptionUpdate**](NotificationSubscriptionUpdate.md)|  | 

### Return type

[**NotificationSubscription**](NotificationSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |
**403** | Access denied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

