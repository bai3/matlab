function varargout = GUI_201421143062_bzx(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_201421143062_bzx_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_201421143062_bzx_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function GUI_201421143062_bzx_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
%handles.me = 2;
guidata(hObject, handles);
%数字键盘图标设计
NO1=imread('1.png');
NO2=imread('2.png');
NO3=imread('3.png');
NO4=imread('4.png');
NO5=imread('5.png');
NO6=imread('6.png');
NO7=imread('7.png');
NO8=imread('8.png');
NO9=imread('9.png');
set(handles.pushbutton30,'cdata',NO1);
set(handles.pushbutton31,'cdata',NO2);
set(handles.pushbutton32,'cdata',NO3);
set(handles.pushbutton22,'cdata',NO4);
set(handles.pushbutton23,'cdata',NO5);
set(handles.pushbutton24,'cdata',NO6);
set(handles.pushbutton12,'cdata',NO7);
set(handles.pushbutton13,'cdata',NO8);
set(handles.pushbutton14,'cdata',NO9);

function varargout = GUI_201421143062_bzx_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
%初始页面
set(handles.shuchu,'Position',[2.8 20 45.2 4.077]);
set(gcf,'Position',[50 20 50 24.538]);
%修改背景的代码
ha=axes('units','normalized','position',[0 0 1 1]);
uistack(ha,'down')
II=imread('timg.jpg');
image(II)
colormap gray
set(ha,'handlevisibility','off','visible','off');
handles.output = hObject;

function shuchu_Callback(hObject, eventdata, handles)
% 直接enter输出
try
    textString=get(handles.shuchu,'String');
    ans=eval(textString);
    set(handles.shuchu,'String',ans);
    catch
    set(handles.shuchu,'String','error');
    end
function shuchu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton7_Callback(hObject, eventdata, handles)
%  ←back回调函数
textString=get(handles.shuchu,'String');
w=length(textString);
t=char(textString);
textString=t(1:w-1);
set(handles.shuchu,'String',textString);
function pushbutton8_Callback(hObject, eventdata, handles)
%CE的回调函数
set(handles.shuchu,'String','');
function pushbutton9_Callback(hObject, eventdata, handles)
%C的回调函数
set(handles.shuchu,'String','');
function pushbutton10_Callback(hObject, eventdata, handles)
%+-的回调函数
textString=get(handles.shuchu,'String');
w=length(textString);
t=char(textString);
a='baizhixi6666666666666666666666';
if t(1)=='-'
textString=t(2:w);
else
a(1)='-';
for i=2:w+1
    a(i)=t(i-1);
    textString=a(1:w+1);
end
end
set(handles.shuchu,'String',textString);
function pushbutton11_Callback(hObject, eventdata, handles)
%根号的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'sqrt(');
set(handles.shuchu,'String',textString);
function pushbutton12_Callback(hObject, eventdata, handles)
%7的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'7');
set(handles.shuchu,'String',textString);
function pushbutton13_Callback(hObject, eventdata, handles)
% 8的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'8');
set(handles.shuchu,'String',textString);
function pushbutton14_Callback(hObject, eventdata, handles)
%  9的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'9');
set(handles.shuchu,'String',textString);

function pushbutton15_Callback(hObject, eventdata, handles)
%/的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'/');
set(handles.shuchu,'String',textString);
function pushbutton16_Callback(hObject, eventdata, handles)
function pushbutton22_Callback(hObject, eventdata, handles)
%4的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'4');
set(handles.shuchu,'String',textString);

function pushbutton23_Callback(hObject, eventdata, handles)
%5的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'5');
set(handles.shuchu,'String',textString);

function pushbutton24_Callback(hObject, eventdata, handles)
%6的回调函数

textString=get(handles.shuchu,'String');
textString=strcat(textString,'6');
set(handles.shuchu,'String',textString);

function pushbutton25_Callback(hObject, eventdata, handles)
%*的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'*');
set(handles.shuchu,'String',textString);

function pushbutton26_Callback(hObject, eventdata, handles)
%1/x的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('1/',textString);
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','error');
end
function pushbutton27_Callback(hObject, eventdata, handles)
% 0的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'0');
set(handles.shuchu,'String',textString);
function pushbutton28_Callback(hObject, eventdata, handles)
%.的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'.');
set(handles.shuchu,'String',textString);
function pushbutton29_Callback(hObject, eventdata, handles)
%+的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'+');
set(handles.shuchu,'String',textString);
function pushbutton30_Callback(hObject, eventdata, handles)
% 1的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'1');
set(handles.shuchu,'String',textString);
function pushbutton31_Callback(hObject, eventdata, handles)
%2的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'2');
set(handles.shuchu,'String',textString);
function pushbutton32_Callback(hObject, eventdata, handles)
% 3的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'3');
set(handles.shuchu,'String',textString);
function pushbutton33_Callback(hObject, eventdata, handles)
% -的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'-');
set(handles.shuchu,'String',textString);
function pushbutton35_Callback(hObject, eventdata, handles)
%=号的回调函数
textString=get(handles.shuchu,'String');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','error');
end
function pushbutton36_Callback(hObject, eventdata, handles)
% %一个彩蛋
h=errordlg('~(≧▽≦)~','别乱点');  
ha=get(h,'children');  
  
