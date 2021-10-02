function [NL,EL,BC_Stored,DistributedLoads] = problem_selection_beam_bending(problem_number)
%% BC_Stored = [nodenumber,bcinput,deflectiontype,loadtype,magnitude];
%% DistributedLoads = [node1,node2,magnitude];
%%  For the Problem 12.39 - Creating the NL, EL and assigning the BCs&Distributed Loads
% TAKING a = 1m; and M0 = 1Nm;
if problem_number == "12.13"
    NL = [0 0;
          1 0;
          2 0;
          3 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Bending Moment","-1";
                 "3","Load","-","Bending Moment","1";
                 "4","Deflection","Displacement","-","0"];
    DistributedLoads = [];
elseif problem_number == "12.39"
    NL = [0 0; 
          1 0;
          3 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Deflection","Slope","-","0";
                 "2","Load","-","Shear Force","-22.5*10^3";
                 "3","Load","-","Shear Force","-15000"];
    DistributedLoads = [];
elseif problem_number == "12.35"
    NL = [0 0;
          1.5 0;
          4 0;
          6 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-20000";
                 "3","Load","-","Shear Force","-22.5*10^3";
                 "4","Deflection","Displacement","-","0"];
    DistributedLoads = [];
elseif problem_number == "12.42"
    NL = [0 0;
          3 0;
          8 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-30000";
                 "3","Deflection","Displacement","-","0"];
    DistributedLoads = [1,2,-12000;
                        2,3,-12000];
elseif problem_number == "12.49"
    NL = [0 0;
          2 0;
          3 0;
          5 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["2","Deflection","Displacement","-","0";
                 "3","Load","-","Shear Force","-225*10^3";
                 "4","Deflection","Displacement","-","0"];
    DistributedLoads = [1,2,-150000];
elseif problem_number == "12.50"
    NL = [0 0;
          5 0;
          8 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Deflection","Displacement","-","0";
                 "3","Load","-","Bending Moment","-15000"];
    DistributedLoads = [1,2,-3000];
elseif problem_number == "12.87"
    NL = [0 0;
          5 0;
          10 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-20000";
                 "3","Deflection","Displacement","-","0"];
    DistributedLoads = [2,3,-4000];
elseif problem_number == "12.105"
    NL = [0 0; %length taken as 10
          10 0];
    EL = [1 2];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Load","-","Bending Moment","1"; %M0 taken as 1(CCW)
                 "2","Deflection","Displacement","-","0";
                 "2","Deflection","Slope","-","0"];
    DistributedLoads = [];
elseif problem_number == "12.106"
    NL = [0 0; %length taken as 3
          1 0;
          3 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Deflection","Slope","-","0"; 
                 "2","Load","-","Shear Force","-15"; %wo taken as 10
                 "3","Deflection","Displacement","-","0"];
    DistributedLoads = []; 
elseif problem_number == "12.107"
    NL = [0 0;
          1 0;
          3 0]; %L taken as 3
    EL = [1 2;
          2 3];
    BC_Stored = ["2","Deflection","Displacement","-","0";
                 "3","Deflection","Displacement","-","0";
                 "3","Deflection","Slope","-","0"];
    DistributedLoads = [1,2,-10; %w taken as 10
                        2,3,-10];
elseif problem_number == "12.108"
    NL = [0 0;
          2 0;
          4 0]; %L taken as 4
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Deflection","Slope","-","0";
                 "3","Deflection","Displacement","-","0";
                 "3","Deflection","Slope","-","0"];
    DistributedLoads = [1,2,-10; %w taken as 10
                        2,3,-10];
elseif problem_number == "12.119"
    NL = [0 0; %L taken as 2
          1 0;
          2 0;
          3 0;
          4 0];
    EL = [1 2;
          2 3;
          3 4;
          4 5];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "3","Deflection","Displacement","-","0";
                 "5","Deflection","Displacement","-","0"];
    DistributedLoads = [1,2,-10;
                        2,3,-10]; 
