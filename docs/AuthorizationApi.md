# saturn_api.AuthorizationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_oauth_token**](AuthorizationApi.md#create_oauth_token) | **POST** /api/auth/token | Create OAuth token
[**get_oauth_init**](AuthorizationApi.md#get_oauth_init) | **GET** /api/auth/token | Initialize oauth
[**login**](AuthorizationApi.md#login) | **POST** /api/auth/login | Login
[**logout**](AuthorizationApi.md#logout) | **GET** /api/auth/logout | Logout


# **create_oauth_token**
> AuthorizationTokenResponse create_oauth_token(authorization_grant)

Create OAuth token

Request new token from oauth code or refresh token grant.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.authorization_grant import AuthorizationGrant
from saturn_api.models.authorization_token_response import AuthorizationTokenResponse
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
    api_instance = saturn_api.AuthorizationApi(api_client)
    authorization_grant = saturn_api.AuthorizationGrant() # AuthorizationGrant | 

    try:
        # Create OAuth token
        api_response = await api_instance.create_oauth_token(authorization_grant)
        print("The response of AuthorizationApi->create_oauth_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthorizationApi->create_oauth_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization_grant** | [**AuthorizationGrant**](AuthorizationGrant.md)|  | 

### Return type

[**AuthorizationTokenResponse**](AuthorizationTokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_oauth_init**
> get_oauth_init(response_type, client_id, code_challenge, redirect_uri, code_challenge_method=code_challenge_method, state=state)

Initialize oauth

Begin an OAuth code grant flow.

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
    api_instance = saturn_api.AuthorizationApi(api_client)
    response_type = 'response_type_example' # str | 
    client_id = 'client_id_example' # str | 
    code_challenge = 'code_challenge_example' # str | 
    redirect_uri = 'redirect_uri_example' # str | 
    code_challenge_method = plain # str |  (optional) (default to plain)
    state = 'state_example' # str |  (optional)

    try:
        # Initialize oauth
        await api_instance.get_oauth_init(response_type, client_id, code_challenge, redirect_uri, code_challenge_method=code_challenge_method, state=state)
    except Exception as e:
        print("Exception when calling AuthorizationApi->get_oauth_init: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **response_type** | **str**|  | 
 **client_id** | **str**|  | 
 **code_challenge** | **str**|  | 
 **redirect_uri** | **str**|  | 
 **code_challenge_method** | **str**|  | [optional] [default to plain]
 **state** | **str**|  | [optional] 

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
**302** | Redirect |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> login(username, password)

Login

Create a new browser session.

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
    api_instance = saturn_api.AuthorizationApi(api_client)
    username = 'username_example' # str | 
    password = 'password_example' # str | 

    try:
        # Login
        await api_instance.login(username, password)
    except Exception as e:
        print("Exception when calling AuthorizationApi->login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 
 **password** | **str**|  | 

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
**204** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout(username, password)

Logout

End the current browser session.

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
    api_instance = saturn_api.AuthorizationApi(api_client)
    username = 'username_example' # str | 
    password = 'password_example' # str | 

    try:
        # Logout
        await api_instance.logout(username, password)
    except Exception as e:
        print("Exception when calling AuthorizationApi->logout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 
 **password** | **str**|  | 

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
**302** | Redirect |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

