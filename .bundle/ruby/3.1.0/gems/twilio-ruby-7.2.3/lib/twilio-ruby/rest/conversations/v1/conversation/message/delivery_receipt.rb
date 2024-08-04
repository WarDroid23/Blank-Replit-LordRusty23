##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Conversations
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Conversations < ConversationsBase
            class V1 < Version
                class ConversationContext < InstanceContext
                class MessageContext < InstanceContext

                     class DeliveryReceiptList < ListResource
                
                    ##
                    # Initialize the DeliveryReceiptList
                    # @param [Version] version Version that contains the resource
                    # @return [DeliveryReceiptList] DeliveryReceiptList
                    def initialize(version, conversation_sid: nil, message_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { conversation_sid: conversation_sid, message_sid: message_sid }
                        @uri = "/Conversations/#{@solution[:conversation_sid]}/Messages/#{@solution[:message_sid]}/Receipts"
                        
                    end
                
                    ##
                    # Lists DeliveryReceiptInstance records from the API as a list.
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
                    # When passed a block, yields DeliveryReceiptInstance records from the API.
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
                    # Retrieve a single page of DeliveryReceiptInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of DeliveryReceiptInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        DeliveryReceiptPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of DeliveryReceiptInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of DeliveryReceiptInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    DeliveryReceiptPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Conversations.V1.DeliveryReceiptList>'
                    end
                end


                class DeliveryReceiptContext < InstanceContext
                    ##
                    # Initialize the DeliveryReceiptContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] conversation_sid The unique ID of the [Conversation](https://www.twilio.com/docs/conversations/api/conversation-resource) for this message.
                    # @param [String] message_sid The SID of the message within a [Conversation](https://www.twilio.com/docs/conversations/api/conversation-resource) the delivery receipt belongs to.
                    # @param [String] sid A 34 character string that uniquely identifies this resource.
                    # @return [DeliveryReceiptContext] DeliveryReceiptContext
                    def initialize(version, conversation_sid, message_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { conversation_sid: conversation_sid, message_sid: message_sid, sid: sid,  }
                        @uri = "/Conversations/#{@solution[:conversation_sid]}/Messages/#{@solution[:message_sid]}/Receipts/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Fetch the DeliveryReceiptInstance
                    # @return [DeliveryReceiptInstance] Fetched DeliveryReceiptInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        DeliveryReceiptInstance.new(
                            @version,
                            payload,
                            conversation_sid: @solution[:conversation_sid],
                            message_sid: @solution[:message_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.DeliveryReceiptContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.DeliveryReceiptContext #{context}>"
                    end
                end

                class DeliveryReceiptPage < Page
                    ##
                    # Initialize the DeliveryReceiptPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [DeliveryReceiptPage] DeliveryReceiptPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of DeliveryReceiptInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [DeliveryReceiptInstance] DeliveryReceiptInstance
                    def get_instance(payload)
                        DeliveryReceiptInstance.new(@version, payload, conversation_sid: @solution[:conversation_sid], message_sid: @solution[:message_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Conversations.V1.DeliveryReceiptPage>'
                    end
                end
                class DeliveryReceiptInstance < InstanceResource
                    ##
                    # Initialize the DeliveryReceiptInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this DeliveryReceipt
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [DeliveryReceiptInstance] DeliveryReceiptInstance
                    def initialize(version, payload , conversation_sid: nil, message_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'conversation_sid' => payload['conversation_sid'],
                            'sid' => payload['sid'],
                            'message_sid' => payload['message_sid'],
                            'channel_message_sid' => payload['channel_message_sid'],
                            'participant_sid' => payload['participant_sid'],
                            'status' => payload['status'],
                            'error_code' => payload['error_code'] == nil ? payload['error_code'] : payload['error_code'].to_i,
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'conversation_sid' => conversation_sid  || @properties['conversation_sid']  ,'message_sid' => message_sid  || @properties['message_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [DeliveryReceiptContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = DeliveryReceiptContext.new(@version , @params['conversation_sid'], @params['message_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique ID of the [Account](https://www.twilio.com/docs/iam/api/account) responsible for this participant.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The unique ID of the [Conversation](https://www.twilio.com/docs/conversations/api/conversation-resource) for this message.
                    def conversation_sid
                        @properties['conversation_sid']
                    end
                    
                    ##
                    # @return [String] A 34 character string that uniquely identifies this resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the message within a [Conversation](https://www.twilio.com/docs/conversations/api/conversation-resource) the delivery receipt belongs to
                    def message_sid
                        @properties['message_sid']
                    end
                    
                    ##
                    # @return [String] A messaging channel-specific identifier for the message delivered to participant e.g. `SMxx` for SMS, `WAxx` for Whatsapp etc. 
                    def channel_message_sid
                        @properties['channel_message_sid']
                    end
                    
                    ##
                    # @return [String] The unique ID of the participant the delivery receipt belongs to.
                    def participant_sid
                        @properties['participant_sid']
                    end
                    
                    ##
                    # @return [DeliveryStatus] 
                    def status
                        @properties['status']
                    end
                    
                    ##
                    # @return [String] The message [delivery error code](https://www.twilio.com/docs/sms/api/message-resource#delivery-related-errors) for a `failed` status, 
                    def error_code
                        @properties['error_code']
                    end
                    
                    ##
                    # @return [Time] The date that this resource was created.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date that this resource was last updated. `null` if the delivery receipt has not been updated.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] An absolute API resource URL for this delivery receipt.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the DeliveryReceiptInstance
                    # @return [DeliveryReceiptInstance] Fetched DeliveryReceiptInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.DeliveryReceiptInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.DeliveryReceiptInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


