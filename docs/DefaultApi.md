# saturn_api.DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_runtimesummary**](DefaultApi.md#get_runtimesummary) | **GET** /api/images/{image_id}/tags/{image_tag_id}/runtimesummary | 


# **get_runtimesummary**
> JobRuntimeSummary get_runtimesummary(image_id, image_tag_id, details=details)

Get image tag build runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.job_runtime_summary import JobRuntimeSummary
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
    api_instance = saturn_api.DefaultApi(api_client)
    image_id = 'image_id_example' # str | 
    image_tag_id = 'image_tag_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.get_runtimesummary(image_id, image_tag_id, details=details)
        print("The response of DefaultApi->get_runtimesummary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_runtimesummary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_id** | **str**|  | 
 **image_tag_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

### Return type

[**JobRuntimeSummary**](JobRuntimeSummary.md)

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