hu=findall(allchild(h),'style','pushbutton');  
set(hu,'string','确定');  
ht=findall(ha,'type','text');  
set(ht,'fontsize',20); 
function pushbutton38_Callback(hObject, eventdata, handles)
% In的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('log(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','log');
end
function pushbutton39_Callback(hObject, eventdata, handles)
%（的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'(');
set(handles.shuchu,'String',textString);
function pushbutton40_Callback(hObject, eventdata, handles)
% ）的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,')');
set(handles.shuchu,'String',textString);
function pushbutton43_Callback(hObject, eventdata, handles)
% sin的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('sin(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','sin');
end
function pushbutton44_Callback(hObject, eventdata, handles)
% x^2的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'^2');
ans=eval(textString);
set(handles.shuchu,'String',ans);
function pushbutton45_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat('gamma(',textString,'+1)');
ans=eval(textString);
set(handles.shuchu,'String',ans);
function pushbutton48_Callback(hObject, eventdata, handles)
% cos的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('cos(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','cos');
end
function pushbutton49_Callback(hObject, eventdata, handles)
% x^y的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'^');
set(handles.shuchu,'String',textString);

function pushbutton50_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat(textString,'sqrt');
set(handles.shuchu,'String',textString);
function pushbutton51_Callback(hObject, eventdata, handles)
% π的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'pi');
set(handles.shuchu,'String',textString);
function pushbutton53_Callback(hObject, eventdata, handles)
%tan的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('tan(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','tan');
end
function pushbutton54_Callback(hObject, eventdata, handles)
% x^3的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'^3');
ans=eval(textString);
set(handles.shuchu,'String',ans);
function pushbutton55_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat(textString,'^(1/3)');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','error');
end
function pushbutton57_Callback(hObject, eventdata, handles)
% Exp的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'.e+');
set(handles.shuchu,'String',textString);
function pushbutton58_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat(textString,'mod');
set(handles.shuchu,'String',textString);
function pushbutton59_Callback(hObject, eventdata, handles)
%log的回调函数
textString=get(handles.shuchu,'String');
textString=strcat(textString,'log');
set(handles.shuchu,'String',textString);
function pushbutton60_Callback(hObject, eventdata, handles)
%10^x的回调函数
textString=get(handles.shuchu,'String');
textString=strcat('10^',textString);
ans=eval(textString);
set(handles.shuchu,'String',ans);
function popupmenu1_Callback(hObject, eventdata, handles)
%下来窗口
H=[handles.popupmenu2,handles.popupmenu4];
val=get(handles.popupmenu1,'value');
switch get(handles.popupmenu1,'Value')  
  case 1 
      set(H,'String',{'分钟','秒','天','小时','星期'});
  case 2
      set(H,'String',{'BTU/分钟','马力','千瓦','瓦特','英尺'});
  case 3 
     set(H,'String',{'弧度','角度','梯度'}); 
end
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Untitled_about_Callback(hObject, eventdata, handles)
h=dialog('name','关于计算机','position',[200 200 400 300]);   
uicontrol('parent',h,'style','text','string','matlab型计算机，所有版权归于白植熙，盗版必究。','position',[100 50 200 200],'fontsize',12);  
uicontrol('parent',h,'style','pushbutton','position',[180 10 50 20],'string','确定','callback','delete(gcbf)');  
function Untitled_biaozhun_Callback(hObject, eventdata, handles)
%标准型
set(handles.shuchu,'Position',[2.8 20 45.2 4.077]);
set(handles.Untitled_kexue,'checked','off');
set(handles.Untitled_biaozhun,'checked','on');
k=get(handles.Untitled_kexue,'check');
h=get(handles.Untitled_danweihuanzhuan,'check');
if strcmp(k,'on')==0 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','off');
    set(gcf,'Position',[50 20 50 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 97 24.538]);
elseif strcmp(k,'on')==0 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','off');
    set(handles.uipanel7,'Position',[50 0.923 52.2 18]);
    set(gcf,'Position',[50 20 102 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 150 24.538]);
    set(handles.uipanel7,'Position',[97.8 1.077 52.2 18]);
end
function Untitled_kexue_Callback(hObject, eventdata, handles)

