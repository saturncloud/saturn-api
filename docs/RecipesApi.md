# saturn_api.RecipesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply**](RecipesApi.md#apply) | **PUT** /api/recipes | Apply recipe
[**create**](RecipesApi.md#create) | **POST** /api/recipes | Create recipe
[**get**](RecipesApi.md#get) | **GET** /api/recipes/{recipe_type}/{name} | Get recipe
[**list**](RecipesApi.md#list) | **GET** /api/recipes | List recipes


# **apply**
> Recipe apply(recipe=recipe)

Apply recipe

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.recipe import Recipe
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
    api_instance = saturn_api.RecipesApi(api_client)
    recipe = saturn_api.Recipe() # Recipe |  (optional)

    try:
        # Apply recipe
        api_response = await api_instance.apply(recipe=recipe)
        print("The response of RecipesApi->apply:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RecipesApi->apply: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipe** | [**Recipe**](Recipe.md)|  | [optional] 

### Return type

[**Recipe**](Recipe.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Applied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> Recipe create(recipe)

Create recipe

Create a new recipe.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.recipe import Recipe
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
    api_instance = saturn_api.RecipesApi(api_client)
    recipe = saturn_api.Recipe() # Recipe | 

    try:
        # Create recipe
        api_response = await api_instance.create(recipe)
        print("The response of RecipesApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RecipesApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipe** | [**Recipe**](Recipe.md)|  | 

### Return type

[**Recipe**](Recipe.md)

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

# **get**
> Recipe get(recipe_type, name, owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, as_template=as_template)

Get recipe

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.recipe import Recipe
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
    api_instance = saturn_api.RecipesApi(api_client)
    recipe_type = 'recipe_type_example' # str | 
    name = 'name_example' # str | 
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    as_template = False # bool |  (optional) (default to False)

    try:
        # Get recipe
        api_response = await api_instance.get(recipe_type, name, owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, as_template=as_template)
        print("The response of RecipesApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RecipesApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipe_type** | **str**|  | 
 **name** | **str**|  | 
 **owner_name** | **str**| Reference owner by name. | [optional] 
 **owner_id** | **str**| Reference owner by ID. | [optional] 
 **user_id** | **str**| Reference owner by user ID. | [optional] 
 **group_id** | **str**| Reference owner by group ID. | [optional] 
 **org_id** | **str**| Reference owner by org ID. | [optional] 
 **owner** | **str**| Reference owner by name. | [optional] 
 **as_template** | **bool**|  | [optional] [default to False]

### Return type

[**Recipe**](Recipe.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> RecipeList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, type=type, name=name, as_template=as_template, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List recipes

Paginated list of recipes.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.recipe_list import RecipeList
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
    api_instance = saturn_api.RecipesApi(api_client)
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    type = 'type_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    as_template = False # bool |  (optional) (default to False)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List recipes
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, type=type, name=name, as_template=as_template, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of RecipesApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RecipesApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_name** | **str**| Reference owner by name. | [optional] 
 **owner_id** | **str**| Reference owner by ID. | [optional] 
 **user_id** | **str**| Reference owner by user ID. | [optional] 
 **group_id** | **str**| Reference owner by group ID. | [optional] 
 **org_id** | **str**| Reference owner by org ID. | [optional] 
 **owner** | **str**| Reference owner by name. | [optional] 
 **type** | **str**|  | [optional] 
 **name** | **str**|  | [optional] 
 **as_template** | **bool**|  | [optional] [default to False]
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**RecipeList**](RecipeList.md)

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

