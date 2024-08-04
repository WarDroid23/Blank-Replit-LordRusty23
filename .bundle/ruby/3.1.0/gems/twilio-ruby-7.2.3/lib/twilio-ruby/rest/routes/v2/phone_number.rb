##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Routes
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Routes < RoutesBase
            class V2 < Version
                class PhoneNumberList < ListResource
                
                    ##
                    # Initialize the PhoneNumberList
                    # @param [Version] version Version that contains the resource
                    # @return [PhoneNumberList] PhoneNumberList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Routes.V2.PhoneNumberList>'
                    end
                end


                class PhoneNumberContext < InstanceContext
                    ##
                    # Initialize the PhoneNumberContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] phone_number The phone number in E.164 format
                    # @return [PhoneNumberContext] PhoneNumberContext
                    def initialize(version, phone_number)
                        super(version)

                        # Path Solution
                        @solution = { phone_number: phone_number,  }
                        @uri = "/PhoneNumbers/#{@solution[:phone_number]}"

                        
                    end
                    ##
                    # Fetch the PhoneNumberInstance
                    # @return [PhoneNumberInstance] Fetched PhoneNumberInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        PhoneNumberInstance.new(
                            @version,
                            payload,
                            phone_number: @solution[:phone_number],
                        )
                    end

                    ##
                    # Update the PhoneNumberInstance
                    # @param [String] voice_region The Inbound Processing Region used for this phone number for voice
                    # @param [String] friendly_name A human readable description of this resource, up to 64 characters.
                    # @return [PhoneNumberInstance] Updated PhoneNumberInstance
                    def update(
                        voice_region: :unset, 
                        friendly_name: :unset
                    )

                        data = Twilio::Values.of({
                            'VoiceRegion' => voice_region,
                            'FriendlyName' => friendly_name,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        PhoneNumberInstance.new(
                            @version,
                            payload,
                            phone_number: @solution[:phone_number],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Routes.V2.PhoneNumberContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Routes.V2.PhoneNumberContext #{context}>"
                    end
                end

                class PhoneNumberPage < Page
                    ##
                    # Initialize the PhoneNumberPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [PhoneNumberPage] PhoneNumberPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of PhoneNumberInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [PhoneNumberInstance] PhoneNumberInstance
                    def get_instance(payload)
                        PhoneNumberInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Routes.V2.PhoneNumberPage>'
                    end
                end
                class PhoneNumberInstance < InstanceResource
                    ##
                    # Initialize the PhoneNumberInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this PhoneNumber
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [PhoneNumberInstance] PhoneNumberInstance
                    def initialize(version, payload , phone_number: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'phone_number' => payload['phone_number'],
                            'url' => payload['url'],
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'voice_region' => payload['voice_region'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'phone_number' => phone_number  || @properties['phone_number']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [PhoneNumberContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = PhoneNumberContext.new(@version , @params['phone_number'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The phone number in E.164 format
                    def phone_number
                        @properties['phone_number']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [String] A 34 character string that uniquely identifies the Inbound Processing Region assignments for this phone number.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Account.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] A human readable description of the Inbound Processing Region assignments for this phone number, up to 64 characters.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] The Inbound Processing Region used for this phone number for voice.
                    def voice_region
                        @properties['voice_region']
                    end
                    
                    ##
                    # @return [Time] The date that this phone number was assigned an Inbound Processing Region, given in ISO 8601 format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date that the Inbound Processing Region was updated for this phone number, given in ISO 8601 format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # Fetch the PhoneNumberInstance
                    # @return [PhoneNumberInstance] Fetched PhoneNumberInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the PhoneNumberInstance
                    # @param [String] voice_region The Inbound Processing Region used for this phone number for voice
                    # @param [String] friendly_name A human readable description of this resource, up to 64 characters.
                    # @return [PhoneNumberInstance] Updated PhoneNumberInstance
                    def update(
                        voice_region: :unset, 
                        friendly_name: :unset
                    )

                        context.update(
                            voice_region: voice_region, 
                            friendly_name: friendly_name, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Routes.V2.PhoneNumberInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Routes.V2.PhoneNumberInstance #{values}>"
                    end
                end

            end
        end
    end
end
