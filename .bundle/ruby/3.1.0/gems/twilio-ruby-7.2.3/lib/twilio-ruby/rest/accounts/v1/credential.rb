##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Accounts
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Accounts < AccountsBase
            class V1 < Version
                class CredentialList < ListResource
                
                    ##
                    # Initialize the CredentialList
                    # @param [Version] version Version that contains the resource
                    # @return [CredentialList] CredentialList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Credentials"
                        # Components
                        @public_key = nil
                        @aws = nil
                    end
                

                ##
                # Access the public_key
                # @return [PublicKeyList]
                # @return [PublicKeyContext] if sid was passed.
                def public_key(sid=:unset)
                    raise ArgumentError, 'sid cannot be nil' if sid.nil?

                    if sid != :unset
                        return PublicKeyContext.new(@version,sid )
                    end

                    @public_key ||= PublicKeyList.new(@version )
                end
                ##
                # Access the aws
                # @return [AwsList]
                # @return [AwsContext] if sid was passed.
                def aws(sid=:unset)
                    raise ArgumentError, 'sid cannot be nil' if sid.nil?

                    if sid != :unset
                        return AwsContext.new(@version,sid )
                    end

                    @aws ||= AwsList.new(@version )
                end

                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Accounts.V1.CredentialList>'
                    end
                end

                class CredentialPage < Page
                    ##
                    # Initialize the CredentialPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [CredentialPage] CredentialPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of CredentialInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [CredentialInstance] CredentialInstance
                    def get_instance(payload)
                        CredentialInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Accounts.V1.CredentialPage>'
                    end
                end
                class CredentialInstance < InstanceResource
                    ##
                    # Initialize the CredentialInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Credential
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [CredentialInstance] CredentialInstance
                    def initialize(version )
                        super(version)
                        
                    end

                    
                    ##
                    # Provide a user friendly representation
                    def to_s
                        "<Twilio.Accounts.V1.CredentialInstance>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        "<Twilio.Accounts.V1.CredentialInstance>"
                    end
                end

            end
        end
    end
end