elseif problem_number == "F12.1"
    NL = [0 0;
          3 0];
    EL = [1 2];
    BC_Stored = ["1","Load","-","Bending Moment","-30000";
                 "2","Deflection","Displacement","-","0";
                 "2","Deflection","Slope","-","0"];
    DistributedLoads = [];    
elseif problem_number == "F12.2"
    NL = [0 0;
          3 0];
    EL =  [1 2];
    BC_Stored = ["1","Load","-","Bending Moment","10000";
                 "1","Load","-","Shear Force","-10000";
                 "2","Deflection","Displacement","-","0";
                 "2","Deflection","Slope","-","0"];
    DistributedLoads = [];    
elseif problem_number == "F12.3"
    NL = [0 0;
          3 0];
    EL =  [1 2];
    BC_Stored = ["1","Load","-","Shear Force","-10000";
                 "2","Deflection","Displacement","-","0";
                 "2","Deflection","Slope","-","0"];
    DistributedLoads = [1,2,-3000];    
elseif problem_number == "F12.5"
    NL = [0 0;
          6 0];
    EL =  [1 2];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Load","-","Bending Moment","-40000";
                 "2","Deflection","Displacement","-","0";
                 "2","Load","-","Bending Moment","10000"];
    DistributedLoads = [];    
elseif problem_number == "F12.6"
    NL = [0 0;
          3 0;
          6 0];
    EL =  [1 2;
           2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Load","-","Bending Moment","-10000";
                 "2","Load","-","Shear Force","-20000";
                 "3","Deflection","Displacement","-","0";
                 "3","Load","-","Bending Moment","10000"];
    DistributedLoads = [];  
elseif problem_number == "12.40/41"
    NL = [0 0;
          1.8 0;
          3.6 0;
          5.4 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-30000";
                 "3","Deflection","Displacement","-","0";
                 "4","Load","-","Shear Force","-15000"];
    DistributedLoads = [3,4,-30000];
elseif problem_number == "12.38"
    NL = [0 0;
          2 0;
          4 0;
          6 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-30000";
                 "3","Load","-","Shear Force","-15000";
                 "4","Deflection","Displacement","-","0"];
    DistributedLoads = [];    
elseif problem_number == "Sample4.2"
    NL = [0 0;
          3 0;
          9 0;
          11 0;
          13 0];
    EL = [1 2;
          2 3;
          3 4;
          4 5];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Load","-","Shear Force","-15";
                 "3","Deflection","Displacement","-","0";
                 "4","Load","-","Shear Force","-6";
                 "5","Load","-","Shear Force","-6"];
    DistributedLoads = [];
elseif problem_number == "5.68"
    NL = [0 0;
          2 0;
          6 0;
          10 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "1","Deflection","Slope","-","0";
                 "2","Load","-","Shear Force","-12"];
    DistributedLoads = [1,2,-2;
                        2,3,-2;
                        3,4,-2];
elseif problem_number == "5.70"
    NL = [0 0;
          6 0;
          15 0;
          17 0;
          21 0];
    EL = [1 2;
          2 3;
          3 4;
          4 5];
    BC_Stored = ["2","Deflection","Displacement","-","0";
                 "2","Deflection","Slope","-","0";
                 "4","Load","-","Shear Force","-600"];
    DistributedLoads = [1,2,-200;
                        2,3,-200];
elseif problem_number == "5.143"
    NL = [0 0;
          3 0;
          3+(1/3) 0;
          4 0];
    EL = [1 2;
          2 3;
          3 4];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "2","Deflection","Displacement","-","0";
                 "3","Load","-","Shear Force","-450"];
    DistributedLoads = [1,2,-900]; 
elseif problem_number == "Sample7.5"
    NL = [0 0;
          6 0;
          9 0];
    EL = [1 2;
          2 3];
    BC_Stored = ["1","Deflection","Displacement","-","0";
                 "3","Deflection","Displacement","-","0"];
    DistributedLoads = [1,2,-20000]; 
end
end

