classdef Assembly < handle
    %Assembly Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        assemblyInfo
        sessions
    end
    
    methods
        function obj = Assembly(assemblyInfo)
            obj.assemblyInfo = assemblyInfo
            obj.sessions = {};
        end
        
        function obj = add_session(session)
            obj.sessions{end+1} = session;
        end

        function par_execute(obj)
            % sessions can run in parallel
            for session = obj.sessions
                curr = session{:};
                curr.execute();
            end
        end
    end

    methods(Static)
        function config = load_json(fpath)
            fid = fopen(fpath); 
            raw = fread(fid,inf); 
            config = char(raw'); 
            fclose(fid);
            disp(config) % debug
            config = jsondecode(config);
        end
    end
end

