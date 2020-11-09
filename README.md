@[TOC](《Matlab/Simulink与控制系统仿真》程序指令总结)
# Matlab_Simulink_BookExample

图书：《Matlab/Simulink与控制系统仿真》

# 2. Matlab 计算基础

## 表2.1 Matlab 常用文件管理命令

|命令|功能|命令|功能|
|-|-|-|-|
|what|显示当前目录下所有与Matlab有关的文件及路径|type filename|在命令窗口中显示文件 filename|
|dir|显示当前目录下所有文件|delete filename|删除文件 filename|
|which|显示某个文件的路径|cd ..|返回上一级目录|
|cd path|进入 path 目录|cd|显示当前目录|

## 表2.2 Matlab 常用帮助命令

|命令|功能|命令|功能|
|-|-|-|-|
|help matfun|矩阵函数-数值线性代数|help datafun|数据分析和傅立叶变换函数|
|help general|通用命令|help ops|操作符和特殊字符|
|help graphics|通用图形函数|help polyfun|多项式和内插函数|
|help elfun|基本的数学函数|help lang|语言结构和调试|
|help elmat|基本矩阵和矩阵操作|help strfun|字符串函数|
|help control|控制系统工具箱函数|||

## 表2.3 Matlab 默认常量

|名称|说明|名称|说明|
|-|-|-|-|
|pi|圆周率|eps|浮点数的相对误差|
|INF (或inf)|无穷大|i(或j)|虚数单位，定义为$\sqrt{-1}$|
|NaN (或nan)|代表不定值 (即0/0)|nargin|函数实际输入参数个数|
|realman|最大的正实数|nargout|函数实际输出参数个数|
|realmix|最小的正实数|ANS (或ans)|默认变量名，以应答最近一次操作运算结果|

## 表2.4 Matlab 的数据显示格式

|格式|含义|格式|含义|
|-|-|-|-|
|format (short)|短格式 (5位定点数)|format long e|长格式 e 方式|
|format long|长格式 (15位定点数)|format bank|2位十进制格式|
|format short e|短格式 e 方式|format hex|十六进制格式|

## 表2.5 Matlab 常用特殊矩阵生成函数

|函数|功能说明|函数|功能说明|
|-|-|-|-|
|zeros( )|生成元素全为 0 的矩阵|tril( )|生成下三角矩阵|
|ones( )|生成元素全为 1 的矩阵|eye( )|生成单位矩阵|
|rand( )|生成均匀分布随机矩阵|company( )|生成伴随矩阵|
|randn( )|生成正态分布随机矩阵|hilb( )|生成 Hilbert 矩阵|
|magic( )|生成魔方矩阵|vander( )|生成 vander 矩阵|
|diag( )|生成对角矩阵|hankel( )|生成 hankel 矩阵|
|triu( )|生成上三角矩阵|hadamard( )|生成 hadamard 矩阵|

## 表2.6 矩阵基本运算

|操作符号|功能说明|操作符号|功能说明|
|-|-|-|-|
|+|矩阵加法|/|矩阵的左除|
|-|矩阵减法|'|矩阵转置|
|*|矩阵乘法|logm( )|矩阵对数运算|
|^|矩阵的幂|expm( )|矩阵指数运算|
|\\|矩阵的右除|inv( )|矩阵求逆|

## 表2.7 常用矩阵函数运算

|操作符号|功能说明|操作符号|功能说明|
|-|-|-|-|
|rot90( )|矩阵逆时针旋转 90 度|eig( )|矩阵的特征值和特征向量|
|flipud( )|矩阵上下翻转|rank( )|计算矩阵的秩|
|fliplr( )|矩阵左右反转|trace( )|计算矩阵的迹|
|flipdim( )|矩阵的某维元素翻转|norm( )|计算矩阵的范数|
|shiftdim( )|矩阵的元素移位|poly( )|计算矩阵的特征方程的根|

## 表2.8 常用矩阵分解运算函数

|函数名|功能说明|函数名|功能说明|
|-|-|-|-|
|eig( )|矩阵的特征值分解|svd( )|矩阵的奇异值分解|
|qr( )|矩阵的 QR 分解|chol( )|矩阵的 Cholesky 分解|
|schur( )|矩阵的 Schur 分解|lu( )|矩阵的 LU 分解|

## 表2.9 关系运算符

|符号|功能|
|-|-|
|<|小于|
|<=|小于等于|
|>|大于|
|>=|大于等于|
|==|等于|
|~=|不等于|

## 表2.10 逻辑运算符

|符号|功能|
|-|-|
|&|逻辑与|
|\||逻辑或|
|~|逻辑非|

## 表2.11 关系运算函数

|函数名|功能|函数名|功能|
|-|-|-|-|
|all|所有向量为非零元素时为真|xor|逻辑异或运算|
|any|任意向量为非零元素时为真|||

