# saturn_api.ApiStatusApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ApiStatusApi.md#get) | **GET** /api/status | Get API status


# **get**
> ApiStatus get()

Get API status

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.api_status import ApiStatus
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
    api_instance = saturn_api.ApiStatusApi(api_client)

    try:
        # Get API status
        api_response = await api_instance.get()
        print("The response of ApiStatusApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiStatusApi->get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiStatus**](ApiStatus.md)

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

