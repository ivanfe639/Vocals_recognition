function varargout = reco_voca_guide(varargin)
% RECO_VOCA_GUIDE MATLAB code for reco_voca_guide.fig
%      RECO_VOCA_GUIDE, by itself, creates a new RECO_VOCA_GUIDE or raises the existing
%      singleton*.
%
%      H = RECO_VOCA_GUIDE returns the handle to a new RECO_VOCA_GUIDE or the handle to
%      the existing singleton*.
%
%      RECO_VOCA_GUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECO_VOCA_GUIDE.M with the given input arguments.
%
%      RECO_VOCA_GUIDE('Property','Value',...) creates a new RECO_VOCA_GUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reco_voca_guide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reco_voca_guide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reco_voca_guide

% Last Modified by GUIDE v2.5 18-Nov-2012 08:55:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reco_voca_guide_OpeningFcn, ...
                   'gui_OutputFcn',  @reco_voca_guide_OutputFcn, ...
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


% --- Executes just before reco_voca_guide is made visible.
function reco_voca_guide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reco_voca_guide (see VARARGIN)

% Choose default command line output for reco_voca_guide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reco_voca_guide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reco_voca_guide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
