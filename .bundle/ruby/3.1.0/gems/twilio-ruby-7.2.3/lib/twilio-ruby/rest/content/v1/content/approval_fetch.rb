##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Content
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Content < ContentBase
            class V1 < Version
                class ContentContext < InstanceContext

                     class ApprovalFetchList < ListResource
                
                    ##
                    # Initialize the ApprovalFetchList
                    # @param [Version] version Version that contains the resource
                    # @return [ApprovalFetchList] ApprovalFetchList
                    def initialize(version, content_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { content_sid: content_sid }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Content.V1.ApprovalFetchList>'
                    end
                end


                class ApprovalFetchContext < InstanceContext
                    ##
                    # Initialize the ApprovalFetchContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] content_sid The Twilio-provided string that uniquely identifies the Content resource whose approval information to fetch.
                    # @return [ApprovalFetchContext] ApprovalFetchContext
                    def initialize(version, content_sid)
                        super(version)

                        # Path Solution
                        @solution = { content_sid: content_sid,  }
                        @uri = "/Content/#{@solution[:content_sid]}/ApprovalRequests"

                        
                    end
                    ##
                    # Fetch the ApprovalFetchInstance
                    # @return [ApprovalFetchInstance] Fetched ApprovalFetchInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        ApprovalFetchInstance.new(
                            @version,
                            payload,
                            content_sid: @solution[:content_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Content.V1.ApprovalFetchContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Content.V1.ApprovalFetchContext #{context}>"
                    end
                end

                class ApprovalFetchPage < Page
                    ##
                    # Initialize the ApprovalFetchPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ApprovalFetchPage] ApprovalFetchPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ApprovalFetchInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ApprovalFetchInstance] ApprovalFetchInstance
                    def get_instance(payload)
                        ApprovalFetchInstance.new(@version, payload, content_sid: @solution[:content_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Content.V1.ApprovalFetchPage>'
                    end
                end
                class ApprovalFetchInstance < InstanceResource
                    ##
                    # Initialize the ApprovalFetchInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this ApprovalFetch
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ApprovalFetchInstance] ApprovalFetchInstance
                    def initialize(version, payload , content_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'whatsapp' => payload['whatsapp'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'content_sid' => content_sid  || @properties['content_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ApprovalFetchContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ApprovalFetchContext.new(@version , @params['content_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that that we created to identify the Content resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/usage/api/account) that created Content resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [Hash] Contains the whatsapp approval information for the Content resource, with fields such as approval status, rejection reason, and category, amongst others.
                    def whatsapp
                        @properties['whatsapp']
                    end
                    
                    ##
                    # @return [String] The URL of the resource, relative to `https://content.twilio.com`.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the ApprovalFetchInstance
                    # @return [ApprovalFetchInstance] Fetched ApprovalFetchInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Content.V1.ApprovalFetchInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Content.V1.ApprovalFetchInstance #{values}>"
                    end
                end

             end
            end
        end
    end
end


