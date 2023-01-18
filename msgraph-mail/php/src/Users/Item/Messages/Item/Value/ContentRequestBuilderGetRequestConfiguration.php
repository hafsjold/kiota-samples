<?php

namespace Microsoft\Graph\Users\Item\Messages\Item\Value;

use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class ContentRequestBuilderGetRequestConfiguration 
{
    /**
     * @var array<string, string>|null $headers Request headers
    */
    public ?array $headers = null;
    
    /**
     * @var array<string, RequestOption>|null $options Request options
    */
    public ?array $options = null;
    
}
