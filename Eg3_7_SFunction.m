function [sys,x0,str,ts,simStateCompliance] = Eg3_7_SFunction(t,x,u,flag)

switch flag
    case 0                                                        % 初始化
        [sys,x0,str,ts,simStateCompliance] = mdlInitializeSizes;
    case 1                                                        % 计算模块导数
        sys = mdlDerivatives(t,x,u);
    case 2                                                        % 更新模块离散状态
        sys = mdlUpdate(t,x,u);
    case 3                                                        % 计算模块输出
        sys = mdlOutpus(t,x,u);
    case 4                                                        % 计算下一个采样时间点
        sys = mdlGetTimeOfNextVarHit(t,x,u);
    case 9                                                        % 仿真结束
        sys = mdlTerminate(t,x,u);
    otherwise
        DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));
end


function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
sizes = simsizes;                           % 用于设置模块参数的结构体用simsizes来生成
sizes.NumContStates  = 0;                   % 系统中的连续状态变量个数为0
sizes.NumDiscStates  = 0;                   % 系统中的离散状态变量个数为0
sizes.NumOutputs     = 1;                   % 系统的输出个数为1
sizes.NumInputs      = 1;                   % 系统的输入个数为1
sizes.DirFeedthrough = 1;                   % 输入和输出间不存在直接比例关系
sizes.NumSampleTimes = 1;                   % 只有1个采样时间
sys = simsizes(sizes);                      % 设置完后赋给sys输出
x0  = [];                                   % 设置状态变量的初始值
str = [];                                   % 固定格式
ts  = [0 0];                                % 该取值对应纯连续函数
simStateCompliance = 'UnknownSimState';


% 计算模块导数子函数
function sys=mdlDerivatives(t,x,u)
sys = [];


% 更新模块离散状态子函数
function sys=mdlUpdate(t,x,u)
sys = [];


% 计算模块输出子函数
function sys = mdlOutpus(t,x,u)
if u >= 0 && u <= 3
    sys = 0.4 * u;
else
    if u >= 3 && u <= 16
        sys = 0.8 * u + 1.39;
    end
end


% 计算下一个采样时间点子函数
function sys=mdlGetTimeOfNextVarHit(t,x,u)
sampleTime = 1;   
sys = t + sampleTime;


% 仿真结束子函数
function sys=mdlTerminate(t,x,u)
sys = [];


