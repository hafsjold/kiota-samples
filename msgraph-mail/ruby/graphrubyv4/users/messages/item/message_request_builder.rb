require 'microsoft_kiota_abstractions'
require_relative '../../users'
require_relative '../attachments/attachments_request_builder'
require_relative '../content/content_request_builder'
require_relative '../extensions/extensions_request_builder'
require_relative '../messages'
require_relative '../multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative '../single_value_extended_properties/single_value_extended_properties_request_builder'
require_relative './item'

module Graphrubyv4::Users::Messages::Item
    ## 
    # Builds and executes requests for operations under \users\{user-id}\messages\{message-id}
    class MessageRequestBuilder
        
        def attachments()
            AttachmentsRequestBuilder.new(@current_path + @path_segment , @http_core)
        end
        def content()
            ContentRequestBuilder.new(@current_path + @path_segment , @http_core)
        end
        ## 
        # Current path for the request
        @current_path
        def extensions()
            ExtensionsRequestBuilder.new(@current_path + @path_segment , @http_core)
        end
        ## 
        # The http core service to use to execute the requests.
        @http_core
        def multi_value_extended_properties()
            MultiValueExtendedPropertiesRequestBuilder.new(@current_path + @path_segment , @http_core)
        end
        ## 
        # Path segment to use to build the URL for the current request builder
        @path_segment
        def single_value_extended_properties()
            SingleValueExtendedPropertiesRequestBuilder.new(@current_path + @path_segment , @http_core)
        end
        ## 
        ## Instantiates a new MessageRequestBuilder and sets the default values.
        ## @param currentPath Current path for the request
        ## @param httpCore The http core service to use to execute the requests.
        ## @return a void
        ## 
        def initialize(current_path, http_core) 
            @path_segment = ""
            @http_core = http_core
            @current_path = current_path
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @return a request_info
        ## 
        def create_delete_request_info(h, o) 
            request_info = RequestInfo.new()
            request_info.URI = current_path + path_segment
            request_info.http_method = :DELETE
            request_info.set_headers_from_raw_object(h)
            return request_info;
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @param q Request query parameters
        ## @return a request_info
        ## 
        def create_get_request_info(q, h, o) 
            request_info = RequestInfo.new()
            request_info.URI = current_path + path_segment
            request_info.http_method = :GET
            request_info.set_headers_from_raw_object(h)
            request_info.set_query_string_parameters_from_raw_object(q)
            return request_info;
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param body 
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @return a request_info
        ## 
        def create_patch_request_info(body, h, o) 
            request_info = RequestInfo.new()
            request_info.URI = current_path + path_segment
            request_info.http_method = :PATCH
            request_info.set_headers_from_raw_object(h)
            request_info.set_content_from_parsable(self.serializer_factory, "application/json", body)
            return request_info;
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @param responseHandler Response handler to use in place of the default response handling provided by the core service
        ## @return a CompletableFuture of void
        ## 
        def delete(h, o, response_handler) 
            request_info = self.create_delete_request_info(
                h
            )
            return self.http_core.send_async(request_info, response_handler)
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @param q Request query parameters
        ## @param responseHandler Response handler to use in place of the default response handling provided by the core service
        ## @return a CompletableFuture of message
        ## 
        def get(q, h, o, response_handler) 
            request_info = self.create_get_request_info(
                q, h
            )
            return self.http_core.send_async(request_info, response_handler)
        end
        ## 
        ## The messages in a mailbox or folder. Read-only. Nullable.
        ## @param body 
        ## @param h Request headers
        ## @param o Request options for HTTP middlewares
        ## @param responseHandler Response handler to use in place of the default response handling provided by the core service
        ## @return a CompletableFuture of void
        ## 
        def patch(body, h, o, response_handler) 
            request_info = self.create_patch_request_info(
                body, h
            )
            return self.http_core.send_async(request_info, response_handler)
        end
    end
end
