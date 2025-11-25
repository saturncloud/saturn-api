# saturn_api.NotificationsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge**](NotificationsApi.md#acknowledge) | **PUT** /api/notifications | Acknowledge notifications
[**delete**](NotificationsApi.md#delete) | **DELETE** /api/notifications | Delete notifications
[**list**](NotificationsApi.md#list) | **GET** /api/notifications | List notifications
[**list_subscriptions**](NotificationsApi.md#list_subscriptions) | **GET** /api/notifications/subscriptions | List notification subscriptions
[**subscribe**](NotificationsApi.md#subscribe) | **PUT** /api/notifications/subscriptions | Subscribe to topic
[**unsubscribe**](NotificationsApi.md#unsubscribe) | **DELETE** /api/notifications/subscriptions | Unsubscribe from topic


# **acknowledge**
> acknowledge(notification_acknowledged)

Acknowledge notifications

Mark notifications as read/unread.

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
        # Acknowledge notifications
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
        # Delete notifications
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

# **list**
> NotificationList list(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List notifications

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
    descending = True # bool |  (optional) (default to True)

    try:
        # List notifications
        api_response = await api_instance.list(prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
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
 **descending** | **bool**|  | [optional] [default to True]

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
> NotificationSubscriptionList list_subscriptions(topic=topic, user_id=user_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List notification subscriptions

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_subscription_list import NotificationSubscriptionList
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
    topic = 'topic_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List notification subscriptions
        api_response = await api_instance.list_subscriptions(topic=topic, user_id=user_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of NotificationsApi->list_subscriptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->list_subscriptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **str**|  | [optional] 
 **user_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**NotificationSubscriptionList**](NotificationSubscriptionList.md)

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

# **subscribe**
> NotificationSubscription subscribe(notification_subscribe)

Subscribe to topic

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_subscribe import NotificationSubscribe
from saturn_api.models.notification_subscription import NotificationSubscription
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
    notification_subscribe = saturn_api.NotificationSubscribe() # NotificationSubscribe | 

    try:
        # Subscribe to topic
        api_response = await api_instance.subscribe(notification_subscribe)
        print("The response of NotificationsApi->subscribe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->subscribe: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_subscribe** | [**NotificationSubscribe**](NotificationSubscribe.md)|  | 

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
**200** | Subscribed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribe**
> unsubscribe(notification_unsubscribe)

Unsubscribe from topic

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.notification_unsubscribe import NotificationUnsubscribe
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
    notification_unsubscribe = saturn_api.NotificationUnsubscribe() # NotificationUnsubscribe | 

    try:
        # Unsubscribe from topic
        await api_instance.unsubscribe(notification_unsubscribe)
    except Exception as e:
        print("Exception when calling NotificationsApi->unsubscribe: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_unsubscribe** | [**NotificationUnsubscribe**](NotificationUnsubscribe.md)|  | 

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
**204** | Unsubscribed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

