function varargout = Arrow(varargin)
% ARROW MATLAB code for Arrow.fig
%      ARROW, by itself, creates a new ARROW or raises the existing
%      singleton*.
%
%      H = ARROW returns the handle to a new ARROW or the handle to
%      the existing singleton*.
%
%      ARROW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARROW.M with the given input arguments.
%
%      ARROW('Property','Value',...) creates a new ARROW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Arrow_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Arrow_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Arrow

% Last Modified by GUIDE v2.5 25-Nov-2015 19:02:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Arrow_OpeningFcn, ...
                   'gui_OutputFcn',  @Arrow_OutputFcn, ...
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


% --- Executes just before Arrow is made visible.
function Arrow_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Arrow (see VARARGIN)

global musicatoca;
musicatoca = 1;
hold off;
global angulo;
global turno;
global posJogador1;
global vento;
vento = 0;
vento = num2str(vento);
set(handles.vento, 'String', [vento]);
turno = 1;
posJogador1 = randperm(40,1)
posJogador1 = posJogador1*7;
global strjogador1;
strjogador1 = num2str(posJogador1);
set(handles.jogador1, 'String', ['Posição jogador 1: ' strjogador1])

global posJogador2;
posJogador2 = 0;
while(posJogador2 < posJogador1)
    while(posJogador2 < 420 || posJogador2 > 665)
posJogador2 = randperm(700,1)
    end
end
global strjogador2;
strjogador2 = num2str(posJogador2);
set(handles.jogador2, 'String', ['Posição jogador 2: ' strjogador2])
global field;
field = linspace(0,700,701)
global y;
global y2;
y = linspace(0,0,701)
plot(field,y);
hold on;
y2 = linspace(-50,-50,701)
plot(field,y2);
global field2;
field2 = linspace(0,300,701);
plot(y,field2);

global escolheDia;
escolheDia = randperm(1,1)
if(escolheDia == 1)
%plot(50,2600,'k-.o','MarkerSize',30, 'MarkerFaceColor', [0 0 1]);
%whitebg([0 0 0]);
imagem = imread('BG.png');
image(0, -25, imagem);
axis image;

else
plot(50,2600,'k-.o','MarkerSize',50, 'MarkerFaceColor', [1 1 0]);
whitebg([1 1 1]);
end
    
%plot(posJogador1,10,'k-.o', 'MarkerFaceColor', [0 1 0]);
[imagem1,map] = imread('RedArcoGran2.png');
image(posJogador1, 0, imagem1);
[imagem2,map2] = imread('ArcoGran2.png');
image(posJogador2-30, 0, imagem2);
% Choose default command line output for Arrow
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Arrow wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Arrow_OutputFcn(hObject, eventdata, handles) 
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


hold off;
global angulo;
global turno;
global posJogador1;
global vento;
vento = 0;
vento = num2str(vento);
set(handles.vento, 'String', [vento]);
turno = 1;
posJogador1 = randperm(40,1)
posJogador1 = posJogador1*7;
global strjogador1;
strjogador1 = num2str(posJogador1);
set(handles.jogador1, 'String', ['Posição jogador 1: ' strjogador1])

global posJogador2;
posJogador2 = 0;
while(posJogador2 < posJogador1)
    while(posJogador2 < 420 || posJogador2 > 665)
posJogador2 = randperm(700,1)
    end
end
global strjogador2;
strjogador2 = num2str(posJogador2);
set(handles.jogador2, 'String', ['Posição jogador 2: ' strjogador2])
global field;
field = linspace(0,700,701)
global y;
global y2;
y = linspace(0,0,701)
plot(field,y);
hold on;
y2 = linspace(-50,-50,701)
plot(field,y2);
global field2;
field2 = linspace(0,300,701);
plot(y,field2);

global escolheDia;
escolheDia = randperm(1,1)
if(escolheDia == 1)
%plot(50,2600,'k-.o','MarkerSize',30, 'MarkerFaceColor', [0 0 1]);
%whitebg([0 0 0]);
imagem = imread('BG.png');
image(0, -25, imagem);
axis image;

