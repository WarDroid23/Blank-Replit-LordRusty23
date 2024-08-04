##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Intelligence
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Intelligence < IntelligenceBase
            class V2 < Version
                class OperatorTypeList < ListResource
                
                    ##
                    # Initialize the OperatorTypeList
                    # @param [Version] version Version that contains the resource
                    # @return [OperatorTypeList] OperatorTypeList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/OperatorTypes"
                        
                    end
                
                    ##
                    # Lists OperatorTypeInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(limit: nil, page_size: nil)
                        self.stream(
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields OperatorTypeInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of OperatorTypeInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of OperatorTypeInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        OperatorTypePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of OperatorTypeInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of OperatorTypeInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    OperatorTypePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Intelligence.V2.OperatorTypeList>'
                    end
                end


                class OperatorTypeContext < InstanceContext
                    ##
                    # Initialize the OperatorTypeContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid A 34 character string that uniquely identifies this Operator Type.
                    # @return [OperatorTypeContext] OperatorTypeContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/OperatorTypes/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Fetch the OperatorTypeInstance
                    # @return [OperatorTypeInstance] Fetched OperatorTypeInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        OperatorTypeInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Intelligence.V2.OperatorTypeContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Intelligence.V2.OperatorTypeContext #{context}>"
                    end
                end

                class OperatorTypePage < Page
                    ##
                    # Initialize the OperatorTypePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [OperatorTypePage] OperatorTypePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of OperatorTypeInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [OperatorTypeInstance] OperatorTypeInstance
                    def get_instance(payload)
                        OperatorTypeInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Intelligence.V2.OperatorTypePage>'
                    end
                end
                class OperatorTypeInstance < InstanceResource
                    ##
                    # Initialize the OperatorTypeInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this OperatorType
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [OperatorTypeInstance] OperatorTypeInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'name' => payload['name'],
                            'sid' => payload['sid'],
                            'friendly_name' => payload['friendly_name'],
                            'description' => payload['description'],
                            'docs_link' => payload['docs_link'],
                            'output_type' => payload['output_type'],
                            'supported_languages' => payload['supported_languages'],
                            'provider' => payload['provider'],
                            'availability' => payload['availability'],
                            'configurable' => payload['configurable'],
                            'config_schema' => payload['config_schema'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [OperatorTypeContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = OperatorTypeContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] A unique name that references an Operator's Operator Type.
                    def name
                        @properties['name']
                    end
                    
                    ##
                    # @return [String] A 34 character string that uniquely identifies this Operator Type.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] A human-readable name of this resource, up to 64 characters.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] A human-readable description of this resource, longer than the friendly name.
                    def description
                        @properties['description']
                    end
                    
                    ##
                    # @return [String] Additional documentation for the Operator Type.
                    def docs_link
                        @properties['docs_link']
                    end
                    
                    ##
                    # @return [OutputType] 
                    def output_type
                        @properties['output_type']
                    end
                    
                    ##
                    # @return [Array<String>] List of languages this Operator Type supports.
                    def supported_languages
                        @properties['supported_languages']
                    end
                    
                    ##
                    # @return [Provider] 
                    def provider
                        @properties['provider']
                    end
                    
                    ##
                    # @return [Availability] 
                    def availability
                        @properties['availability']
                    end
                    
                    ##
                    # @return [Boolean] Operators can be created from configurable Operator Types.
                    def configurable
                        @properties['configurable']
                    end
                    
                    ##
                    # @return [Hash] JSON Schema for configuring an Operator with this Operator Type. Following https://json-schema.org/
                    def config_schema
                        @properties['config_schema']
                    end
                    
                    ##
                    # @return [Time] The date that this Operator Type was created, given in ISO 8601 format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date that this Operator Type was updated, given in ISO 8601 format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The URL of this resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the OperatorTypeInstance
                    # @return [OperatorTypeInstance] Fetched OperatorTypeInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Intelligence.V2.OperatorTypeInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Intelligence.V2.OperatorTypeInstance #{values}>"
                    end
                end

            end
        end
    end
end
