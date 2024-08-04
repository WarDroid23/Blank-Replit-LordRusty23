##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Insights
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Insights < InsightsBase
            class V1 < Version
                class CallContext < InstanceContext

                     class MetricList < ListResource
                
                    ##
                    # Initialize the MetricList
                    # @param [Version] version Version that contains the resource
                    # @return [MetricList] MetricList
                    def initialize(version, call_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { call_sid: call_sid }
                        @uri = "/Voice/#{@solution[:call_sid]}/Metrics"
                        
                    end
                
                    ##
                    # Lists MetricInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [TwilioEdge] edge The Edge of this Metric. One of `unknown_edge`, `carrier_edge`, `sip_edge`, `sdk_edge` or `client_edge`.
                    # @param [StreamDirection] direction The Direction of this Metric. One of `unknown`, `inbound`, `outbound` or `both`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(edge: :unset, direction: :unset, limit: nil, page_size: nil)
                        self.stream(
                            edge: edge,
                            direction: direction,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [TwilioEdge] edge The Edge of this Metric. One of `unknown_edge`, `carrier_edge`, `sip_edge`, `sdk_edge` or `client_edge`.
                    # @param [StreamDirection] direction The Direction of this Metric. One of `unknown`, `inbound`, `outbound` or `both`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(edge: :unset, direction: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            edge: edge,
                            direction: direction,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields MetricInstance records from the API.
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
                    # Retrieve a single page of MetricInstance records from the API.
                    # Request is executed immediately.
                    # @param [TwilioEdge] edge The Edge of this Metric. One of `unknown_edge`, `carrier_edge`, `sip_edge`, `sdk_edge` or `client_edge`.
                    # @param [StreamDirection] direction The Direction of this Metric. One of `unknown`, `inbound`, `outbound` or `both`.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of MetricInstance
                    def page(edge: :unset, direction: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'Edge' => edge,
                            'Direction' => direction,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        MetricPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of MetricInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of MetricInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    MetricPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Insights.V1.MetricList>'
                    end
                end

                class MetricPage < Page
                    ##
                    # Initialize the MetricPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [MetricPage] MetricPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of MetricInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [MetricInstance] MetricInstance
                    def get_instance(payload)
                        MetricInstance.new(@version, payload, call_sid: @solution[:call_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Insights.V1.MetricPage>'
                    end
                end
                class MetricInstance < InstanceResource
                    ##
                    # Initialize the MetricInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Metric
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [MetricInstance] MetricInstance
                    def initialize(version, payload , call_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'timestamp' => payload['timestamp'],
                            'call_sid' => payload['call_sid'],
                            'account_sid' => payload['account_sid'],
                            'edge' => payload['edge'],
                            'direction' => payload['direction'],
                            'carrier_edge' => payload['carrier_edge'],
                            'sip_edge' => payload['sip_edge'],
                            'sdk_edge' => payload['sdk_edge'],
                            'client_edge' => payload['client_edge'],
                        }
                    end

                    
                    ##
                    # @return [String] Timestamp of metric sample. Samples are taken every 10 seconds and contain the metrics for the previous 10 seconds.
                    def timestamp
                        @properties['timestamp']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Call.
                    def call_sid
                        @properties['call_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Account.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [TwilioEdge] 
                    def edge
                        @properties['edge']
                    end
                    
                    ##
                    # @return [StreamDirection] 
                    def direction
                        @properties['direction']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a PSTN call.
                    def carrier_edge
                        @properties['carrier_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a SIP Interface or Trunking call.
                    def sip_edge
                        @properties['sip_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the SDK sensor library for Client calls.
                    def sdk_edge
                        @properties['sdk_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a Client call.
                    def client_edge
                        @properties['client_edge']
                    end
                    
                    ##
                    # Provide a user friendly representation
                    def to_s
                        "<Twilio.Insights.V1.MetricInstance>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        "<Twilio.Insights.V1.MetricInstance>"
                    end
                end

             end
            end
        end
    end
end


