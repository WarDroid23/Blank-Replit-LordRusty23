##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Supersim
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Supersim < SupersimBase
            class V1 < Version
                class NetworkAccessProfileList < ListResource
                
                    ##
                    # Initialize the NetworkAccessProfileList
                    # @param [Version] version Version that contains the resource
                    # @return [NetworkAccessProfileList] NetworkAccessProfileList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/NetworkAccessProfiles"
                        
                    end
                    ##
                    # Create the NetworkAccessProfileInstance
                    # @param [String] unique_name An application-defined string that uniquely identifies the resource. It can be used in place of the resource's `sid` in the URL to address the resource.
                    # @param [Array[String]] networks List of Network SIDs that this Network Access Profile will allow connections to.
                    # @return [NetworkAccessProfileInstance] Created NetworkAccessProfileInstance
                    def create(
                        unique_name: :unset, 
                        networks: :unset
                    )

                        data = Twilio::Values.of({
                            'UniqueName' => unique_name,
                            'Networks' => Twilio.serialize_list(networks) { |e| e },
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        NetworkAccessProfileInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists NetworkAccessProfileInstance records from the API as a list.
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
                    # When passed a block, yields NetworkAccessProfileInstance records from the API.
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
                    # Retrieve a single page of NetworkAccessProfileInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of NetworkAccessProfileInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        NetworkAccessProfilePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of NetworkAccessProfileInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of NetworkAccessProfileInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    NetworkAccessProfilePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Supersim.V1.NetworkAccessProfileList>'
                    end
                end


                class NetworkAccessProfileContext < InstanceContext
                    ##
                    # Initialize the NetworkAccessProfileContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid The SID of the Network Access Profile to update.
                    # @return [NetworkAccessProfileContext] NetworkAccessProfileContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/NetworkAccessProfiles/#{@solution[:sid]}"

                        # Dependents
                        @networks = nil
                    end
                    ##
                    # Fetch the NetworkAccessProfileInstance
                    # @return [NetworkAccessProfileInstance] Fetched NetworkAccessProfileInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        NetworkAccessProfileInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the NetworkAccessProfileInstance
                    # @param [String] unique_name The new unique name of the Network Access Profile.
                    # @return [NetworkAccessProfileInstance] Updated NetworkAccessProfileInstance
                    def update(
                        unique_name: :unset
                    )

                        data = Twilio::Values.of({
                            'UniqueName' => unique_name,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        NetworkAccessProfileInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the networks
                    # @return [NetworkAccessProfileNetworkList]
                    # @return [NetworkAccessProfileNetworkContext] if sid was passed.
                    def networks(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return NetworkAccessProfileNetworkContext.new(@version, @solution[:sid],sid )
                        end

                        unless @networks
                            @networks = NetworkAccessProfileNetworkList.new(
                                @version, network_access_profile_sid: @solution[:sid], )
                        end

                     @networks
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Supersim.V1.NetworkAccessProfileContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Supersim.V1.NetworkAccessProfileContext #{context}>"
                    end
                end

                class NetworkAccessProfilePage < Page
                    ##
                    # Initialize the NetworkAccessProfilePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [NetworkAccessProfilePage] NetworkAccessProfilePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of NetworkAccessProfileInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [NetworkAccessProfileInstance] NetworkAccessProfileInstance
                    def get_instance(payload)
                        NetworkAccessProfileInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Supersim.V1.NetworkAccessProfilePage>'
                    end
                end
                class NetworkAccessProfileInstance < InstanceResource
                    ##
                    # Initialize the NetworkAccessProfileInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this NetworkAccessProfile
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [NetworkAccessProfileInstance] NetworkAccessProfileInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'unique_name' => payload['unique_name'],
                            'account_sid' => payload['account_sid'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                            'links' => payload['links'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [NetworkAccessProfileContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = NetworkAccessProfileContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that identifies the Network Access Profile resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] An application-defined string that uniquely identifies the resource. It can be used in place of the resource's `sid` in the URL to address the resource.
                    def unique_name
                        @properties['unique_name']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that the Network Access Profile belongs to.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Network Access Profile resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] 
                    def links
                        @properties['links']
                    end
                    
                    ##
                    # Fetch the NetworkAccessProfileInstance
                    # @return [NetworkAccessProfileInstance] Fetched NetworkAccessProfileInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the NetworkAccessProfileInstance
                    # @param [String] unique_name The new unique name of the Network Access Profile.
                    # @return [NetworkAccessProfileInstance] Updated NetworkAccessProfileInstance
                    def update(
                        unique_name: :unset
                    )

                        context.update(
                            unique_name: unique_name, 
                        )
                    end

                    ##
                    # Access the networks
                    # @return [networks] networks
                    def networks
                        context.networks
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Supersim.V1.NetworkAccessProfileInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Supersim.V1.NetworkAccessProfileInstance #{values}>"
                    end
                end

            end
        end
    end
end