else
plot(50,2600,'k-.o','MarkerSize',50, 'MarkerFaceColor', [1 1 0]);
whitebg([1 1 1]);
end
    
%plot(posJogador1,10,'k-.o', 'MarkerFaceColor', [0 1 0]);
[imagem1,map] = imread('RedArcoGran2.png');
image(posJogador1, 0, imagem1);
[imagem2,map2] = imread('ArcoGran2.png');
image(posJogador2-30, 0, imagem2);
angulo = 200;
turno = 1;

function forca_Callback(hObject, eventdata, handles)
% hObject    handle to forca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of forca as text
%        str2double(get(hObject,'String')) returns contents of forca as a double


% --- Executes during object creation, after setting all properties.
function forca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to forca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angulo_Callback(hObject, eventdata, handles)
% hObject    handle to angulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angulo as text
%        str2double(get(hObject,'String')) returns contents of angulo as a double


% --- Executes during object creation, after setting all properties.
function angulo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global forca;
global angulo;
global tiro;
global seno;
global a;
global turno;
global escolheDia;
global posJogador1;
global posJogador2;
global vento;
vento = str2num(vento);
cont = 0;
global field;
field = linspace(0,700,701)
global y;
global y2;
y = linspace(0,0,701)
plot(field,y);
hold on;
y2 = linspace(-50,-50,701)
plot(field,y2);
global field2;
field2 = linspace(0,300,701);
plot(y,field2);
global escolheDia;
if(escolheDia == 1)
%plot(50,2600,'k-.o','MarkerSize',30, 'MarkerFaceColor', [0 0 1]);
%whitebg([0 0 0]);
imagem = imread('BG.png');
image(0, -25, imagem);
axis image;
end

[imagem1,map] = imread('RedArcoGran2.png');
image(posJogador1, 0, imagem1);
[imagem2,map2] = imread('ArcoGran2.png');
image(posJogador2-30, 0, imagem2);


forca = get(handles.forca, 'String');
forca = str2num(forca)
angulo = get(handles.angulo, 'String');
angulo = str2num(angulo)
if(turno == 1)
if(angulo > 90) || (angulo < 30 || forca >57 || forca < 0)
    set(handles.aviso, 'String', ['Força ou ângulo incorretos!! Escolha um ângulo entre 30 e 90, e uma força entre 0 e 57!!'])
