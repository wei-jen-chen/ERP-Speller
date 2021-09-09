function varargout = EventSet(varargin)
% EVENTSET MATLAB code for EventSet.fig
%      EVENTSET, by itself, creates a new EVENTSET or raises the existing
%      singleton*.
%
%      H = EVENTSET returns the handle to a new EVENTSET or the handle to
%      the existing singleton*.
%
%      EVENTSET('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVENTSET.M with the given input arguments.
%
%      EVENTSET('Property','Value',...) creates a new EVENTSET or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EventSet_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EventSet_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EventSet

% Last Modified by GUIDE v2.5 22-Aug-2017 12:33:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EventSet_OpeningFcn, ...
                   'gui_OutputFcn',  @EventSet_OutputFcn, ...
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


% --- Executes just before EventSet is made visible.
function EventSet_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EventSet (see VARARGIN)

% Choose default command line output for EventSet
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EventSet wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EventSet_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CloseW.
function CloseW_Callback(hObject, eventdata, handles)
close;
% hObject    handle to CloseW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SetOK.
function SetOK_Callback(hObject, eventdata, handles)
% hObject    handle to SetOK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SetEV.
function SetEV_Callback(hObject, eventdata, handles)
set(handles.StartEvent,'Enable', 'on');
set(handles.EndEvent,'Enable', 'on');
set(handles.GoEvent,'Enable', 'on');
set(handles.NoGoEvent,'Enable', 'on');
set(handles.GoClickEvent,'Enable', 'on');
set(handles.NoGoClickEvent,'Enable', 'on');
set(handles.NullEvent,'Enable', 'on');
set(handles.NullClickEvent,'Enable', 'on');
set(handles.SetOK,'Enable', 'on');
set(handles.CloseW,'Enable', 'off');
set(handles.SetEventBT,'Enable', 'off');
% hObject    handle to SetEV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function StartEvent_Callback(hObject, eventdata, handles)
% hObject    handle to StartEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of StartEvent as text
%        str2double(get(hObject,'String')) returns contents of StartEvent as a double


% --- Executes during object creation, after setting all properties.
function StartEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StartEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EndEvent_Callback(hObject, eventdata, handles)
% hObject    handle to EndEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EndEvent as text
%        str2double(get(hObject,'String')) returns contents of EndEvent as a double


% --- Executes during object creation, after setting all properties.
function EndEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EndEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GoClickEvent_Callback(hObject, eventdata, handles)
% hObject    handle to GoClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GoClickEvent as text
%        str2double(get(hObject,'String')) returns contents of GoClickEvent as a double


% --- Executes during object creation, after setting all properties.
function GoClickEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GoClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NoGoEvent_Callback(hObject, eventdata, handles)
% hObject    handle to NoGoEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NoGoEvent as text
%        str2double(get(hObject,'String')) returns contents of NoGoEvent as a double


% --- Executes during object creation, after setting all properties.
function NoGoEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NoGoEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NoGoClickEvent_Callback(hObject, eventdata, handles)
% hObject    handle to NoGoClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NoGoClickEvent as text
%        str2double(get(hObject,'String')) returns contents of NoGoClickEvent as a double


% --- Executes during object creation, after setting all properties.
function NoGoClickEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NoGoClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NullEvent_Callback(hObject, eventdata, handles)
% hObject    handle to NullEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NullEvent as text
%        str2double(get(hObject,'String')) returns contents of NullEvent as a double


% --- Executes during object creation, after setting all properties.
function NullEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NullEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NullClickEvent_Callback(hObject, eventdata, handles)
% hObject    handle to NullClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NullClickEvent as text
%        str2double(get(hObject,'String')) returns contents of NullClickEvent as a double


% --- Executes during object creation, after setting all properties.
function NullClickEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NullClickEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GoEvent_Callback(hObject, eventdata, handles)
% hObject    handle to GoEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GoEvent as text
%        str2double(get(hObject,'String')) returns contents of GoEvent as a double


% --- Executes during object creation, after setting all properties.
function GoEvent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GoEvent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
