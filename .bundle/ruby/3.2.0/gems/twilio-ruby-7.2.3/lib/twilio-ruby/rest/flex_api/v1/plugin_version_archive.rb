##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Flex
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class FlexApi < FlexApiBase
            class V1 < Version
                class PluginVersionArchiveList < ListResource
                
                    ##
                    # Initialize the PluginVersionArchiveList
                    # @param [Version] version Version that contains the resource
                    # @return [PluginVersionArchiveList] PluginVersionArchiveList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.FlexApi.V1.PluginVersionArchiveList>'
                    end
                end


                class PluginVersionArchiveContext < InstanceContext
                    ##
                    # Initialize the PluginVersionArchiveContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] plugin_sid The SID of the Flex Plugin the resource to belongs to.
                    # @param [String] sid The SID of the Flex Plugin Version resource to archive.
                    # @return [PluginVersionArchiveContext] PluginVersionArchiveContext
                    def initialize(version, plugin_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { plugin_sid: plugin_sid, sid: sid,  }
                        @uri = "/PluginService/Plugins/#{@solution[:plugin_sid]}/Versions/#{@solution[:sid]}/Archive"

                        
                    end
                    ##
                    # Update the PluginVersionArchiveInstance
                    # @param [String] flex_metadata The Flex-Metadata HTTP request header
                    # @return [PluginVersionArchiveInstance] Updated PluginVersionArchiveInstance
                    def update(
                        flex_metadata: :unset
                    )

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', 'Flex-Metadata' => flex_metadata, })
                        
                        payload = @version.update('POST', @uri, headers: headers)
                        PluginVersionArchiveInstance.new(
                            @version,
                            payload,
                            plugin_sid: @solution[:plugin_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.PluginVersionArchiveContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.PluginVersionArchiveContext #{context}>"
                    end
                end

                class PluginVersionArchivePage < Page
                    ##
                    # Initialize the PluginVersionArchivePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [PluginVersionArchivePage] PluginVersionArchivePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of PluginVersionArchiveInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [PluginVersionArchiveInstance] PluginVersionArchiveInstance
                    def get_instance(payload)
                        PluginVersionArchiveInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.FlexApi.V1.PluginVersionArchivePage>'
                    end
                end
                class PluginVersionArchiveInstance < InstanceResource
                    ##
                    # Initialize the PluginVersionArchiveInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this PluginVersionArchive
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [PluginVersionArchiveInstance] PluginVersionArchiveInstance
                    def initialize(version, payload , plugin_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'plugin_sid' => payload['plugin_sid'],
                            'account_sid' => payload['account_sid'],
                            'version' => payload['version'],
                            'plugin_url' => payload['plugin_url'],
                            'changelog' => payload['changelog'],
                            'private' => payload['private'],
                            'archived' => payload['archived'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'plugin_sid' => plugin_sid  || @properties['plugin_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [PluginVersionArchiveContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = PluginVersionArchiveContext.new(@version , @params['plugin_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Flex Plugin Version resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Flex Plugin resource this Flex Plugin Version belongs to.
                    def plugin_sid
                        @properties['plugin_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Flex Plugin Version resource and owns this resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The unique version of this Flex Plugin Version.
                    def version
                        @properties['version']
                    end
                    
                    ##
                    # @return [String] The URL of where the Flex Plugin Version JavaScript bundle is hosted on.
                    def plugin_url
                        @properties['plugin_url']
                    end
                    
                    ##
                    # @return [String] A changelog that describes the changes this Flex Plugin Version brings.
                    def changelog
                        @properties['changelog']
                    end
                    
                    ##
                    # @return [Boolean] Whether to inject credentials while accessing this Plugin Version. The default value is false.
                    def private
                        @properties['private']
                    end
                    
                    ##
                    # @return [Boolean] Whether the Flex Plugin Version is archived. The default value is false.
                    def archived
                        @properties['archived']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Flex Plugin Version was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Flex Plugin Version resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Update the PluginVersionArchiveInstance
                    # @param [String] flex_metadata The Flex-Metadata HTTP request header
                    # @return [PluginVersionArchiveInstance] Updated PluginVersionArchiveInstance
                    def update(
                        flex_metadata: :unset
                    )

                        context.update(
                            flex_metadata: flex_metadata, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.PluginVersionArchiveInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.PluginVersionArchiveInstance #{values}>"
                    end
                end

            end
        end
    end
end
