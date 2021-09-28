function varargout = radio_bottom(varargin)
% RADIO_BOTTOM MATLAB code for radio_bottom.fig
%      RADIO_BOTTOM, by itself, creates a new RADIO_BOTTOM or raises the existing
%      singleton*.
%
%      H = RADIO_BOTTOM returns the handle to a new RADIO_BOTTOM or the handle to
%      the existing singleton*.
%
%      RADIO_BOTTOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RADIO_BOTTOM.M with the given input arguments.
%
%      RADIO_BOTTOM('Property','Value',...) creates a new RADIO_BOTTOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before radio_bottom_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to radio_bottom_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help radio_bottom

% Last Modified by GUIDE v2.5 15-Jul-2021 22:49:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @radio_bottom_OpeningFcn, ...
                   'gui_OutputFcn',  @radio_bottom_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before radio_bottom is made visible.
function radio_bottom_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to radio_bottom (see VARARGIN)

% Choose default command line output for radio_bottom
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes radio_bottom wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = radio_bottom_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
axes(handles.axes2);
V=str2double(get(handles.Mag,'string'))
f=str2double(get(handles.Freq,'string'))
t=linspace( 0,(1/f),2000);
s=V*sin(2*pi*f*t);
c=V*cos(2*pi*f*t);
d=V*tan(2*pi*f*t);
if get(handles.sin,'value')==get(handles.sin,'max')
    plot(t,s)
elseif get(handles.tan,'value')==get(handles.tan,'max')
    plot(t,d)
else
    plot(t,c);
    
    
end
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in final.
function final_Callback(hObject, eventdata, handles)
% hObject    handle to final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
V=str2double(get(handles.Mag,'string'))
f=str2double(get(handles.Freq,'string'))
t=linspace( 0,(1/f),2000);
s=V*sin(2*pi*f*t);
c=V*cos(2*pi*f*t);
d=V*tan(2*pi*f*t);
k=s;
m=c;
n=d;
if get(handles.sin,'value')==get(handles.sin,'max')
    k(s>0)=0;
    plot(t,k);
elseif get(handles.tan,'value')==get(handles.tan,'max')
    n(d>0)=0;
    plot(t,d)
else
    m(c>0)=0;
    plot(t,m);
end



function Mag_Callback(hObject, eventdata, handles)
% hObject    handle to Mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mag as text
%        str2double(get(hObject,'String')) returns contents of Mag as a double


% --- Executes during object creation, after setting all properties.
function Mag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Freq_Callback(hObject, eventdata, handles)
% hObject    handle to Freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Freq as text
%        str2double(get(hObject,'String')) returns contents of Freq as a double


% --- Executes during object creation, after setting all properties.
function Freq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
