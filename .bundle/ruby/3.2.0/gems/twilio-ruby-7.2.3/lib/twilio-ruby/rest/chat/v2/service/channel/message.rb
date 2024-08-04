##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Chat
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Chat < ChatBase
            class V2 < Version
                class ServiceContext < InstanceContext
                class ChannelContext < InstanceContext

                     class MessageList < ListResource
                
                    ##
                    # Initialize the MessageList
                    # @param [Version] version Version that contains the resource
                    # @return [MessageList] MessageList
                    def initialize(version, service_sid: nil, channel_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { service_sid: service_sid, channel_sid: channel_sid }
                        @uri = "/Services/#{@solution[:service_sid]}/Channels/#{@solution[:channel_sid]}/Messages"
                        
                    end
                    ##
                    # Create the MessageInstance
                    # @param [String] from The [Identity](https://www.twilio.com/docs/chat/identity) of the new message's author. The default value is `system`.
                    # @param [String] attributes A valid JSON string that contains application-specific data.
                    # @param [Time] date_created The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was created. The default value is the current time set by the Chat service. This parameter should only be used when a Chat's history is being recreated from a backup/separate source.
                    # @param [Time] date_updated The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was last updated.
                    # @param [String] last_updated_by The [Identity](https://www.twilio.com/docs/chat/identity) of the User who last updated the Message, if applicable.
                    # @param [String] body The message to send to the channel. Can be an empty string or `null`, which sets the value as an empty string. You can send structured data in the body by serializing it as a string.
                    # @param [String] media_sid The SID of the [Media](https://www.twilio.com/docs/chat/rest/media) to attach to the new Message.
                    # @param [MessageEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [MessageInstance] Created MessageInstance
                    def create(
                        from: :unset, 
                        attributes: :unset, 
                        date_created: :unset, 
                        date_updated: :unset, 
                        last_updated_by: :unset, 
                        body: :unset, 
                        media_sid: :unset, 
                        x_twilio_webhook_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'From' => from,
                            'Attributes' => attributes,
                            'DateCreated' => Twilio.serialize_iso8601_datetime(date_created),
                            'DateUpdated' => Twilio.serialize_iso8601_datetime(date_updated),
                            'LastUpdatedBy' => last_updated_by,
                            'Body' => body,
                            'MediaSid' => media_sid,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', 'X-Twilio-Webhook-Enabled' => x_twilio_webhook_enabled, })
                        
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        MessageInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            channel_sid: @solution[:channel_sid],
                        )
                    end

                
                    ##
                    # Lists MessageInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [OrderType] order The sort order of the returned messages. Can be: `asc` (ascending) or `desc` (descending) with `asc` as the default.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(order: :unset, limit: nil, page_size: nil)
                        self.stream(
                            order: order,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [OrderType] order The sort order of the returned messages. Can be: `asc` (ascending) or `desc` (descending) with `asc` as the default.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(order: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            order: order,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields MessageInstance records from the API.
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
                    # Retrieve a single page of MessageInstance records from the API.
                    # Request is executed immediately.
                    # @param [OrderType] order The sort order of the returned messages. Can be: `asc` (ascending) or `desc` (descending) with `asc` as the default.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of MessageInstance
                    def page(order: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'Order' => order,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        MessagePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of MessageInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of MessageInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    MessagePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Chat.V2.MessageList>'
                    end
                end


                class MessageContext < InstanceContext
                    ##
                    # Initialize the MessageContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The SID of the [Service](https://www.twilio.com/docs/chat/rest/service-resource) to update the Message resource in.
                    # @param [String] channel_sid The SID of the [Channel](https://www.twilio.com/docs/chat/channels) the Message resource to update belongs to. This value can be the Channel resource's `sid` or `unique_name`.
                    # @param [String] sid The SID of the Message resource to update.
                    # @return [MessageContext] MessageContext
                    def initialize(version, service_sid, channel_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, channel_sid: channel_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Channels/#{@solution[:channel_sid]}/Messages/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Delete the MessageInstance
                    # @param [MessageEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        x_twilio_webhook_enabled: :unset
                    )

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', 'X-Twilio-Webhook-Enabled' => x_twilio_webhook_enabled, })
                        
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Fetch the MessageInstance
                    # @return [MessageInstance] Fetched MessageInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        MessageInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            channel_sid: @solution[:channel_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the MessageInstance
                    # @param [String] body The message to send to the channel. Can be an empty string or `null`, which sets the value as an empty string. You can send structured data in the body by serializing it as a string.
                    # @param [String] attributes A valid JSON string that contains application-specific data.
                    # @param [Time] date_created The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was created. The default value is the current time set by the Chat service. This parameter should only be used when a Chat's history is being recreated from a backup/separate source.
                    # @param [Time] date_updated The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was last updated.
                    # @param [String] last_updated_by The [Identity](https://www.twilio.com/docs/chat/identity) of the User who last updated the Message, if applicable.
                    # @param [String] from The [Identity](https://www.twilio.com/docs/chat/identity) of the message's author.
                    # @param [MessageEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [MessageInstance] Updated MessageInstance
                    def update(
                        body: :unset, 
                        attributes: :unset, 
                        date_created: :unset, 
                        date_updated: :unset, 
                        last_updated_by: :unset, 
                        from: :unset, 
                        x_twilio_webhook_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'Body' => body,
                            'Attributes' => attributes,
                            'DateCreated' => Twilio.serialize_iso8601_datetime(date_created),
                            'DateUpdated' => Twilio.serialize_iso8601_datetime(date_updated),
                            'LastUpdatedBy' => last_updated_by,
                            'From' => from,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', 'X-Twilio-Webhook-Enabled' => x_twilio_webhook_enabled, })
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        MessageInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            channel_sid: @solution[:channel_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Chat.V2.MessageContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Chat.V2.MessageContext #{context}>"
                    end
                end

                class MessagePage < Page
                    ##
                    # Initialize the MessagePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [MessagePage] MessagePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of MessageInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [MessageInstance] MessageInstance
                    def get_instance(payload)
                        MessageInstance.new(@version, payload, service_sid: @solution[:service_sid], channel_sid: @solution[:channel_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Chat.V2.MessagePage>'
                    end
                end
                class MessageInstance < InstanceResource
                    ##
                    # Initialize the MessageInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Message
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [MessageInstance] MessageInstance
                    def initialize(version, payload , service_sid: nil, channel_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'attributes' => payload['attributes'],
                            'service_sid' => payload['service_sid'],
                            'to' => payload['to'],
                            'channel_sid' => payload['channel_sid'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'last_updated_by' => payload['last_updated_by'],
                            'was_edited' => payload['was_edited'],
                            'from' => payload['from'],
                            'body' => payload['body'],
                            'index' => payload['index'] == nil ? payload['index'] : payload['index'].to_i,
                            'type' => payload['type'],
                            'media' => payload['media'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'channel_sid' => channel_sid  || @properties['channel_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [MessageContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = MessageContext.new(@version , @params['service_sid'], @params['channel_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Message resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Message resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The JSON string that stores application-specific data. If attributes have not been set, `{}` is returned.
                    def attributes
                        @properties['attributes']
                    end
                    
                    ##
                    # @return [String] The SID of the [Service](https://www.twilio.com/docs/chat/rest/service-resource) the Message resource is associated with.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Channel](https://www.twilio.com/docs/chat/channels) that the message was sent to.
                    def to
                        @properties['to']
                    end
                    
                    ##
                    # @return [String] The SID of the [Channel](https://www.twilio.com/docs/chat/channels) the Message resource belongs to.
                    def channel_sid
                        @properties['channel_sid']
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
                    # @return [String] The [Identity](https://www.twilio.com/docs/chat/identity) of the User who last updated the Message, if applicable.
                    def last_updated_by
                        @properties['last_updated_by']
                    end
                    
                    ##
                    # @return [Boolean] Whether the message has been edited since it was created.
                    def was_edited
                        @properties['was_edited']
                    end
                    
                    ##
                    # @return [String] The [Identity](https://www.twilio.com/docs/chat/identity) of the message's author. The default value is `system`.
                    def from
                        @properties['from']
                    end
                    
                    ##
                    # @return [String] The content of the message.
                    def body
                        @properties['body']
                    end
                    
                    ##
                    # @return [String] The index of the message within the [Channel](https://www.twilio.com/docs/chat/channels). Indices may skip numbers, but will always be in order of when the message was received.
                    def index
                        @properties['index']
                    end
                    
                    ##
                    # @return [String] The Message type. Can be: `text` or `media`.
                    def type
                        @properties['type']
                    end
                    
                    ##
                    # @return [Hash] An object that describes the Message's media, if the message contains media. The object contains these fields: `content_type` with the MIME type of the media, `filename` with the name of the media, `sid` with the SID of the Media resource, and `size` with the media object's file size in bytes. If the Message has no media, this value is `null`.
                    def media
                        @properties['media']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Message resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the MessageInstance
                    # @param [MessageEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        x_twilio_webhook_enabled: :unset
                    )

                        context.delete(
                            x_twilio_webhook_enabled: x_twilio_webhook_enabled, 
                        )
                    end

                    ##
                    # Fetch the MessageInstance
                    # @return [MessageInstance] Fetched MessageInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the MessageInstance
                    # @param [String] body The message to send to the channel. Can be an empty string or `null`, which sets the value as an empty string. You can send structured data in the body by serializing it as a string.
                    # @param [String] attributes A valid JSON string that contains application-specific data.
                    # @param [Time] date_created The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was created. The default value is the current time set by the Chat service. This parameter should only be used when a Chat's history is being recreated from a backup/separate source.
                    # @param [Time] date_updated The date, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, to assign to the resource as the date it was last updated.
                    # @param [String] last_updated_by The [Identity](https://www.twilio.com/docs/chat/identity) of the User who last updated the Message, if applicable.
                    # @param [String] from The [Identity](https://www.twilio.com/docs/chat/identity) of the message's author.
                    # @param [MessageEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [MessageInstance] Updated MessageInstance
                    def update(
                        body: :unset, 
                        attributes: :unset, 
                        date_created: :unset, 
                        date_updated: :unset, 
                        last_updated_by: :unset, 
                        from: :unset, 
                        x_twilio_webhook_enabled: :unset
                    )

                        context.update(
                            body: body, 
                            attributes: attributes, 
                            date_created: date_created, 
                            date_updated: date_updated, 
                            last_updated_by: last_updated_by, 
                            from: from, 
                            x_twilio_webhook_enabled: x_twilio_webhook_enabled, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Chat.V2.MessageInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Chat.V2.MessageInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end