else
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    flechabarulho = randperm(2,1);
    if(flechabarulho == 1)
    [z , Fs] = audioread('flecha1.wav');
    sound(z,Fs);
    else
    [z , Fs] = audioread('flecha2.wav');
    sound(z,Fs);   
    end
    seno = angulo/90*pi;
    teste = sin(seno)
    tiro = ((forca/10)^2 + (forca/10)*10*sin(seno) + vento)*7
    testeTiro2 = posJogador1 + tiro
    if((posJogador1+tiro) < 700)
     testeTiro2 = posJogador1 + tiro
    xTiro = linspace(posJogador1,(posJogador1 + tiro),150)
    yTiro1 = (xTiro-posJogador1);
    yTiro2 = (xTiro-(testeTiro2));
    yTiro = yTiro1.*yTiro2;
    yTiro = yTiro./400
     tiro=tiro
     posJogador1 = posJogador1
     
     [imagem1,map] = imread('RedArcoGran.png');
     image(posJogador1, 0, imagem1);
     [imagem2,map2] = imread('ArcoGran2.png');
     image(posJogador2-30, 0, imagem2);
     DELAY = 0.005;
     for(i = 1:numel(xTiro))
     %clf;
     %plot(xTiro,-yTiro,'<');
     %plot(xTiro,-yTiro, 'w');
     plot(xTiro(i), -yTiro(i), 'k.','MarkerSize',8);
     pause(DELAY);
     end
     [imagem1,map] = imread('RedArcoGran2.png');
     image(posJogador1, 0, imagem1);
     
     set(handles.aviso, 'String', ['Quase!! Seu inimigo se esquivou ou você é cego?'])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Caso em que se acerta%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if((posJogador1 + tiro) < (posJogador2 + 34.5) && (posJogador1 + tiro) > (posJogador2 -20))
        sinstr = num2str(seno)
        ventostr = num2str(vento)
        set(handles.aviso, 'String', ['Boa!! Você acertou! O Arqueiro vermelho venceu!! Os valores das constantes da Interpolação Quadrática são: a=1; b=10*sen(' sinstr '); c=' ventostr ' Substituia os valores, encontre x e teste a sua precisão ou inicie um jogo novo!!' ])
    
    end
    else
    xTiro = linspace(posJogador1,(700),150)
    yTiro1 = (xTiro-posJogador1)
    yTiro2 = (xTiro-testeTiro2)
    yTiro = yTiro1.*yTiro2
     yTiro = yTiro./400
    
    flechabarulho = randperm(2,1);
    if(flechabarulho == 1)
    [z , Fs] = audioread('flecha1.wav');
    sound(z,Fs);
    else
    [z , Fs] = audioread('flecha2.wav');
    sound(z,Fs);   
    end
     [imagem1,map] = imread('RedArcoGran.png');
     image(posJogador1, 0, imagem1);
     [imagem2,map2] = imread('ArcoGran2.png');
     image(posJogador2-30, 0, imagem2);   
     DELAY = 0.005;
     for(i = 1:numel(xTiro))
     %clf;
     %plot(xTiro,-yTiro,'<');
     %plot(xTiro,-yTiro, 'w');
     plot(xTiro(i),-yTiro(i), 'k.','MarkerSize',8);
     pause(DELAY);
     end
     [imagem1,map] = imread('RedArcoGran2.png');
     image(posJogador1, 0, imagem1);
    %plot(xTiro,-yTiro,'<');
     %plot(xTiro,-yTiro);
    set(handles.aviso, 'String', ['Quase!! Seu inimigo se esquivou ou você é cego?'])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Caso em que se acerta%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if((posJogador1 + tiro) < (posJogador2 + 34.5) && (posJogador1 + tiro) > (posJogador2 -20))
        sinstr = num2str(seno)
        ventostr = num2str(vento)
        set(handles.aviso, 'String', ['Boa!! Você acertou! O Arqueiro vermelho venceu!! Os valores das constantes da Interpolação Quadrática são: a=1; b=10*sen(' sinstr '); c=' ventostr ' Substituia os valores, encontre x e teste a sua precisão ou inicie um jogo novo!!' ])
    end
    end
    turno = 2
end
else
if(angulo > 180) || (angulo < 0 || forca > 60 || forca < 0)
    set(handles.aviso, 'String', ['Força ou ângulo incorretos!! Escolha um ângulo entre 0 e 180, e uma força entre 0 e 60!!'])
