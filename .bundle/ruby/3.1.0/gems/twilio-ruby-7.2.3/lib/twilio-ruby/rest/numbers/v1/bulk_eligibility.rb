##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Numbers
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Numbers < NumbersBase
            class V1 < Version
                class BulkEligibilityList < ListResource
                
                    ##
                    # Initialize the BulkEligibilityList
                    # @param [Version] version Version that contains the resource
                    # @return [BulkEligibilityList] BulkEligibilityList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/HostedNumber/Eligibility/Bulk"
                        
                    end
                    ##
                    # Create the BulkEligibilityInstance
                    # @param [Object] body 
                    # @return [BulkEligibilityInstance] Created BulkEligibilityInstance
                    def create(body: :unset
                    )

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        headers['Content-Type'] = 'application/json'
                        payload = @version.create('POST', @uri, headers: headers, data: body.to_json)
                        BulkEligibilityInstance.new(
                            @version,
                            payload,
                        )
                    end

                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Numbers.V1.BulkEligibilityList>'
                    end
                end


                class BulkEligibilityContext < InstanceContext
                    ##
                    # Initialize the BulkEligibilityContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] request_id The SID of the bulk eligibility check that you want to know about.
                    # @return [BulkEligibilityContext] BulkEligibilityContext
                    def initialize(version, request_id)
                        super(version)

                        # Path Solution
                        @solution = { request_id: request_id,  }
                        @uri = "/HostedNumber/Eligibility/Bulk/#{@solution[:request_id]}"

                        
                    end
                    ##
                    # Fetch the BulkEligibilityInstance
                    # @return [BulkEligibilityInstance] Fetched BulkEligibilityInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        BulkEligibilityInstance.new(
                            @version,
                            payload,
                            request_id: @solution[:request_id],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Numbers.V1.BulkEligibilityContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Numbers.V1.BulkEligibilityContext #{context}>"
                    end
                end

                class BulkEligibilityPage < Page
                    ##
                    # Initialize the BulkEligibilityPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [BulkEligibilityPage] BulkEligibilityPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of BulkEligibilityInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [BulkEligibilityInstance] BulkEligibilityInstance
                    def get_instance(payload)
                        BulkEligibilityInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Numbers.V1.BulkEligibilityPage>'
                    end
                end
                class BulkEligibilityInstance < InstanceResource
                    ##
                    # Initialize the BulkEligibilityInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this BulkEligibility
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [BulkEligibilityInstance] BulkEligibilityInstance
                    def initialize(version, payload , request_id: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'request_id' => payload['request_id'],
                            'url' => payload['url'],
                            'results' => payload['results'],
                            'friendly_name' => payload['friendly_name'],
                            'status' => payload['status'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_completed' => Twilio.deserialize_iso8601_datetime(payload['date_completed']),
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'request_id' => request_id  || @properties['request_id']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [BulkEligibilityContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = BulkEligibilityContext.new(@version , @params['request_id'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the bulk eligibility check that you want to know about.
                    def request_id
                        @properties['request_id']
                    end
                    
                    ##
                    # @return [String] This is the url of the request that you're trying to reach out to locate the resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Array<Hash>] The result set that contains the eligibility check response for each requested number, each result has at least the following attributes:  phone_number: The requested phone number ,hosting_account_sid: The account sid where the phone number will be hosted, country: Phone number’s country, eligibility_status: Indicates the eligibility status of the PN (Eligible/Ineligible), eligibility_sub_status: Indicates the sub status of the eligibility , ineligibility_reason: Reason for number's ineligibility (if applicable), next_step: Suggested next step in the hosting process based on the eligibility status.
                    def results
                        @properties['results']
                    end
                    
                    ##
                    # @return [String] This is the string that you assigned as a friendly name for describing the eligibility check request.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] This is the status of the bulk eligibility check request. (Example: COMPLETE, IN_PROGRESS)
                    def status
                        @properties['status']
                    end
                    
                    ##
                    # @return [Time] 
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] 
                    def date_completed
                        @properties['date_completed']
                    end
                    
                    ##
                    # Fetch the BulkEligibilityInstance
                    # @return [BulkEligibilityInstance] Fetched BulkEligibilityInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Numbers.V1.BulkEligibilityInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Numbers.V1.BulkEligibilityInstance #{values}>"
                    end
                end

            end
        end
    end
end