set(handles.shuchu,'Position',[2.8 20 92.5 4.077]);
set(handles.uipanel9,'Visible','on');
set(handles.Untitled_kexue,'checked','on');
set(handles.Untitled_biaozhun,'checked','off');
k=get(handles.Untitled_kexue,'check');
h=get(handles.Untitled_danweihuanzhuan,'check');
if strcmp(k,'on')==0 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','off');
    set(gcf,'Position',[50 20 50 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 97 24.538]);
elseif strcmp(k,'on')==0 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','off');
    set(handles.uipanel7,'Position',[50 0.923 52.2 18]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 150 24.538]);
    set(handles.uipanel7,'Position',[97.8 1.077 52.2 18]);
end
function Untitled_jiben_Callback(hObject, eventdata, handles)

set(handles.Untitled_danweihuanzhuan,'checked','off');
set(handles.Untitled_jiben,'checked','on');
k=get(handles.Untitled_kexue,'check');
h=get(handles.Untitled_danweihuanzhuan,'check');
if strcmp(k,'on')==0 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','off');
    set(gcf,'Position',[50 20 50 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 97 24.538]);
elseif strcmp(k,'on')==0 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','off');
    set(handles.uipanel7,'Position',[50 0.923 52.2 18]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 150 24.538]);
    set(handles.uipanel7,'Position',[97.8 1.077 52.2 18]);
end
function Untitled_danweihuanzhuan_Callback(hObject, eventdata, handles)
set(handles.Untitled_danweihuanzhuan,'checked','on');
set(handles.Untitled_jiben,'checked','off');
k=get(handles.Untitled_kexue,'check');
h=get(handles.Untitled_danweihuanzhuan,'check');
if strcmp(k,'on')==0 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','off');
    set(gcf,'Position',[50 20 50 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==0
    set(handles.uipanel7,'Visible','off');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 97 24.538]);
elseif strcmp(k,'on')==0 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','off');
    set(handles.uipanel7,'Position',[50 0.923 52.2 18]);
    set(gcf,'Position',[50 20 102 24.538]);
elseif strcmp(k,'on')==1 && strcmp(h,'on')==1
    set(handles.uipanel7,'Visible','on');
    set(handles.uipanel9,'Visible','on');
    set(gcf,'Position',[50 20 150 24.538]);
    set(handles.uipanel7,'Position',[97.8 1.077 52.2 18]);
end
function Untitled_help_Callback(hObject, eventdata, handles)
h=dialog('name','帮助','position',[200 200 300 200]);  
uicontrol('parent',h,'style','text','string','我也不会哈哈哈','position',[100 100 120 20],'fontsize',12);  
uicontrol('parent',h,'style','pushbutton','position',[130 10 50 20],'string','确定','callback','delete(gcbf)');  
function pushbutton42_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat('sinh(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','sinh');
end
function pushbutton47_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat('cosh(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','cosh');
end
function pushbutton52_Callback(hObject, eventdata, handles)
textString=get(handles.shuchu,'String');
textString=strcat('tanh(',textString);
textString=strcat(textString,')');
try
ans=eval(textString);
set(handles.shuchu,'String',ans);
catch
set(handles.shuchu,'String','tanh');
end

function pushbutton37_Callback(hObject, eventdata, handles)
E=['In' 'Int' 'sinh' 'sin' 'dms' 
   'cosh' 'cos' 'π' 'tanh' 'tan'];
k=get(handles.pushbutton38,'String');
if strcmp(k,'In')==1
    set(handles.pushbutton38,'String','e^x'); set(handles.pushbutton47,'String','cosh^-1');
    set(handles.pushbutton41,'String','Frac'); set(handles.pushbutton48,'String','cos^-1');
    set(handles.pushbutton42,'String','sinh^-1'); set(handles.pushbutton51,'String','2*π');
    set(handles.pushbutton43,'String','sin^-1'); set(handles.pushbutton52,'String','tanh^-1');
    set(handles.pushbutton46,'String','deg'); set(handles.pushbutton53,'String','tan^-1');
else
    set(handles.pushbutton38,'String','In'); set(handles.pushbutton47,'String','cosh');
    set(handles.pushbutton41,'String','Int'); set(handles.pushbutton48,'String','cos');
    set(handles.pushbutton42,'String','sinh'); set(handles.pushbutton51,'String','π');
    set(handles.pushbutton43,'String','sin'); set(handles.pushbutton52,'String','tanh');
    set(handles.pushbutton46,'String','dms'); set(handles.pushbutton53,'String','tan');end
function edit2_KeyPressFcn(hObject, eventdata, handles)
text=get(handles.edit2,'String');
if strcmp(text,'输入值')==1
    set(handles.edit,'String','');
end
function pushbutton41_Callback(hObject, eventdata, handles)
%int 取整
textString=get(handles.shuchu,'String');
textString=strcat('floor(',textString,')');
ans=eval(textString);
set(handles.shuchu,'String',ans);