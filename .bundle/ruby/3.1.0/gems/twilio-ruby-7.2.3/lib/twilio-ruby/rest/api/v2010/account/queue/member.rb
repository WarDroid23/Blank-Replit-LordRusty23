##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Api
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Api < ApiBase
            class V2010 < Version
                class AccountContext < InstanceContext
                class QueueContext < InstanceContext

                     class MemberList < ListResource
                
                    ##
                    # Initialize the MemberList
                    # @param [Version] version Version that contains the resource
                    # @return [MemberList] MemberList
                    def initialize(version, account_sid: nil, queue_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { account_sid: account_sid, queue_sid: queue_sid }
                        @uri = "/Accounts/#{@solution[:account_sid]}/Queues/#{@solution[:queue_sid]}/Members.json"
                        
                    end
                
                    ##
                    # Lists MemberInstance records from the API as a list.
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
                    # When passed a block, yields MemberInstance records from the API.
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
                    # Retrieve a single page of MemberInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of MemberInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        MemberPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of MemberInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of MemberInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    MemberPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Api.V2010.MemberList>'
                    end
                end


                class MemberContext < InstanceContext
                    ##
                    # Initialize the MemberContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Member resource(s) to update.
                    # @param [String] queue_sid The SID of the Queue in which to find the members to update.
                    # @param [String] call_sid The [Call](https://www.twilio.com/docs/voice/api/call-resource) SID of the resource(s) to update.
                    # @return [MemberContext] MemberContext
                    def initialize(version, account_sid, queue_sid, call_sid)
                        super(version)

                        # Path Solution
                        @solution = { account_sid: account_sid, queue_sid: queue_sid, call_sid: call_sid,  }
                        @uri = "/Accounts/#{@solution[:account_sid]}/Queues/#{@solution[:queue_sid]}/Members/#{@solution[:call_sid]}.json"

                        
                    end
                    ##
                    # Fetch the MemberInstance
                    # @return [MemberInstance] Fetched MemberInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        MemberInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            queue_sid: @solution[:queue_sid],
                            call_sid: @solution[:call_sid],
                        )
                    end

                    ##
                    # Update the MemberInstance
                    # @param [String] url The absolute URL of the Queue resource.
                    # @param [String] method How to pass the update request data. Can be `GET` or `POST` and the default is `POST`. `POST` sends the data as encoded form data and `GET` sends the data as query parameters.
                    # @return [MemberInstance] Updated MemberInstance
                    def update(
                        url: nil, 
                        method: :unset
                    )

                        data = Twilio::Values.of({
                            'Url' => url,
                            'Method' => method,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        MemberInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            queue_sid: @solution[:queue_sid],
                            call_sid: @solution[:call_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.MemberContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.MemberContext #{context}>"
                    end
                end

                class MemberPage < Page
                    ##
                    # Initialize the MemberPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [MemberPage] MemberPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of MemberInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [MemberInstance] MemberInstance
                    def get_instance(payload)
                        MemberInstance.new(@version, payload, account_sid: @solution[:account_sid], queue_sid: @solution[:queue_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Api.V2010.MemberPage>'
                    end
                end
                class MemberInstance < InstanceResource
                    ##
                    # Initialize the MemberInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Member
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [MemberInstance] MemberInstance
                    def initialize(version, payload , account_sid: nil, queue_sid: nil, call_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'call_sid' => payload['call_sid'],
                            'date_enqueued' => Twilio.deserialize_rfc2822(payload['date_enqueued']),
                            'position' => payload['position'] == nil ? payload['position'] : payload['position'].to_i,
                            'uri' => payload['uri'],
                            'wait_time' => payload['wait_time'] == nil ? payload['wait_time'] : payload['wait_time'].to_i,
                            'queue_sid' => payload['queue_sid'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'account_sid' => account_sid  ,'queue_sid' => queue_sid  || @properties['queue_sid']  ,'call_sid' => call_sid  || @properties['call_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [MemberContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = MemberContext.new(@version , @params['account_sid'], @params['queue_sid'], @params['call_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Member resource is associated with.
                    def call_sid
                        @properties['call_sid']
                    end
                    
                    ##
                    # @return [Time] The date that the member was enqueued, given in RFC 2822 format.
                    def date_enqueued
                        @properties['date_enqueued']
                    end
                    
                    ##
                    # @return [String] This member's current position in the queue.
                    def position
                        @properties['position']
                    end
                    
                    ##
                    # @return [String] The URI of the resource, relative to `https://api.twilio.com`.
                    def uri
                        @properties['uri']
                    end
                    
                    ##
                    # @return [String] The number of seconds the member has been in the queue.
                    def wait_time
                        @properties['wait_time']
                    end
                    
                    ##
                    # @return [String] The SID of the Queue the member is in.
                    def queue_sid
                        @properties['queue_sid']
                    end
                    
                    ##
                    # Fetch the MemberInstance
                    # @return [MemberInstance] Fetched MemberInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the MemberInstance
                    # @param [String] url The absolute URL of the Queue resource.
                    # @param [String] method How to pass the update request data. Can be `GET` or `POST` and the default is `POST`. `POST` sends the data as encoded form data and `GET` sends the data as query parameters.
                    # @return [MemberInstance] Updated MemberInstance
                    def update(
                        url: nil, 
                        method: :unset
                    )

                        context.update(
                            url: url, 
                            method: method, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.MemberInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.MemberInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