## 表2.12 逻辑运算函数

|函数名|功能|函数名|功能|
|-|-|-|-|
|Bitand|位方式的逻辑与运算|Bitcmp|位比较运算|
|Bitor|位方式的逻辑或运算|Bitmax|最大无符号浮点整数|
|Bitxor|位方式的逻辑异或运算|Bitshift|将二进制移位运算|

## 2.6 符号运算

`sym (syms)` 定义符号变量（表达式）

`diff(f,x,n)` 表示 f 关于 x 求 n 阶导数

`int(f, r, x0, x1)` 表示 f 关于 r 求从 x0 到 x1 的定积分

## 2.7 复数运算基础

`subs` 对符号函数中自变量进行赋值
e.g. subs(f, {x,y}, {-1,2}) 对函数 f 中自变量 x 和 y 分别赋值 -1 和 2

`polar()` 绘制极坐标图

## 表2.13 复数的结构操作函数

|函数名|功能|函数名|功能|
|-|-|-|-|
|real(A)|求复数或复数矩阵 A 的实部|abs(A)|求复数或复数矩阵 A 的模|
|image(A)|求虚部|angle(A)|求相角，单位位弧度|
|conj(A)|求共轭|||

`residue()` 求有理式的留数

`laplace` 拉氏变换
`ilaplace` 拉氏反变换

`ztrans()` Z变换
`iztrans()` Z反变换

## 2.8 Matlab 常用绘图命令

`help graph2d` 所有画二维图形的命令
`help graph3d` 所有画三维图形的命令

`plot(x1, y1, option1, x2, y2, option2, ...)`
`figure()` 图形窗口
`subplot()` 分割图形

## 2.9 Matlab 程序设计

`function[out1, out2] = filename(in1, in2, ...)`

# 3. Simulink 仿真

# 4. 控制系统数学模型

`ode23` 微分方程求解
`ode45` 微分方程求解

`num` 分子多项式
`den` 分母多项式

`conv()` 多项式乘法函数

`roots()` 多项式求根函数

`poly()` 由根创建多项式函数

`polyval()` 求多项式在给定点的值函数

`tf()` 建立传递函数模型的函数

`tfdata()` 提取模型中分子分母多项式系数的函数

`zpk()` 建立零极点形式的数学模型

`zpkdata()` 提取模型中零极点和增益向量的函数

`residue()` 传递函数模型部分分式展开的函数

`ss()` 建立状态空间模型的函数

`ssdata()` 提取模型中状态空间矩阵的函数

## 表4.4 模型转换函数

|函数名|功能|函数名|功能|
|-|-|-|-|
|ss2tf|状态空间模型转换为传递函数模型|tf2ss|传递函数模型转换为状态空间模型|
|ss2zp|状态空间模型转换为零极点模型|zp2ss|零极点模型转换为状态空间模型|
|tf2zp|传递函数模型转换为零极点模型|zp2tf|零极点模型转换传递函数模型|


`series(num1, den1, num2, den2)` 串联连接函数

`parallel(num1, den1, num2, den2)` 并联连接函数

`feedback(num1, den1, num2, den2, sign)` 反馈连接函数

`cloop(num, den, sign)` 闭环连接函数

# 5. Matlab/Simulink 在时域分析中的应用

`step()` 单位阶跃响应函数

`impulse()` 单位脉冲响应函数

`initial()` 零输入响应函数

`lsim()` 任意输入响应函数

`pzmap()` 绘制系统的零极点图

# 6. 根轨迹分析法

`pzmap()` 绘制零极点的函数

`rlocus()` 绘制根轨迹的函数

`rlocfind()` 计算给定一组根的根轨迹增益的函数

`sgrid()` 在连续系统根轨迹图上加等阻尼线和等自然振荡角频率线的函数

`zgrid()` 在离散系统根轨迹图上加等阻尼线和等自然振荡角频率线的函数

# 7. 频域分析法

`nyquist()` Nyquist 曲线绘制函数

`bode()` Bode 图绘制函数

`nichols()` Nichols 曲线绘制函数

`ngrid()` 绘制等 M 圆和等 N 圆的函数

`margin` 计算系统稳定裕度的函数

# 8. 控制系统校正与综合

# 9. 线性系统状态空间分析

`canon()` 将系统直接转化为对角型的函数

`ss2ss()` 进行状态空间表达式的线性变换的函数

`ctrb()` 求取系统可控判别矩阵的函数

`obsv()` 求取系统可观判别矩阵的函数

`ctrbf()` 系统进行能控性分解的函数

`obsvf()` 系统进行能观测性分解的函数

`lyap()` `lyap2()` `dlyap()` 求解李亚普诺夫方程函数
