##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Taskrouter
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Taskrouter < TaskrouterBase
            class V1 < Version
                class WorkspaceContext < InstanceContext

                     class WorkspaceRealTimeStatisticsList < ListResource
                
                    ##
                    # Initialize the WorkspaceRealTimeStatisticsList
                    # @param [Version] version Version that contains the resource
                    # @return [WorkspaceRealTimeStatisticsList] WorkspaceRealTimeStatisticsList
                    def initialize(version, workspace_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { workspace_sid: workspace_sid }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsList>'
                    end
                end


                class WorkspaceRealTimeStatisticsContext < InstanceContext
                    ##
                    # Initialize the WorkspaceRealTimeStatisticsContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] workspace_sid The SID of the Workspace to fetch.
                    # @return [WorkspaceRealTimeStatisticsContext] WorkspaceRealTimeStatisticsContext
                    def initialize(version, workspace_sid)
                        super(version)

                        # Path Solution
                        @solution = { workspace_sid: workspace_sid,  }
                        @uri = "/Workspaces/#{@solution[:workspace_sid]}/RealTimeStatistics"

                        
                    end
                    ##
                    # Fetch the WorkspaceRealTimeStatisticsInstance
                    # @param [String] task_channel Only calculate real-time statistics on this TaskChannel. Can be the TaskChannel's SID or its `unique_name`, such as `voice`, `sms`, or `default`.
                    # @return [WorkspaceRealTimeStatisticsInstance] Fetched WorkspaceRealTimeStatisticsInstance
                    def fetch(
                        task_channel: :unset
                    )

                        params = Twilio::Values.of({
                            'TaskChannel' => task_channel,
                        })
                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, params: params, headers: headers)
                        WorkspaceRealTimeStatisticsInstance.new(
                            @version,
                            payload,
                            workspace_sid: @solution[:workspace_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsContext #{context}>"
                    end
                end

                class WorkspaceRealTimeStatisticsPage < Page
                    ##
                    # Initialize the WorkspaceRealTimeStatisticsPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [WorkspaceRealTimeStatisticsPage] WorkspaceRealTimeStatisticsPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of WorkspaceRealTimeStatisticsInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [WorkspaceRealTimeStatisticsInstance] WorkspaceRealTimeStatisticsInstance
                    def get_instance(payload)
                        WorkspaceRealTimeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsPage>'
                    end
                end
                class WorkspaceRealTimeStatisticsInstance < InstanceResource
                    ##
                    # Initialize the WorkspaceRealTimeStatisticsInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this WorkspaceRealTimeStatistics
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [WorkspaceRealTimeStatisticsInstance] WorkspaceRealTimeStatisticsInstance
                    def initialize(version, payload , workspace_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'activity_statistics' => payload['activity_statistics'],
                            'longest_task_waiting_age' => payload['longest_task_waiting_age'] == nil ? payload['longest_task_waiting_age'] : payload['longest_task_waiting_age'].to_i,
                            'longest_task_waiting_sid' => payload['longest_task_waiting_sid'],
                            'tasks_by_priority' => payload['tasks_by_priority'],
                            'tasks_by_status' => payload['tasks_by_status'],
                            'total_tasks' => payload['total_tasks'] == nil ? payload['total_tasks'] : payload['total_tasks'].to_i,
                            'total_workers' => payload['total_workers'] == nil ? payload['total_workers'] : payload['total_workers'].to_i,
                            'workspace_sid' => payload['workspace_sid'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'workspace_sid' => workspace_sid  || @properties['workspace_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [WorkspaceRealTimeStatisticsContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = WorkspaceRealTimeStatisticsContext.new(@version , @params['workspace_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Workspace resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [Array<Hash>] The number of current Workers by Activity.
                    def activity_statistics
                        @properties['activity_statistics']
                    end
                    
                    ##
                    # @return [String] The age of the longest waiting Task.
                    def longest_task_waiting_age
                        @properties['longest_task_waiting_age']
                    end
                    
                    ##
                    # @return [String] The SID of the longest waiting Task.
                    def longest_task_waiting_sid
                        @properties['longest_task_waiting_sid']
                    end
                    
                    ##
                    # @return [Hash] The number of Tasks by priority. For example: `{\"0\": \"10\", \"99\": \"5\"}` shows 10 Tasks at priority 0 and 5 at priority 99.
                    def tasks_by_priority
                        @properties['tasks_by_priority']
                    end
                    
                    ##
                    # @return [Hash] The number of Tasks by their current status. For example: `{\"pending\": \"1\", \"reserved\": \"3\", \"assigned\": \"2\", \"completed\": \"5\"}`.
                    def tasks_by_status
                        @properties['tasks_by_status']
                    end
                    
                    ##
                    # @return [String] The total number of Tasks.
                    def total_tasks
                        @properties['total_tasks']
                    end
                    
                    ##
                    # @return [String] The total number of Workers in the Workspace.
                    def total_workers
                        @properties['total_workers']
                    end
                    
                    ##
                    # @return [String] The SID of the Workspace.
                    def workspace_sid
                        @properties['workspace_sid']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Workspace statistics resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the WorkspaceRealTimeStatisticsInstance
                    # @param [String] task_channel Only calculate real-time statistics on this TaskChannel. Can be the TaskChannel's SID or its `unique_name`, such as `voice`, `sms`, or `default`.
                    # @return [WorkspaceRealTimeStatisticsInstance] Fetched WorkspaceRealTimeStatisticsInstance
                    def fetch(
                        task_channel: :unset
                    )

                        context.fetch(
                            task_channel: task_channel, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Taskrouter.V1.WorkspaceRealTimeStatisticsInstance #{values}>"
                    end
                end

             end
            end
        end
    end
end

