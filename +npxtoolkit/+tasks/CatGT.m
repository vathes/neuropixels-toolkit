classdef CatGT < npxtoolkit.tasks.TaskBase
    %CatGT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        TaskInfo
        Input
        Output
    end
    
    methods
        function obj = CatGT(taskInfo, input)
            obj.TaskInfo = taskInfo;
            obj.Input = input;
        end
        
        function execute(obj)
            disp(strcat("Running task: ", obj.TaskInfo))
        end
    end
end