else
    seno = angulo/90*pi;
    teste = sin(seno)
    tiro = ((forca/10)^2 + (forca/10)*10*sin(seno) + vento)*7
    if((posJogador1+tiro) < 700)
    xTiro = linspace((posJogador2 - tiro),posJogador2,150)
    for i=1:25
    if(xTiro(i) < 0)
        xTiro(i) = 0;
    end
    end
    testeTiro = posJogador2-tiro
    posJogador2 = posJogador2
    yTiro1 = (xTiro-testeTiro);
    yTiro2 = (xTiro-posJogador2);
    yTiro = yTiro1.*yTiro2
     yTiro = yTiro./400
     
     for i=1:25
       if(yTiro(i) > 0)
           %yTiro(i) = 50 
          % cont = cont + 1
       end
     end
     tiro=tiro
     
     flechabarulho = randperm(2,1);
    if(flechabarulho == 1)
    [z , Fs] = audioread('flecha1.wav');
    sound(z,Fs);
    else
    [z , Fs] = audioread('flecha2.wav');
    sound(z,Fs);   
    end
     [imagem1,map] = imread('ArcoGran.png');
     image(posJogador2-30, 0, imagem1);
     [imagem2,map2] = imread('RedArcoGran2.png');
     image(posJogador1, 0, imagem2);  
     DELAY = 0.005;
     for(i = numel(xTiro):-1:1)
     %clf;
     %plot(xTiro,-yTiro,'<');
     %plot(xTiro,-yTiro, 'w');
     plot(xTiro(i),-yTiro(i), 'k.','MarkerSize',8);
     pause(DELAY);
     end
     [imagem1,map] = imread('ArcoGran2.png');
     image(posJogador2-30, 0, imagem1);
    % plot(xTiro,-yTiro,'>');
    %plot(xTiro,-yTiro);
    set(handles.aviso, 'String', ['Quase!! Seu inimigo se esquivou ou você é cego?'])
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Caso em que se acerta%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if((posJogador2 - tiro) < (posJogador1 + 20) && (posJogador2 - tiro) > (posJogador1 -34.5))
        sinstr = num2str(seno)
        ventostr = num2str(vento)
        set(handles.aviso, 'String', ['Boa!! Você acertou! O Arqueiro verde venceu!! Os valores das constantes da Interpolação Quadrática são: a=1; b=10*sen(' sinstr '); c=' ventostr ' Substituia os valores, encontre x e teste a sua precisão ou inicie um jogo novo!!' ])
    end
    else
    xTiro = linspace((posJogador2 - tiro),posJogador2,150)
    for i=1:25
    if(xTiro(i) < 0)
        xTiro(i) = 0;
    end
    end
    testeTiro = posJogador2-tiro
    posJogador2 = posJogador2
    yTiro1 = (xTiro-testeTiro);
    yTiro2 = (xTiro-posJogador2);
    yTiro = yTiro1.*yTiro2
     yTiro = yTiro./400 
     for i=1:25
       if(yTiro(i) > 0)
           %yTiro(i) = 50 
          % cont = cont + 1
       end
     end
     tiro=tiro
     
     flechabarulho = randperm(2,1);
    if(flechabarulho == 1)
    [z , Fs] = audioread('flecha1.wav');
    sound(z,Fs);
    else
    [z , Fs] = audioread('flecha2.wav');
    sound(z,Fs);   
    end
     [imagem1,map] = imread('ArcoGran.png');
     image(posJogador2-30, 0, imagem1);
     [imagem2,map2] = imread('RedArcoGran2.png');
     image(posJogador1, 0, imagem2);
     DELAY = 0.005;
     for(i = numel(xTiro):-1:1)
     %clf;
     %plot(xTiro,-yTiro,'<');
     %plot(xTiro,-yTiro, 'w');
     plot(xTiro(i),-yTiro(i), 'k.', 'MarkerSize',8);
     pause(DELAY);
     end
     [imagem1,map] = imread('ArcoGran2.png');
     image(posJogador2-30, 0, imagem1);
     %plot(xTiro,-yTiro,'>');
     %plot(xTiro,-yTiro);
    set(handles.aviso, 'String', ['Quase!! Seu inimigo se esquivou ou você é cego?'])  
    end 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Caso em que se acerta%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if((posJogador2 - tiro) < (posJogador1 + 20) && (posJogador2 - tiro) > (posJogador1 -30))
        sinstr = num2str(seno)
        ventostr = num2str(vento)
    set(handles.aviso, 'String', ['Boa!! Você acertou! O Arqueiro verde venceu!! Os valores das constantes da Interpolação Quadrática são: a=1; b=10*sen(' sinstr '); c=' ventostr ' Substituia os valores, encontre x e teste a sua precisão ou inicie um jogo novo!!' ])
    end
end
turno = 1
end
vento = randperm(10,1);
vento = num2str(vento);
set(handles.vento, 'String', [vento]);
tirostr = num2str(tiro)
set(handles.distancia, 'String', ['Distância: ' tirostr]);
hold off;
   
%end


% --- Executes on button press in musica.
function musica_Callback(hObject, eventdata, handles)
% hObject    handle to musica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global musicatoca;
musicatoca = musicatoca +1;
resto = mod(musicatoca, 2);

if(resto == 0)
   
[y , Fs] = audioread('musica.mp3');
y =  y./7;
sound(y,Fs);
else
i=10;    
clear sound;
end
%imagem = imread('teste.png')
%image(50,500,imagem)
