�G
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\CrearPartida.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public 
partial	 
class 
CrearPartida #
:$ %
Window& ,
{- .
private 

ServiceSYE 
. 
Jugador 
jugador &
;& '
private 
MenuPrincipal 
menuPrincipal '
;' (
public 

CrearPartida 
( 
MenuPrincipal %
menuPrincipal& 3
,3 4

ServiceSYE5 ?
.? @
Jugador@ G
jugadorH O
)O P
{Q R
InitializeComponent 
( 
) 
; 
this 

.
 
menuPrincipal 
= 
menuPrincipal (
;( )
this 

.
 
jugador 
= 
jugador 
; 
} 
private%% 
void%% 
Bt_Crear_Click%% 
(%%  
object%%  &
sender%%' -
,%%- .
RoutedEventArgs%%/ >
e%%? @
)%%@ A
{%%B C
if&& 
(&&	 

tb_NombrePartida&&
 
.&& 
Text&& 
!=&&  "
null&&# '
&&&&( *
tb_NombrePartida&&+ ;
.&&; <
Text&&< @
.&&@ A
Length&&A G
>&&H I
$num&&J K
)&&K L
{&&M N

ServiceSYE'' 
.'' 
PartidaClient''  
clientePartida''! /
=''0 1
new''2 5

ServiceSYE''6 @
.''@ A
PartidaClient''A N
(''N O
new''O R
InstanceContext''S b
(''b c
new''c f
Partidas''g o
(''o p
)''p q
)''q r
)''r s
;''s t

MainWindow(( 

mainWindow(( 
=(( 
new((  #

MainWindow(($ .
(((. /
)((/ 0
;((0 1
if)) 

()) 

mainWindow)) 
.))  
ValidarNombreUsuario)) +
())+ ,
tb_NombrePartida)), <
.))< =
Text))= A
)))A B
)))B C
{))D E
try**
 
{** 
if++ 
(++ 
clientePartida++ 
.++  
ValidarNombrePartida++ 3
(++3 4
tb_NombrePartida++4 D
.++D E
Text++E I
+++J K
$str++L O
+++P Q
jugador++R Y
.++Y Z
NombreUsuario++Z g
)++g h
)++h i
{++j k

CrearJuego,, 
(,, 
clientePartida,, '
),,' (
;,,( )
}-- 
else-- 
{-- 

MessageBox.. 
... 
Show.. 
(.. 

Properties.. (
...( )
	Resources..) 2
...2 3#
mb_NombrePartidaOcupado..3 J
,..J K

Properties..L V
...V W
	Resources..W `
...` a
	mb_Alerta..a j
)..j k
;..k l
}// 
}00
 
catch00 
(00 "
CommunicationException00 )
)00) *
{00+ ,

MessageBox11 
.11 
Show11 
(11 

Properties11 &
.11& '
	Resources11' 0
.110 1
mb_ConexionServidor111 D
,11D E

Properties11F P
.11P Q
	Resources11Q Z
.11Z [
	mb_Alerta11[ d
)11d e
;11e f
}22
 
}33 	
else33
 
{33 

MessageBox44
 
.44 
Show44 
(44 

Properties44 $
.44$ %
	Resources44% .
.44. /)
mb_CaracteresInvalidosPartida44/ L
,44L M

Properties44N X
.44X Y
	Resources44Y b
.44b c
mb_Ayuda44c k
)44k l
;44l m
}55 	
}66 
else66 
{66 

MessageBox77 
.77 
Show77 
(77 

Properties77 "
.77" #
	Resources77# ,
.77, -
mb_NombreVacio77- ;
,77; <

Properties77= G
.77G H
	Resources77H Q
.77Q R
	mb_Alerta77R [
)77[ \
;77\ ]
}88 
}99 
private@@ 
void@@ 
Bt_Ayuda_Click@@ 
(@@  
object@@  &
sender@@' -
,@@- .
RoutedEventArgs@@/ >
e@@? @
)@@@ A
{@@B C

MessageBoxAA 
.AA 
ShowAA 
(AA 

PropertiesAA  
.AA  !
	ResourcesAA! *
.AA* +
mb_AyudaDificultadAA+ =
,AA= >

PropertiesAA? I
.AAI J
	ResourcesAAJ S
.AAS T
mb_AyudaAAT \
)AA\ ]
;AA] ^
}BB 
privateKK 
voidKK 

CrearJuegoKK 
(KK 

ServiceSYEKK &
.KK& '
PartidaClientKK' 4
clientePartidaKK5 C
)KKC D
{KKE F
ifLL 
(LL	 

jugadorLL
 
.LL 
EstadisticasLL 
.LL 
PuntosLL %
>=LL& (
$numLL) ,
)LL, -
{LL. /

ServiceSYEMM 
.MM 
PartidaMM 
partidaMM "
=MM# $
newMM% (

ServiceSYEMM) 3
.MM3 4
PartidaMM4 ;
{MM< =
NombreNN
 
=NN 
tb_NombrePartidaNN #
.NN# $
TextNN$ (
+NN) *
$strNN+ .
+NN/ 0
jugadorNN1 8
.NN8 9
NombreUsuarioNN9 F
,NNF G

DificultadOO
 
=OO 
cb_DificultadOO $
.OO$ %
TextOO% )
,OO) *
TurnoPP
 
=PP 
$numPP 
,PP 
}QQ 	
;QQ	 

clientePartidaRR 
.RR 
CrearPartidaRR #
(RR# $
partidaRR$ +
)RR+ ,
;RR, -
menuPrincipalSS 
.SS 
UnirseAPartidaSS $
(SS$ %
partidaSS% ,
)SS, -
;SS- .
thisTT 
.TT 
CloseTT 
(TT 
)TT 
;TT 
}UU 
elseUU 
{UU 

MessageBoxVV 
.VV 
ShowVV 
(VV 

PropertiesVV "
.VV" #
	ResourcesVV# ,
.VV, -"
mb_PuntosInsuficientesVV- C
,VVC D

PropertiesVVE O
.VVO P
	ResourcesVVP Y
.VVY Z
	mb_AlertaVVZ c
)VVc d
;VVd e
}WW 
}XX 
private__ 
void__ *
Cb_Dificultad_SelectionChanged__ /
(__/ 0
object__0 6
sender__7 =
,__= >%
SelectionChangedEventArgs__? X
e__Y Z
)__Z [
{__\ ]
if`` 
(``	 

cb_Dificultad``
 
.`` 
SelectedItem`` $
.``$ %
ToString``% -
(``- .
)``. /
.``/ 0
	Substring``0 9
(``9 :
$num``: <
)``< =
.``= >
Equals``> D
(``D E

Properties``E O
.``O P
	Resources``P Y
.``Y Z

cbi_Normal``Z d
)``d e
)``e f
{``g h
	i_Tableroaa 
.aa 
Sourceaa 
=aa 
newaa 
BitmapImageaa *
(aa* +
newaa+ .
Uriaa/ 2
(aa2 3
$straa3 W
,aaW X
UriKindaaY `
.aa` a
Relativeaaa i
)aai j
)aaj k
;aak l
}bb 
elsebb 
{bb 
ifcc 

(cc 
cb_Dificultadcc 
.cc 
SelectedItemcc &
.cc& '
ToStringcc' /
(cc/ 0
)cc0 1
.cc1 2
	Substringcc2 ;
(cc; <
$numcc< >
)cc> ?
.cc? @
Equalscc@ F
(ccF G

PropertiesccG Q
.ccQ R
	ResourcesccR [
.cc[ \
	cbi_Facilcc\ e
)cce f
)ccf g
{cch i
	i_Tablerodd
 
.dd 
Sourcedd 
=dd 
newdd  
BitmapImagedd! ,
(dd, -
newdd- 0
Uridd1 4
(dd4 5
$strdd5 X
,ddX Y
UriKindddZ a
.dda b
Relativeddb j
)ddj k
)ddk l
;ddl m
}ee 	
elseee
 
{ee 
	i_Tableroff
 
.ff 
Sourceff 
=ff 
newff  
BitmapImageff! ,
(ff, -
newff- 0
Uriff1 4
(ff4 5
$strff5 Z
,ffZ [
UriKindff\ c
.ffc d
Relativeffd l
)ffl m
)ffm n
;ffn o
}gg 	
}hh 
}ii 
}jj 
}kk ��
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Espera.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public 
partial	 
class 
Espera 
: 
Window  &
{' (
private 

ServiceSYE 
. 
JugadorClient $
clienteJugador% 3
;3 4
DispatcherTimer "
validarConectadoEspera *
=+ ,
new- 0
DispatcherTimer1 @
(@ A
)A B
;B C
public 

Jugador 
Jugador 
{ 
get  
;  !
set" %
;% &
}' (
public 


ServiceSYE 
. 
Partida 
Partida %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

PartidaClient 
ClientePartida '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 


ChatClient 
ClienteChat !
{" #
get$ '
;' (
set) ,
;, -
}. /
public## 

Partidas## 
Partidas## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public'' 

Mensajes'' 
Mensajes'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public++ 

bool++ 
Cerrar++ 
{++ 
get++ 
;++ 
set++ !
;++! "
}++# $
=++% &
true++' +
;+++ ,
public00 

Espera00 
(00 
)00 
{00 
}11 
public<< 

Espera<< 
(<< 

ServiceSYE<< 
.<< 
Jugador<< $
jugador<<% ,
,<<, -

ServiceSYE<<. 8
.<<8 9
Partida<<9 @
partida<<A H
)<<H I
{<<J K
InitializeComponent== 
(== 
)== 
;== 
if>> 
(>>	 

lb_Esperando>>
 
.>> 
Content>> 
.>> 
ToString>> '
(>>' (
)>>( )
.>>) *
	Substring>>* 3
(>>3 4
$num>>4 5
,>>5 6
$num>>7 8
)>>8 9
.>>9 :
Equals>>: @
(>>@ A
$str>>A D
)>>D E
)>>E F
{>>G H
lb_Esperando?? 
.?? 
FontSize?? 
=?? 
$num??  "
;??" #
}@@ 
thisAA 

.AA
 
TitleAA 
=AA 
thisAA 
.AA 
TitleAA 
+AA 
$strAA  %
+AA& '
jugadorAA( /
.AA/ 0
NombreUsuarioAA0 =
;AA= >
thisBB 

.BB
 
JugadorBB 
=BB 
jugadorBB 
;BB 
thisCC 

.CC
 
PartidaCC 
=CC 
partidaCC 
;CC 
thisDD 

.DD
 
PartidasDD 
=DD 
newDD 
PartidasDD "
(DD" #
)DD# $
;DD$ %
InstanceContextEE 
contextoPartidaEE %
=EE& '
newEE( +
InstanceContextEE, ;
(EE; <
PartidasEE< D
)EED E
;EEE F
thisFF 

.FF
 
ClientePartidaFF 
=FF 
newFF 

ServiceSYEFF  *
.FF* +
PartidaClientFF+ 8
(FF8 9
contextoPartidaFF9 H
)FFH I
;FFI J
thisGG 

.GG
 
MensajesGG 
=GG 
newGG 
MensajesGG "
(GG" #
)GG# $
;GG$ %
thisHH 

.HH
 
MensajesHH 
.HH 
EsperaHH 
=HH 
thisHH !
;HH! "
InstanceContextII 
contextoChatII "
=II# $
newII% (
InstanceContextII) 8
(II8 9
MensajesII9 A
)IIA B
;IIB C
thisJJ 

.JJ
 
ClienteChatJJ 
=JJ 
newJJ 

ServiceSYEJJ '
.JJ' (

ChatClientJJ( 2
(JJ2 3
contextoChatJJ3 ?
)JJ? @
;JJ@ A
thisKK 

.KK
 
clienteJugadorKK 
=KK 
newKK 

ServiceSYEKK  *
.KK* +
JugadorClientKK+ 8
(KK8 9
)KK9 :
;KK: ;
tryLL 	
{LL
 
ClientePartidaMM 
.MM 
UnirsePartidaMM $
(MM$ %
jugadorMM% ,
,MM, -
partidaMM. 5
.MM5 6
NombreMM6 <
)MM< =
;MM= >
ClienteChatNN 
.NN 

UnirseChatNN 
(NN 
jugadorNN &
.NN& '
NombreUsuarioNN' 4
,NN4 5
partidaNN6 =
.NN= >
NombreNN> D
)NND E
;NNE F
ValidarConectadoOO 
(OO 
)OO 
;OO 
ClienteChatPP 
.PP 
EnviarMensajePP !
(PP! "
$strPP" $
,PP$ %
partidaPP& -
.PP- .
NombrePP. 4
)PP4 5
;PP5 6
}QQ 
catchQQ 
(QQ "
CommunicationExceptionQQ %
)QQ% &
{QQ' (
EnviarMensajeErrorRR 
(RR 
)RR 
;RR 
}SS 
}TT 
privateYY 
voidYY 
ValidarConectadoYY !
(YY! "
)YY" #
{YY$ %"
validarConectadoEsperaZZ 
.ZZ 
IntervalZZ %
=ZZ& '
newZZ( +
TimeSpanZZ, 4
(ZZ4 5
$numZZ5 6
,ZZ6 7
$numZZ8 9
,ZZ9 :
$numZZ; =
)ZZ= >
;ZZ> ?"
validarConectadoEspera[[ 
.[[ 
Tick[[ !
+=[[" $
([[% &
a[[& '
,[[' (
b[[) *
)[[* +
=>[[, .
{[[/ 0
try\\ 
{\\ 
clienteJugador]]
 
.]] 
UnirseAlJuego]] &
(]]& '
Jugador]]' .
)]]. /
;]]/ 0
}^^ 	
catch^^
 
(^^ "
CommunicationException^^ '
)^^' (
{^^) *
EnviarMensajeError__
 
(__ 
)__ 
;__ 
}`` 	
}aa 
;aa "
validarConectadoEsperabb 
.bb 
Startbb "
(bb" #
)bb# $
;bb$ %
}cc 
privatejj 
voidjj 
Bt_Enviar_Clickjj  
(jj  !
objectjj! '
senderjj( .
,jj. /
RoutedEventArgsjj0 ?
ejj@ A
)jjA B
{jjC D
ifkk 
(kk	 

ValidarMensajekk
 
(kk 

tb_Mensajekk #
.kk# $
Textkk$ (
)kk( )
)kk) *
{kk+ ,
ifll 

(ll $
ValidarCaracteresMensajell $
(ll$ %

tb_Mensajell% /
.ll/ 0
Textll0 4
)ll4 5
)ll5 6
{ll7 8
trymm
 
{mm 
ClienteChatnn 
.nn 
EnviarMensajenn %
(nn% &

tb_Mensajenn& 0
.nn0 1
Textnn1 5
,nn5 6
Partidann7 >
.nn> ?
Nombrenn? E
)nnE F
;nnF G
}oo
 
catchoo 
(oo "
CommunicationExceptionoo )
)oo) *
{oo+ ,
EnviarMensajeErrorpp 
(pp 
)pp  
;pp  !
}qq
 
}rr 	
elserr
 
{rr 

MessageBoxss
 
.ss 
Showss 
(ss 

Propertiesss $
.ss$ %
	Resourcesss% .
.ss. /)
mb_CaracteresInvalidosMensajess/ L
,ssL M

PropertiesssN X
.ssX Y
	ResourcesssY b
.ssb c
mb_Ayudassc k
)ssk l
;ssl m
}tt 	
}uu 

tb_Mensajevv 
.vv 
Textvv 
=vv 
$strvv 
;vv 
}ww 
public~~ 

void~~ 
Bt_Cancelar_Click~~ !
(~~! "
object~~" (
sender~~) /
,~~/ 0
RoutedEventArgs~~1 @
e~~A B
)~~B C
{~~D E
ClientePartida 
. 
SalirPartida !
(! "
Jugador" )
,) *
Partida+ 2
.2 3
Nombre3 9
)9 :
;: ;
ClienteChat
�� 
.
�� 
EnviarMensaje
�� 
(
��  
$str
��  #
,
��# $
Partida
��% ,
.
��, -
Nombre
��- 3
)
��3 4
;
��4 5
ClienteChat
�� 
.
�� 
	SalirChat
�� 
(
�� 
Partida
�� #
.
��# $
Nombre
��$ *
)
��* +
;
��+ ,
MenuPrincipal
�� 
menuPrincipal
�� !
=
��" #
new
��$ '
MenuPrincipal
��( 5
(
��5 6
Jugador
��6 =
)
��= >
;
��> ?
menuPrincipal
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
Cerrar
�� 
=
�� 
false
�� 
;
�� 
this
�� 

.
��
 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 
Window_Closing
�� 
(
��  
object
��  &
sender
��' -
,
��- .
System
��/ 5
.
��5 6
ComponentModel
��6 D
.
��D E
CancelEventArgs
��E T
e
��U V
)
��V W
{
��X Y$
validarConectadoEspera
�� 
.
�� 
Stop
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
��	 

Cerrar
��
 
)
�� 
{
�� 
ClientePartida
�� 
.
�� 
SalirPartida
�� #
(
��# $
Jugador
��$ +
,
��+ ,
Partida
��- 4
.
��4 5
Nombre
��5 ;
)
��; <
;
��< =
ClienteChat
�� 
.
�� 
EnviarMensaje
�� !
(
��! "
$str
��" %
,
��% &
Partida
��' .
.
��. /
Nombre
��/ 5
)
��5 6
;
��6 7
ClienteChat
�� 
.
�� 
	SalirChat
�� 
(
�� 
Partida
�� %
.
��% &
Nombre
��& ,
)
��, -
;
��- .
clienteJugador
�� 
.
�� 
SalirDelJuego
�� $
(
��$ %
Jugador
��% ,
)
��, -
;
��- .

MainWindow
�� 

mainWindow
�� 
=
�� 
new
��  #

MainWindow
��$ .
(
��. /
)
��/ 0
;
��0 1

mainWindow
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 

Boolean
�� 
ValidarMensaje
�� !
(
��! "
String
��" (
mensaje
��) 0
)
��0 1
{
��2 3
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

mensaje
��
 
!=
�� 
null
�� 
&&
�� 
mensaje
�� $
.
��$ %
Length
��% +
>
��, -
$num
��. /
)
��/ 0
{
��1 2
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
mensaje
�� #
.
��# $
Length
��$ *
;
��* +
i
��, -
++
��- /
)
��/ 0
{
��1 2
if
��
 
(
�� 
!
�� 
mensaje
�� 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
��  
(
��  !
$char
��! $
)
��$ %
)
��% &
{
��' (
validar
�� 
=
�� 
true
�� 
;
�� 
break
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� &
ValidarCaracteresMensaje
�� +
(
��+ ,
string
��, 2
mensaje
��3 :
)
��: ;
{
��< =
Boolean
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
mensaje
�� !
.
��! "
Length
��" (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0
if
�� 

(
�� 
!
�� 
(
�� 
(
�� 
mensaje
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
��  "
mensaje
��# *
[
��* +
i
��+ ,
]
��, -
<=
��. 0
$num
��1 3
)
��3 4
||
��5 7
(
��
 
mensaje
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
mensaje
�� &
[
��& '
i
��' (
]
��( )
<=
��* ,
$num
��- 0
)
��0 1
||
��2 4
(
��
 
mensaje
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
mensaje
�� &
[
��& '
i
��' (
]
��( )
<=
��* ,
$num
��- /
)
��/ 0
||
��1 3
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
||
��! #
mensaje
��$ +
[
��+ ,
i
��, -
]
��- .
.
��. /
Equals
��/ 5
(
��5 6
$char
��6 9
)
��9 :
||
��; =
mensaje
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
��  
)
��  !
)
��! "
{
��# $
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
private
�� 
void
��  
EnviarMensajeError
�� #
(
��# $
)
��$ %
{
��& ' 
MessageBoxTemporal
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� (
.
��( )
	Resources
��) 2
.
��2 3"
mb_ConexionServidor3
��3 G
,
��G H

Properties
��I S
.
��S T
	Resources
��T ]
.
��] ^
	mb_Alerta
��^ g
,
��g h
$num
��i j
,
��j k
false
��l q
)
��q r
;
��r s
MenuPrincipal
�� 
menuPrincipal
�� !
=
��" #
new
��$ '
MenuPrincipal
��( 5
(
��5 6
Jugador
��6 =
)
��= >
;
��> ?
menuPrincipal
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
Cerrar
�� 
=
�� 
false
�� 
;
�� 
this
�� 

.
��
 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� �H
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MessageBoxTemporal.cs
	namespace 	 
SerpientesYEscaleras
 
{  
class

 
MessageBoxTemporal

 
{

 
readonly 
System 
. 
	Threading 
. 
Timer #
intervaloTiempo$ 3
;3 4
readonly 
string 
tituloMessageBox $
;$ %
readonly 
string 
textoMessageBox #
;# $
int 
tiempoMaximo 
; 
IntPtr 

hndLabel 
= 
IntPtr 
. 
Zero !
;! "
readonly 
bool 
mostrarContador !
;! "
MessageBoxTemporal!! 
(!! 
string!! 
texto!! #
,!!# $
string!!% +
titulo!!, 2
,!!2 3
int!!4 7
tiempo!!8 >
,!!> ?
bool!!@ D
contador!!E M
)!!M N
{!!O P
tituloMessageBox"" 
="" 
titulo"" 
;""  
tiempoMaximo## 
=## 
tiempo## 
;## 
textoMessageBox$$ 
=$$ 
texto$$ 
;$$ 
mostrarContador%% 
=%% 
contador%%  
;%%  !
if'' 
(''	 

tiempoMaximo''
 
>'' 
$num'' 
)'' 
return'' #
;''# $
intervaloTiempo(( 
=(( 
new(( 
System(( "
.((" #
	Threading((# ,
.((, -
Timer((- 2
(((2 3
EjecutaCada1Segundo((3 F
,((F G
null))
 
,)) 
$num)) 
,)) 
$num)) 
))) 
;)) 
if** 
(**	 

contador**
 
)** 
{** 
DialogResult++ 
resultadoMensaje++ %
=++& '

MessageBox++( 2
.++2 3
Show++3 7
(++7 8
texto++8 =
+++> ?
$str,,C E
,,,E F
titulo,,G M
),,M N
;,,N O
if-- 

(-- 
resultadoMensaje-- 
==-- 
DialogResult--  ,
.--, -
OK--- /
)--/ 0
intervaloTiempo--1 @
.--@ A
Dispose--A H
(--H I
)--I J
;--J K
}.. 
else.. 
{.. 
DialogResult// 
resultadoMensaje// %
=//& '

MessageBox//( 2
.//2 3
Show//3 7
(//7 8
texto//8 =
,//= >
titulo//? E
)//E F
;//F G
if00 

(00 
resultadoMensaje00 
==00 
DialogResult00  ,
.00, -
OK00- /
)00/ 0
intervaloTiempo001 @
.00@ A
Dispose00A H
(00H I
)00I J
;00J K
}11 
}22 
publicCC 

staticCC 
voidCC 
ShowCC 
(CC 
stringCC "
textoCC# (
,CC( )
stringCC* 0
tituloCC1 7
,CC7 8
intCC9 <
tiempoCC= C
,CCC D
boolCCE I
contadorCCJ R
)CCR S
{CCT U
newDD 	
MessageBoxTemporalDD
 
(DD 
textoDD "
,DD" #
tituloDD$ *
,DD* +
tiempoDD, 2
,DD2 3
contadorDD4 <
)DD< =
;DD= >
}EE 
voidFF 
EjecutaCada1SegundoFF	 
(FF 
objectFF #
stateFF$ )
)FF) *
{FF+ ,
tiempoMaximoGG 
--GG 
;GG 
ifHH 
(HH	 

tiempoMaximoHH
 
<=HH 
$numHH 
)HH 
{HH 
IntPtrII 
hndMBoxII 
=II 

FindWindowII #
(II# $
nullII$ (
,II( )
tituloMessageBoxII* :
)II: ;
;II; <
ifJJ 

(JJ 
hndMBoxJJ 
!=JJ 
IntPtrJJ 
.JJ 
ZeroJJ "
)JJ" #
{JJ$ %
SendMessageKK
 
(KK 
hndMBoxKK 
,KK 
WM_CLOSEKK '
,KK' (
IntPtrKK) /
.KK/ 0
ZeroKK0 4
,KK4 5
IntPtrKK6 <
.KK< =
ZeroKK= A
)KKA B
;KKB C
intervaloTiempoLL
 
.LL 
DisposeLL !
(LL! "
)LL" #
;LL# $
}MM 	
}NN 
elseNN 
ifNN 
(NN 
mostrarContadorNN  
)NN  !
{NN" #
ifPP 

(PP 
hndLabelPP 
!=PP 
IntPtrPP 
.PP 
ZeroPP #
)PP# $
{PP% &
SetWindowTextQQ
 
(QQ 
hndLabelQQ  
,QQ  !
textoMessageBoxQQ" 1
+QQ2 3
$strSSC E
)SSE F
;SSF G
}TT 	
elseTT
 
{TT 
IntPtrUU
 
hndMBoxUU 
=UU 

FindWindowUU %
(UU% &
nullUU& *
,UU* +
tituloMessageBoxUU, <
)UU< =
;UU= >
ifVV
 
(VV 
hndMBoxVV 
!=VV 
IntPtrVV 
.VV  
ZeroVV  $
)VV$ %
{VV& '
hndLabelXX 
=XX 
FindWindowExXX #
(XX# $
hndMBoxXX$ +
,XX+ ,
IntPtrXX- 3
.XX3 4
ZeroXX4 8
,XX8 9
$strXX: B
,XXB C
nullXXD H
)XXH I
;XXI J
ifYY 
(YY 
hndLabelYY 
!=YY 
IntPtrYY "
.YY" #
ZeroYY# '
)YY' (
{YY) *
SetWindowText\\ 
(\\ 
hndLabel\\ $
,\\$ %
textoMessageBox\\& 5
+\\6 7
$str^^K M
)^^M N
;^^N O
}__ 
}``
 
}aa 	
}bb 
}cc 
constdd 	
intdd
 
WM_CLOSEdd 
=dd 
$numdd 
;dd  
[ee 
Systemee 
.ee 
Runtimeee 
.ee 
InteropServicesee #
.ee# $
	DllImportee$ -
(ee- .
$stree. :
,ee: ;
SetLastErroree< H
=eeI J
trueeeK O
)eeO P
]eeP Q
staticff 

externff 
IntPtrff 

FindWindowff #
(ff# $
stringff$ *
lpClassNameff+ 6
,ff6 7
stringff8 >
lpWindowNameff? K
)ffK L
;ffL M
[gg 
Systemgg 
.gg 
Runtimegg 
.gg 
InteropServicesgg #
.gg# $
	DllImportgg$ -
(gg- .
$strgg. :
,gg: ;
CharSethh 
=hh 
Systemhh 
.hh 
Runtimehh  
.hh  !
InteropServiceshh! 0
.hh0 1
CharSethh1 8
.hh8 9
Autohh9 =
)hh= >
]hh> ?
staticii 

externii 
IntPtrii 
SendMessageii $
(ii$ %
IntPtrii% +
hWndii, 0
,ii0 1
UInt32ii2 8
Msgii9 <
,ii< =
IntPtrii> D
wParamiiE K
,iiK L
IntPtriiM S
lParamiiT Z
)iiZ [
;ii[ \
[jj 
Systemjj 
.jj 
Runtimejj 
.jj 
InteropServicesjj #
.jj# $
	DllImportjj$ -
(jj- .
$strjj. :
,jj: ;
SetLastErrorjj< H
=jjI J
truejjK O
,jjO P
CharSetkk 
=kk 
Systemkk 
.kk 
Runtimekk  
.kk  !
InteropServiceskk! 0
.kk0 1
CharSetkk1 8
.kk8 9
Autokk9 =
)kk= >
]kk> ?
staticll 

externll 
IntPtrll 
FindWindowExll %
(ll% &
IntPtrll& ,

hwndParentll- 7
,ll7 8
IntPtrll9 ?
hwndChildAfterll@ N
,llN O
stringmm 
	lpszClassmm 
,mm 
stringmm  

lpszWindowmm! +
)mm+ ,
;mm, -
[nn 
Systemnn 
.nn 
Runtimenn 
.nn 
InteropServicesnn #
.nn# $
	DllImportnn$ -
(nn- .
$strnn. :
,nn: ;
SetLastErrornn< H
=nnI J
truennK O
,nnO P
CharSetoo 
=oo 
Systemoo 
.oo 
Runtimeoo  
.oo  !
InteropServicesoo! 0
.oo0 1
CharSetoo1 8
.oo8 9
Autooo9 =
)oo= >
]oo> ?
staticpp 

externpp 
boolpp 
SetWindowTextpp $
(pp$ %
IntPtrpp% +
hwndpp, 0
,pp0 1
stringpp2 8
lpStringpp9 A
)ppA B
;ppB C
}qq 
}rr ��
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Partida.xaml.cs
	namespace

 	 
SerpientesYEscaleras


 
{

  
public 
partial	 
class 
Partida 
:  
Window! '
{( )
private 

ServiceSYE 
. 
PartidaClient $
clientePartida% 3
;3 4
private 

ServiceSYE 
. 

ChatClient !
clienteChat" -
;- .
private 

ServiceSYE 
. 
JugadorClient $
clienteJugador% 3
;3 4
private 
List 
< 

ServiceSYE 
. 
Jugador #
># $
posicionJugadores% 6
;6 7
private 
DispatcherTimer 
temporizador (
;( )
private 
Boolean 
bonus 
= 
false !
;! "
private 
Boolean 
cerrar 
= 
true !
;! "
DispatcherTimer #
validarConectadoPartida +
=, -
new. 1
DispatcherTimer2 A
(A B
)B C
;C D
public 

Jugador 
Jugador 
{ 
get  
;  !
set" %
;% &
}' (
public   


ServiceSYE   
.   
Partida   
PartidaEnJuego   ,
{  - .
get  / 2
;  2 3
set  4 7
;  7 8
}  9 :
public%% 

Partida%% 
(%% 
)%% 
{%% 
InitializeComponent&& 
(&& 
)&& 
;&& 
}'' 
public>> 

Partida>> 
(>> 

ServiceSYE>> 
.>> 
Jugador>> %
jugador>>& -
,>>- .

ServiceSYE>>/ 9
.>>9 :
Partida>>: A
partida>>B I
,>>I J

ServiceSYE>>K U
.>>U V
PartidaClient>>V c
clientePartida>>d r
,>>r s

ServiceSYE>>t ~
.>>~ 

ChatClient	>> �
clienteChat
>>� �
,
>>� �
Partidas
>>� �
partidas
>>� �
,
>>� �
Mensajes
>>� �
mensajes
>>� �
)
>>� �
{
>>� �
InitializeComponent?? 
(?? 
)?? 
;?? 
this@@ 

.@@
 
Title@@ 
=@@ 
this@@ 
.@@ 
Title@@ 
+@@ 
$str@@  %
+@@& '
jugador@@( /
.@@/ 0
NombreUsuario@@0 =
;@@= >
partidasAA 
.AA 
PartidaAA 
=AA 
thisAA 
;AA 
mensajesBB 
.BB 
PartidaBB 
=BB 
thisBB 
;BB 
thisCC 

.CC
 
JugadorCC 
=CC 
jugadorCC 
;CC 
thisDD 

.DD
 
clienteChatDD 
=DD 
clienteChatDD $
;DD$ %
thisEE 

.EE
 
clientePartidaEE 
=EE 
clientePartidaEE *
;EE* +
thisFF 

.FF
 
clienteJugadorFF 
=FF 
newFF 

ServiceSYEFF  *
.FF* +
JugadorClientFF+ 8
(FF8 9
)FF9 :
;FF: ;
tryGG 	
{GG
 
thisHH 
.HH 
PartidaEnJuegoHH 
=HH 
clientePartidaHH ,
.HH, -
ObtenerPartidaHH- ;
(HH; <
partidaHH< C
.HHC D
NombreHHD J
)HHJ K
;HHK L
DispatcherTimerII 
temporizadorInicioII *
=II+ ,
newII- 0
DispatcherTimerII1 @
(II@ A
)IIA B
;IIB C
temporizadorInicioJJ 
.JJ 
IntervalJJ #
=JJ$ %
newJJ& )
TimeSpanJJ* 2
(JJ2 3
$numJJ3 4
,JJ4 5
$numJJ6 7
,JJ7 8
$numJJ9 :
)JJ: ;
;JJ; <
temporizadorInicioKK 
.KK 
TickKK 
+=KK  "
(KK# $
aKK$ %
,KK% &
bKK' (
)KK( )
=>KK* ,
{KK- .
temporizadorInicioLL
 
.LL 
StopLL !
(LL! "
)LL" #
;LL# $
ifMM
 
(MM 
PartidaEnJuegoMM 
.MM 
JugadoresPartidaMM -
.MM- .
	ElementAtMM. 7
(MM7 8
$numMM8 9
)MM9 :
.MM: ;
ValueMM; @
.MM@ A
NombreUsuarioMMA N
.MMN O
EqualsMMO U
(MMU V
jugadorMMV ]
.MM] ^
NombreUsuarioMM^ k
)MMk l
)MMl m
{MMn o
tryNN 
{NN 
clienteChatOO 
.OO  
EnviarMensajePartidaOO .
(OO. /
$strOO/ 1
,OO1 2
PartidaEnJuegoOO3 A
.OOA B
NombreOOB H
,OOH I
$numOOJ K
)OOK L
;OOL M
}PP 
catchPP 
(PP "
CommunicationExceptionPP +
)PP+ ,
{PP- .
EnviarMensajeErrorQQ  
(QQ  !
)QQ! "
;QQ" #
}RR 
}SS
 
}TT 	
;TT	 

temporizadorInicioUU 
.UU 
StartUU  
(UU  !
)UU! "
;UU" #
CargarTableroVV 
(VV 
)VV 
;VV 
CargarBonusWW 
(WW 
)WW 
;WW 
thisXX 
.XX 
JugadorXX 
=XX 
ObtenerTurnoXX #
(XX# $
PartidaEnJuegoXX$ 2
.XX2 3
JugadoresPartidaXX3 C
,XXC D
thisXXE I
.XXI J
JugadorXXJ Q
)XXQ R
;XXR S
EnviarMensajeTurnosYY 
(YY 
)YY 
;YY 
ValidarConectadoZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
catch[[ 
([[ "
CommunicationException[[ %
)[[% &
{[[' (
EnviarMensajeError\\ 
(\\ 
)\\ 
;\\ 
}]] 
}^^ 
privatecc 
voidcc 
ValidarConectadocc !
(cc! "
)cc" #
{cc$ %#
validarConectadoPartidadd 
.dd 
Intervaldd &
=dd' (
newdd) ,
TimeSpandd- 5
(dd5 6
$numdd6 7
,dd7 8
$numdd9 :
,dd: ;
$numdd< >
)dd> ?
;dd? @#
validarConectadoPartidaee 
.ee 
Tickee "
+=ee# %
(ee& '
aee' (
,ee( )
bee* +
)ee+ ,
=>ee- /
{ee0 1
tryff 
{ff 
clienteJugadorgg
 
.gg 
UnirseAlJuegogg &
(gg& '
Jugadorgg' .
)gg. /
;gg/ 0
}hh 	
catchhh
 
(hh "
CommunicationExceptionhh '
)hh' (
{hh) *
EnviarMensajeErrorii
 
(ii 
)ii 
;ii 
}jj 	
}kk 
;kk #
validarConectadoPartidall 
.ll 
Startll #
(ll# $
)ll$ %
;ll% &
}mm 
privatett 
voidtt 
Bt_Dado_Clicktt 
(tt 
objecttt %
sendertt& ,
,tt, -
RoutedEventArgstt. =
ett> ?
)tt? @
{ttA B
bt_Dadouu 
.uu 
	IsEnableduu 
=uu 
falseuu 
;uu  
temporizadorvv 
.vv 
Stopvv 
(vv 
)vv 
;vv 
	lb_Tiempoww 
.ww 
Contentww 
=ww 
$numww 
;ww 
Randomxx 
randomxx 
=xx 
newxx 
Randomxx  
(xx  !
)xx! "
;xx" #
lb_Dadoyy 
.yy 
Contentyy 
=yy 
randomyy 
.yy 
Nextyy #
(yy# $
$numyy$ %
,yy% &
$numyy' (
)yy( )
;yy) *
DispatcherTimerzz 
temporizadorTurnozz '
=zz( )
newzz* -
DispatcherTimerzz. =
(zz= >
)zz> ?
;zz? @
temporizadorTurno{{ 
.{{ 
Interval{{  
={{! "
new{{# &
TimeSpan{{' /
({{/ 0
$num{{0 1
,{{1 2
$num{{3 4
,{{4 5
$num{{6 7
){{7 8
;{{8 9
temporizadorTurno|| 
.|| 
Tick|| 
+=|| 
(||  !
a||! "
,||" #
b||$ %
)||% &
=>||' )
{||* +
temporizadorTurno}} 
.}} 
Stop}} 
(}} 
)}}  
;}}  !
try~~ 
{~~ 
if
 
( 
! 
bonus 
) 
{ 
if
�� 
(
�� 
PartidaEnJuego
�� 
.
�� 
Turno
�� $
.
��$ %
Equals
��% +
(
��+ ,
PartidaEnJuego
��, :
.
��: ;
JugadoresPartida
��; K
.
��K L
	ElementAt
��L U
(
��U V
PartidaEnJuego
��V d
.
��d e
JugadoresPartida
��e u
.
��u v
Count
��v {
-
��| }
$num
��~ 
)�� �
.��� �
Value��� �
.��� �
Turno��� �
.��� �
NumeroTurno��� �
)��� �
)��� �
{��� �
clientePartida
�� 
.
�� 
CambiarTurno
�� )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Nombre
��9 ?
,
��? @ 
CalcularMovimiento
��A S
(
��S T
Convert
��T [
.
��[ \
ToInt32
��\ c
(
��c d
lb_Dado
��d k
.
��k l
Content
��l s
)
��s t
,
��t u
Jugador
��v }
,
��} ~
PartidaEnJuego�� �
)��� �
,��� �
$num��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
clientePartida
�� 
.
�� 
CambiarTurno
�� )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Nombre
��9 ?
,
��? @ 
CalcularMovimiento
��A S
(
��S T
Convert
��T [
.
��[ \
ToInt32
��\ c
(
��c d
lb_Dado
��d k
.
��k l
Content
��l s
)
��s t
,
��t u
Jugador
��v }
,
��} ~
PartidaEnJuego�� �
)��� �
,��� �
PartidaEnJuego��� �
.��� �
Turno��� �
+��� �
$num��� �
)��� �
;��� �
}
�� 
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� ,
(
��, -
lb_Dado
��- 4
.
��4 5
Content
��5 <
.
��< =
ToString
��= E
(
��E F
)
��F G
,
��G H
PartidaEnJuego
��I W
.
��W X
Nombre
��X ^
,
��^ _
$num
��` a
)
��a b
;
��b c
}
��
 
else
�� 
{
�� 
MovimientoBonus
�� 
(
�� 
Convert
�� #
.
��# $
ToInt32
��$ +
(
��+ ,
lb_Dado
��, 3
.
��3 4
Content
��4 ;
)
��; <
)
��< =
;
��= >
}
��
 
}
�� 	
catch
��
 
(
�� $
CommunicationException
�� '
)
��' (
{
��) * 
EnviarMensajeError
��
 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
;
�� 
temporizadorTurno
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
��  
}
�� 
private
�� 
void
��  
Bt_Abandonar_Click
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
��F G
try
�� 	
{
��
 
Jugador
�� 
.
�� 
Estadisticas
�� 
.
�� 
Puntos
�� #
=
��$ %
Convert
��& -
.
��- .
ToInt16
��. 5
(
��5 6
Jugador
��6 =
.
��= >
Estadisticas
��> J
.
��J K
Puntos
��K Q
-
��R S
$num
��T W
)
��W X
;
��X Y
clienteJugador
�� 
.
�� #
ModificarEstadisticas
�� ,
(
��, -
Jugador
��- 4
.
��4 5
NombreUsuario
��5 B
,
��B C
Jugador
��D K
.
��K L
Estadisticas
��L X
.
��X Y
Puntos
��Y _
,
��_ `
Jugador
��a h
.
��h i
Estadisticas
��i u
.
��u v
	Victorias
��v 
)�� �
;��� �
clientePartida
�� 
.
�� !
SalirPartidaEnJuego
�� *
(
��* +
Jugador
��+ 2
,
��2 3
PartidaEnJuego
��4 B
.
��B C
Nombre
��C I
)
��I J
;
��J K
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� (
(
��( )
$str
��) +
,
��+ ,
PartidaEnJuego
��- ;
.
��; <
Nombre
��< B
,
��B C
$num
��D E
)
��E F
;
��F G
clienteChat
�� 
.
�� 
SalirChatPartida
�� $
(
��$ %
PartidaEnJuego
��% 3
.
��3 4
Nombre
��4 :
)
��: ;
;
��; <
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
cerrar
�� 
=
�� 
false
�� 
;
�� 
this
�� 

.
��
 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 
Bt_Ayuda_Click
�� 
(
��  
object
��  &
sender
��' -
,
��- .
RoutedEventArgs
��/ >
e
��? @
)
��@ A
{
��B C

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
��  
.
��  !
	Resources
��! *
.
��* +
mb_AyudaPartida
��+ :
,
��: ;

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q
mb_Ayuda
��Q Y
)
��Y Z
;
��Z [
}
�� 
private
�� 
void
�� 
Bt_Enviar_Click
��  
(
��  !
object
��! '
sender
��( .
,
��. /
RoutedEventArgs
��0 ?
e
��@ A
)
��A B
{
��C D
Espera
�� 
espera
�� 
=
�� 
new
�� 
Espera
��  
(
��  !
)
��! "
;
��" #
if
�� 
(
��	 

espera
��
 
.
�� 
ValidarMensaje
�� 
(
��  

tb_Mensaje
��  *
.
��* +
Text
��+ /
)
��/ 0
)
��0 1
{
��2 3
if
�� 

(
�� 
espera
�� 
.
�� &
ValidarCaracteresMensaje
�� +
(
��+ ,

tb_Mensaje
��, 6
.
��6 7
Text
��7 ;
)
��; <
)
��< =
{
��> ?
try
��
 
{
�� 
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� ,
(
��, -

tb_Mensaje
��- 7
.
��7 8
Text
��8 <
,
��< =
PartidaEnJuego
��> L
.
��L M
Nombre
��M S
,
��S T
$num
��U V
)
��V W
;
��W X
}
��
 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
��+ , 
EnviarMensajeError
�� 
(
�� 
)
��  
;
��  !
}
��
 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /+
mb_CaracteresInvalidosMensaje
��/ L
,
��L M

Properties
��N X
.
��X Y
	Resources
��Y b
.
��b c
mb_Ayuda
��c k
)
��k l
;
��l m
}
�� 	
}
�� 

tb_Mensaje
�� 
.
�� 
Text
�� 
=
�� 
$str
�� 
;
�� 
}
�� 
private
�� 
void
�� 
Window_Closing
�� 
(
��  
object
��  &
sender
��' -
,
��- .
System
��/ 5
.
��5 6
ComponentModel
��6 D
.
��D E
CancelEventArgs
��E T
e
��U V
)
��V W
{
��X Y
if
�� 
(
��	 

cerrar
��
 
)
�� 
{
�� 
e
�� 	
.
��	 

Cancel
��
 
=
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� %
validarConectadoPartida
�� 
.
��  
Stop
��  $
(
��$ %
)
��% &
;
��& '
MenuPrincipal
�� 
menuPrincipal
�� #
=
��$ %
new
��& )
MenuPrincipal
��* 7
(
��7 8
Jugador
��8 ?
)
��? @
;
��@ A
menuPrincipal
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
void
�� 
CargarTablero
�� 
(
�� 
)
��  
{
��! "
if
�� 
(
��	 

PartidaEnJuego
��
 
.
�� 

Dificultad
�� #
.
��# $
Equals
��$ *
(
��* +
$str
��+ 2
)
��2 3
||
��4 6
PartidaEnJuego
��7 E
.
��E F

Dificultad
��F P
.
��P Q
Equals
��Q W
(
��W X
$str
��X ^
)
��^ _
)
��_ `
{
��a b
	i_Tablero
�� 
.
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� *
(
��* +
new
��+ .
Uri
��/ 2
(
��2 3
$str
��3 V
,
��V W
UriKind
��X _
.
��_ `
Relative
��` h
)
��h i
)
��i j
;
��j k
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 

Dificultad
�� %
.
��% &
Equals
��& ,
(
��, -
$str
��- 6
)
��6 7
||
��8 :
PartidaEnJuego
��; I
.
��I J

Dificultad
��J T
.
��T U
Equals
��U [
(
��[ \
$str
��\ b
)
��b c
)
��c d
{
��e f
	i_Tablero
��
 
.
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
$str
��5 Z
,
��Z [
UriKind
��\ c
.
��c d
Relative
��d l
)
��l m
)
��m n
;
��n o
}
�� 	
}
�� 
}
�� 
public
�� 

Jugador
�� 
ObtenerTurno
�� 
(
��  

Dictionary
��  *
<
��* +
object
��+ 1
,
��1 2
Jugador
��3 :
>
��: ;
jugadoresPartida
��< L
,
��L M
Jugador
��N U
jugadorTurno
��V b
)
��b c
{
��d e
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
�� 
++
��  
)
��  !
{
��" #
if
�� 

(
�� 
jugadoresPartida
�� 
.
�� 
	ElementAt
�� &
(
��& '
i
��' (
)
��( )
.
��) *
Value
��* /
.
��/ 0
NombreUsuario
��0 =
.
��= >
Equals
��> D
(
��D E
jugadorTurno
��E Q
.
��Q R
NombreUsuario
��R _
)
��_ `
)
��` a
{
��b c
jugadorTurno
��
 
=
�� 
jugadoresPartida
�� )
.
��) *
	ElementAt
��* 3
(
��3 4
i
��4 5
)
��5 6
.
��6 7
Value
��7 <
;
��< =
lb_Turno
��
 
.
�� 
Content
�� 
=
�� 
i
�� 
+
��  
$num
��! "
;
��" #
break
��
 
;
�� 
}
�� 	
}
�� 
switch
�� 
(
�� 
Convert
�� 
.
�� 
ToInt32
�� 
(
�� 
lb_Turno
�� &
.
��& '
Content
��' .
)
��. /
)
��/ 0
{
��1 2
case
�� 
$num
�� 
:
�� 
i_Ficha
��
 
.
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� *
(
��* +
new
��+ .
Uri
��/ 2
(
��2 3
$str
��3 P
,
��P Q
UriKind
��R Y
.
��Y Z
Relative
��Z b
)
��b c
)
��c d
;
��d e
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha
��
 
.
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� *
(
��* +
new
��+ .
Uri
��/ 2
(
��2 3
$str
��3 P
,
��P Q
UriKind
��R Y
.
��Y Z
Relative
��Z b
)
��b c
)
��c d
;
��d e
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha
��
 
.
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� *
(
��* +
new
��+ .
Uri
��/ 2
(
��2 3
$str
��3 P
,
��P Q
UriKind
��R Y
.
��Y Z
Relative
��Z b
)
��b c
)
��c d
;
��d e
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha
��
 
.
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� *
(
��* +
new
��+ .
Uri
��/ 2
(
��2 3
$str
��3 P
,
��P Q
UriKind
��R Y
.
��Y Z
Relative
��Z b
)
��b c
)
��c d
;
��d e
break
��
 
;
�� 
}
�� 
return
�� 
jugadorTurno
�� 
;
�� 
}
�� 
private
�� 
void
�� 
CargarBonus
�� 
(
�� 
)
�� 
{
��  
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
Tablero
�� "
.
��" #
Casillas
��# +
[
��+ ,
i
��, -
]
��- .
.
��. /
Bonus
��/ 4
)
��4 5
{
��6 7
i_Bonus1
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Tablero
��9 @
.
��@ A
Casillas
��A I
[
��I J
i
��J K
]
��K L
.
��L M
	PosicionX
��M V
,
��V W
$num
��X Y
,
��Y Z
$num
��[ \
,
��\ ]
PartidaEnJuego
��^ l
.
��l m
Tablero
��m t
.
��t u
Casillas
��u }
[
��} ~
i
��~ 
]�� �
.��� �
	PosicionY��� �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
}
�� 	
}
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
Tablero
�� "
.
��" #
Casillas
��# +
[
��+ ,
i
��, -
]
��- .
.
��. /
Bonus
��/ 4
)
��4 5
{
��6 7
i_Bonus2
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Tablero
��9 @
.
��@ A
Casillas
��A I
[
��I J
i
��J K
]
��K L
.
��L M
	PosicionX
��M V
,
��V W
$num
��X Y
,
��Y Z
$num
��[ \
,
��\ ]
PartidaEnJuego
��^ l
.
��l m
Tablero
��m t
.
��t u
Casillas
��u }
[
��} ~
i
��~ 
]�� �
.��� �
	PosicionY��� �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
}
�� 	
}
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
Tablero
�� "
.
��" #
Casillas
��# +
[
��+ ,
i
��, -
]
��- .
.
��. /
Bonus
��/ 4
)
��4 5
{
��6 7
i_Bonus3
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Tablero
��9 @
.
��@ A
Casillas
��A I
[
��I J
i
��J K
]
��K L
.
��L M
	PosicionX
��M V
,
��V W
$num
��X Y
,
��Y Z
$num
��[ \
,
��\ ]
PartidaEnJuego
��^ l
.
��l m
Tablero
��m t
.
��t u
Casillas
��u }
[
��} ~
i
��~ 
]�� �
.��� �
	PosicionY��� �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
}
�� 	
}
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
Tablero
�� "
.
��" #
Casillas
��# +
[
��+ ,
i
��, -
]
��- .
.
��. /
Bonus
��/ 4
)
��4 5
{
��6 7
i_Bonus4
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
Tablero
��9 @
.
��@ A
Casillas
��A I
[
��I J
i
��J K
]
��K L
.
��L M
	PosicionX
��M V
,
��V W
$num
��X Y
,
��Y Z
$num
��[ \
,
��\ ]
PartidaEnJuego
��^ l
.
��l m
Tablero
��m t
.
��t u
Casillas
��u }
[
��} ~
i
��~ 
]�� �
.��� �
	PosicionY��� �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
}
�� 	
}
�� 
}
�� 
public
�� 

void
�� 
ActivarDado
�� 
(
�� 
)
�� 
{
�� 
bt_Dado
�� 
.
�� 
	IsEnabled
�� 
=
�� 
true
�� 
;
�� 
temporizador
�� 
=
�� 
new
�� 
DispatcherTimer
�� (
(
��( )
)
��) *
;
��* +
temporizador
�� 
.
�� 
Interval
�� 
=
�� 
new
�� !
TimeSpan
��" *
(
��* +
$num
��+ ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
temporizador
�� 
.
�� 
Tick
�� 
+=
�� 
(
�� 
a
�� 
,
�� 
b
��  
)
��  !
=>
��" $
{
��% &
	lb_Tiempo
�� 
.
�� 
Content
�� 
=
�� 
Convert
�� #
.
��# $
ToInt32
��$ +
(
��+ ,
	lb_Tiempo
��, 5
.
��5 6
Content
��6 =
)
��= >
-
��? @
$num
��A B
;
��B C
if
�� 

(
�� 
	lb_Tiempo
�� 
.
�� 
Content
�� 
.
�� 
Equals
�� $
(
��$ %
$num
��% &
)
��& '
)
��' (
{
��) *
TurnoPerdido
��
 
(
�� 
)
�� 
;
�� 
temporizador
��
 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
;
�� 
temporizador
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 
TurnoPerdido
�� 
(
�� 
)
�� 
{
��  !
bt_Dado
�� 
.
�� 
	IsEnabled
�� 
=
�� 
false
�� 
;
��  
	lb_Tiempo
�� 
.
�� 
Content
�� 
=
�� 
$num
�� 
;
�� 
try
�� 	
{
��
 
if
�� 

(
�� 
!
�� 
bonus
�� 
)
�� 
{
�� 
if
��
 
(
�� 
PartidaEnJuego
�� 
.
�� 
Turno
�� "
.
��" #
Equals
��# )
(
��) *
PartidaEnJuego
��* 8
.
��8 9
JugadoresPartida
��9 I
.
��I J
	ElementAt
��J S
(
��S T
PartidaEnJuego
��T b
.
��b c
JugadoresPartida
��c s
.
��s t
Count
��t y
-
��z {
$num
��| }
)
��} ~
.
��~ 
Value�� �
.��� �
Turno��� �
.��� �
NumeroTurno��� �
)��� �
)��� �
{��� �
clientePartida
�� 
.
�� 
CambiarTurno
�� '
(
��' (
PartidaEnJuego
��( 6
.
��6 7
Nombre
��7 =
,
��= >
$num
��? @
,
��@ A
$num
��B C
)
��C D
;
��D E
}
��
 
else
�� 
{
�� 
clientePartida
�� 
.
�� 
CambiarTurno
�� '
(
��' (
PartidaEnJuego
��( 6
.
��6 7
Nombre
��7 =
,
��= >
$num
��? @
,
��@ A
PartidaEnJuego
��B P
.
��P Q
Turno
��Q V
+
��W X
$num
��Y Z
)
��Z [
;
��[ \
}
��
 
}
�� 	
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� (
(
��( )
$str
��) +
,
��+ ,
PartidaEnJuego
��- ;
.
��; <
Nombre
��< B
,
��B C
$num
��D E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 

int
��  
CalcularMovimiento
�� !
(
��! "
int
��" %

numeroDado
��& 0
,
��0 1
Jugador
��2 9
jugadorMovimiento
��: K
,
��K L

ServiceSYE
��M W
.
��W X
Partida
��X _
partidaJugando
��` n
)
��n o
{
��p q
int
�� 	

movimiento
��
 
;
�� 
if
�� 
(
��	 

jugadorMovimiento
��
 
.
�� 
Turno
�� !
.
��! "
Casilla
��" )
.
��) *
Numero
��* 0
+
��1 2

numeroDado
��3 =
>
��> ?
$num
��@ C
)
��C D
{
��E F

movimiento
�� 
=
�� 
$num
�� 
-
�� 
(
�� 
jugadorMovimiento
�� -
.
��- .
Turno
��. 3
.
��3 4
Casilla
��4 ;
.
��; <
Numero
��< B
+
��C D

numeroDado
��E O
-
��P Q
$num
��R U
)
��U V
;
��V W
}
�� 
else
�� 
{
�� 

movimiento
�� 
=
�� 
jugadorMovimiento
�� &
.
��& '
Turno
��' ,
.
��, -
Casilla
��- 4
.
��4 5
Numero
��5 ;
+
��< =

numeroDado
��> H
;
��H I
}
�� 
jugadorMovimiento
�� 
.
�� 
Turno
�� 
.
�� 
Casilla
�� %
=
��& '
partidaJugando
��( 6
.
��6 7
Tablero
��7 >
.
��> ?
Casillas
��? G
[
��G H

movimiento
��H R
-
��S T
$num
��U V
]
��V W
;
��W X
return
�� 

movimiento
�� 
;
�� 
}
�� 
public
�� 

void
�� "
DeterminarMovimiento
�� $
(
��$ %
String
��% +
nombreUsuario
��, 9
,
��9 :
String
��; A
mensaje
��B I
)
��I J
{
��K L
try
�� 	
{
��
 
PartidaEnJuego
�� 
=
�� 
clientePartida
�� '
.
��' (
ObtenerPartida
��( 6
(
��6 7
PartidaEnJuego
��7 E
.
��E F
Nombre
��F L
)
��L M
;
��M N
if
�� 

(
�� 
bonus
�� 
&&
�� 
mensaje
�� 
.
�� 
Equals
�� #
(
��# $
$str
��$ '
)
��' (
)
��( )
{
��* +
CambiarTurno
��
 
(
�� 
nombreUsuario
�� $
)
��$ %
;
��% &
}
�� 	
else
��
 
{
�� 
lb_Dado
��
 
.
�� 
Content
�� 
=
�� 
$str
�� 
;
�� 

ServiceSYE
��
 
.
�� 
Jugador
�� 
jugadorMovimiento
�� .
=
��/ 0)
DeterminarJugadorMovimiento
��1 L
(
��L M
nombreUsuario
��M Z
)
��Z [
;
��[ \

MoverFicha
��
 
(
�� 
jugadorMovimiento
�� &
)
��& '
;
��' (
if
��
 
(
�� 
jugadorMovimiento
�� 
.
��  
Turno
��  %
.
��% &
Casilla
��& -
.
��- .

Movimiento
��. 8
!=
��9 ;
$num
��< =
)
��= >
{
��? @*
MoverFichaSerpienteOEscalera
�� (
(
��( )
jugadorMovimiento
��) :
)
��: ;
;
��; <
}
��
 
else
�� 
{
�� 
if
�� 
(
�� 
jugadorMovimiento
�� !
.
��! "
Turno
��" '
.
��' (
Casilla
��( /
.
��/ 0
Bonus
��0 5
)
��5 6
{
��7 8
bonus
�� 
=
�� 
true
�� 
;
�� 

TirarBonus
�� 
(
�� 
jugadorMovimiento
�� *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
CambiarTurno
�� 
(
�� 
nombreUsuario
�� (
)
��( )
;
��) *
}
�� 
}
��
 
}
�� 	
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 

Jugador
�� )
DeterminarJugadorMovimiento
�� .
(
��. /
String
��/ 5
nombreUsuario
��6 C
)
��C D
{
��E F

ServiceSYE
�� 
.
�� 
Jugador
�� 
jugadorMovimiento
�� *
=
��+ ,
new
��- 0

ServiceSYE
��1 ;
.
��; <
Jugador
��< C
(
��C D
)
��D E
;
��E F
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
PartidaEnJuego
�� (
.
��( )
JugadoresPartida
��) 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
��F G
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
JugadoresPartida
�� +
.
��+ ,
	ElementAt
��, 5
(
��5 6
i
��6 7
)
��7 8
.
��8 9
Value
��9 >
.
��> ?
NombreUsuario
��? L
.
��L M
Equals
��M S
(
��S T
nombreUsuario
��T a
)
��a b
)
��b c
{
��d e
jugadorMovimiento
��
 
=
�� 
PartidaEnJuego
�� ,
.
��, -
JugadoresPartida
��- =
.
��= >
	ElementAt
��> G
(
��G H
i
��H I
)
��I J
.
��J K
Value
��K P
;
��P Q
}
�� 	
}
�� 
return
�� 
jugadorMovimiento
�� 
;
�� 
}
�� 
private
�� 
void
�� 

MoverFicha
�� 
(
�� 
Jugador
�� #
jugadorMovimiento
��$ 5
)
��5 6
{
��7 8
switch
�� 
(
�� 
jugadorMovimiento
�� 
.
��  
Turno
��  %
.
��% &
NumeroTurno
��& 1
)
��1 2
{
��3 4
case
�� 
$num
�� 
:
�� 
i_Ficha1
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
jugadorMovimiento
��* ;
.
��; <
Turno
��< A
.
��A B
Casilla
��B I
.
��I J
	PosicionX
��J S
+
��T U
$num
��V X
,
��X Y
$num
��Z [
,
��[ \
$num
��] ^
,
��^ _
jugadorMovimiento
��` q
.
��q r
Turno
��r w
.
��w x
Casilla
��x 
.�� �
	PosicionY��� �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha2
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
jugadorMovimiento
��* ;
.
��; <
Turno
��< A
.
��A B
Casilla
��B I
.
��I J
	PosicionX
��J S
,
��S T
$num
��U V
,
��V W
$num
��X Y
,
��Y Z
jugadorMovimiento
��[ l
.
��l m
Turno
��m r
.
��r s
Casilla
��s z
.
��z {
	PosicionY��{ �
)��� �
;��� �
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha3
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
jugadorMovimiento
��* ;
.
��; <
Turno
��< A
.
��A B
Casilla
��B I
.
��I J
	PosicionX
��J S
,
��S T
$num
��U V
,
��V W
$num
��X Y
,
��Y Z
jugadorMovimiento
��[ l
.
��l m
Turno
��m r
.
��r s
Casilla
��s z
.
��z {
	PosicionY��{ �
-��� �
$num��� �
)��� �
;��� �
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
i_Ficha4
��
 
.
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
��  )
(
��) *
jugadorMovimiento
��* ;
.
��; <
Turno
��< A
.
��A B
Casilla
��B I
.
��I J
	PosicionX
��J S
+
��T U
$num
��V X
,
��X Y
$num
��Z [
,
��[ \
$num
��] ^
,
��^ _
jugadorMovimiento
��` q
.
��q r
Turno
��r w
.
��w x
Casilla
��x 
.�� �
	PosicionY��� �
)��� �
;��� �
break
��
 
;
�� 
}
�� 
}
�� 
private
�� 
void
�� *
MoverFichaSerpienteOEscalera
�� -
(
��- .

ServiceSYE
��. 8
.
��8 9
Jugador
��9 @
jugadorMovimiento
��A R
)
��R S
{
��T U
try
�� 	
{
��
 
if
�� 

(
�� 
jugadorMovimiento
�� 
.
�� 
NombreUsuario
�� +
.
��+ ,
Equals
��, 2
(
��2 3
Jugador
��3 :
.
��: ;
NombreUsuario
��; H
)
��H I
)
��I J
{
��K L
Jugador
��
 
.
�� 
Turno
�� 
.
�� 
Casilla
�� 
=
��  !
PartidaEnJuego
��" 0
.
��0 1
Tablero
��1 8
.
��8 9
Casillas
��9 A
[
��A B
jugadorMovimiento
��B S
.
��S T
Turno
��T Y
.
��Y Z
Casilla
��Z a
.
��a b
Numero
��b h
+
��i j
jugadorMovimiento
��k |
.
��| }
Turno��} �
.��� �
Casilla��� �
.��� �

Movimiento��� �
-��� �
$num��� �
]��� �
;��� �
clientePartida
��
 
.
��  
MovimientoEspecial
�� +
(
��+ ,
PartidaEnJuego
��, :
.
��: ;
Nombre
��; A
,
��A B
Jugador
��C J
.
��J K
Turno
��K P
.
��P Q
Casilla
��Q X
.
��X Y
Numero
��Y _
)
��_ `
;
��` a
}
�� 	
DispatcherTimer
�� $
temporizadorMovimiento
�� .
=
��/ 0
new
��1 4
DispatcherTimer
��5 D
(
��D E
)
��E F
;
��F G$
temporizadorMovimiento
�� 
.
�� 
Interval
�� '
=
��( )
new
��* -
TimeSpan
��. 6
(
��6 7
$num
��7 8
,
��8 9
$num
��: ;
,
��; <
$num
��= >
)
��> ?
;
��? @$
temporizadorMovimiento
�� 
.
�� 
Tick
�� #
+=
��$ &
(
��' (
a
��( )
,
��) *
b
��+ ,
)
��, -
=>
��. 0
{
��1 2$
temporizadorMovimiento
��
  
.
��  !
Stop
��! %
(
��% &
)
��& '
;
��' (
try
��
 
{
�� 
PartidaEnJuego
�� 
=
�� 
clientePartida
�� +
.
��+ ,
ObtenerPartida
��, :
(
��: ;
PartidaEnJuego
��; I
.
��I J
Nombre
��J P
)
��P Q
;
��Q R"
DeterminarMovimiento
��  
(
��  !
jugadorMovimiento
��! 2
.
��2 3
NombreUsuario
��3 @
,
��@ A
$str
��B D
)
��D E
;
��E F
}
��
 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
��+ , 
EnviarMensajeError
�� 
(
�� 
)
��  
;
��  !
}
��
 
}
�� 	
;
��	 
$
temporizadorMovimiento
�� 
.
�� 
Start
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
void
�� 

TirarBonus
�� 
(
�� 

ServiceSYE
�� &
.
��& '
Jugador
��' .
jugadorMovimiento
��/ @
)
��@ A
{
��B C
if
�� 
(
��	 

jugadorMovimiento
��
 
.
�� 
NombreUsuario
�� )
.
��) *
Equals
��* 0
(
��0 1
Jugador
��1 8
.
��8 9
NombreUsuario
��9 F
)
��F G
)
��G H
{
��I J
DispatcherTimer
�� 
temporizadorBonus
�� )
=
��) *
new
��+ .
DispatcherTimer
��/ >
(
��> ?
)
��? @
;
��@ A
temporizadorBonus
�� 
.
�� 
Interval
�� "
=
��# $
new
��% (
TimeSpan
��) 1
(
��1 2
$num
��2 3
,
��3 4
$num
��5 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
temporizadorBonus
�� 
.
�� 
Tick
�� 
+=
�� !
(
��" #
a
��# $
,
��$ %
b
��& '
)
��' (
=>
��) +
{
��, -
temporizadorBonus
��
 
.
�� 
Stop
��  
(
��  !
)
��! "
;
��" #
try
��
 
{
�� 
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� ,
(
��, -
$str
��- /
,
��/ 0
PartidaEnJuego
��1 ?
.
��? @
Nombre
��@ F
,
��F G
$num
��H I
)
��I J
;
��J K
}
��
 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
��+ , 
EnviarMensajeError
�� 
(
�� 
)
��  
;
��  !
}
��
 
}
�� 	
;
��	 

temporizadorBonus
�� 
.
�� 
Start
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
private
�� 
void
�� 
MovimientoBonus
��  
(
��  !
int
��! $

numeroDado
��% /
)
��/ 0
{
��1 2
try
�� 	
{
��
 
switch
�� 
(
�� 

numeroDado
�� 
)
�� 
{
�� 
case
��
 
$num
�� 
:
�� 
Jugador
�� 
.
�� 
Turno
�� 
.
�� 
Casilla
�� !
=
��" #
PartidaEnJuego
��$ 2
.
��2 3
Tablero
��3 :
.
��: ;
Casillas
��; C
[
��C D
$num
��D E
]
��E F
;
��F G
clientePartida
�� 
.
��  
MovimientoEspecial
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
,
��C D
$num
��E F
)
��F G
;
��G H
break
�� 
;
�� 
case
��
 
$num
�� 
:
�� 
clientePartida
�� 
.
��  
MovimientoEspecial
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
,
��C D
	TiroBonus
��E N
(
��N O
$num
��O P
,
��P Q
Jugador
��R Y
,
��Y Z
PartidaEnJuego
��[ i
)
��i j
)
��j k
;
��k l
break
�� 
;
�� 
case
��
 
$num
�� 
:
�� 
clientePartida
�� 
.
��  
MovimientoEspecial
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
,
��C D
	TiroBonus
��E N
(
��N O
$num
��O P
,
��P Q
Jugador
��R Y
,
��Y Z
PartidaEnJuego
��[ i
)
��i j
)
��j k
;
��k l
break
�� 
;
�� 
case
��
 
$num
�� 
:
�� 
Jugador
�� 
.
�� 
Estadisticas
��  
.
��  !
Puntos
��! '
=
��( )
Convert
��* 1
.
��1 2
ToInt16
��2 9
(
��9 :
Jugador
��: A
.
��A B
Estadisticas
��B N
.
��N O
Puntos
��O U
+
��V W
$num
��X Z
)
��Z [
;
��[ \
clienteJugador
�� 
.
�� #
ModificarEstadisticas
�� 0
(
��0 1
Jugador
��1 8
.
��8 9
NombreUsuario
��9 F
,
��F G
Jugador
��H O
.
��O P
Estadisticas
��P \
.
��\ ]
Puntos
��] c
,
��c d
Jugador
��e l
.
��l m
Estadisticas
��m y
.
��y z
	Victorias��z �
)��� �
;��� �
break
�� 
;
�� 
case
��
 
$num
�� 
:
�� 
clientePartida
�� 
.
��  
MovimientoEspecial
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
,
��C D
	TiroBonus
��E N
(
��N O
$num
��O P
,
��P Q
Jugador
��R Y
,
��Y Z
PartidaEnJuego
��[ i
)
��i j
)
��j k
;
��k l
break
�� 
;
�� 
case
��
 
$num
�� 
:
�� 
Jugador
�� 
.
�� 
Turno
�� 
.
�� 
Casilla
�� !
=
��" #
PartidaEnJuego
��$ 2
.
��2 3
Tablero
��3 :
.
��: ;
Casillas
��; C
[
��C D
$num
��D F
]
��F G
;
��G H
clientePartida
�� 
.
��  
MovimientoEspecial
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
,
��C D
$num
��E G
)
��G H
;
��H I
break
�� 
;
�� 
}
�� 	
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� (
(
��( )
lb_Dado
��) 0
.
��0 1
Content
��1 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
,
��C D
PartidaEnJuego
��E S
.
��S T
Nombre
��T Z
,
��Z [
$num
��\ ]
)
��] ^
;
��^ _
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 

int
�� 
	TiroBonus
�� 
(
�� 
int
�� 
bonus
�� "
,
��" #
Jugador
��$ +
jugadorMovimiento
��, =
,
��= >

ServiceSYE
��? I
.
��I J
Partida
��J Q
partidaJugando
��R `
)
��` a
{
��b c
int
�� 	

movimiento
��
 
=
�� 
$num
�� 
;
�� 
switch
�� 
(
�� 
bonus
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 

movimiento
��
 
=
�� 
jugadorMovimiento
�� (
.
��( )
Turno
��) .
.
��. /
Casilla
��/ 6
.
��6 7
Numero
��7 =
/
��> ?
$num
��@ A
;
��A B
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 

movimiento
��
 
=
�� 
jugadorMovimiento
�� (
.
��( )
Turno
��) .
.
��. /
Casilla
��/ 6
.
��6 7
Numero
��7 =
-
��> ?
$num
��@ A
;
��A B
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 

movimiento
��
 
=
�� 
jugadorMovimiento
�� (
.
��( )
Turno
��) .
.
��. /
Casilla
��/ 6
.
��6 7
Numero
��7 =
+
��> ?
$num
��@ B
;
��B C
break
��
 
;
�� 
}
�� 
jugadorMovimiento
�� 
.
�� 
Turno
�� 
.
�� 
Casilla
�� %
=
��& '
partidaJugando
��( 6
.
��6 7
Tablero
��7 >
.
��> ?
Casillas
��? G
[
��G H

movimiento
��H R
-
��S T
$num
��U V
]
��V W
;
��W X
return
�� 

movimiento
�� 
;
�� 
}
�� 
public
�� 

void
�� 
CambiarTurno
�� 
(
�� 
String
�� #
nombreUsuario
��$ 1
)
��1 2
{
��3 4
try
�� 	
{
��
 
PartidaEnJuego
�� 
=
�� 
clientePartida
�� '
.
��' (
ObtenerPartida
��( 6
(
��6 7
PartidaEnJuego
��7 E
.
��E F
Nombre
��F L
)
��L M
;
��M N
bonus
�� 
=
�� 
false
�� 
;
�� 
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
Turno
��  
==
��! #
PartidaEnJuego
��$ 2
.
��2 3
JugadoresPartida
��3 C
.
��C D
	ElementAt
��D M
(
��M N
$num
��N O
)
��O P
.
��P Q
Value
��Q V
.
��V W
Turno
��W \
.
��\ ]
NumeroTurno
��] h
&&
��i k
nombreUsuario
��l y
.
��y z
Equals��z �
(��� �
Jugador��� �
.��� �
NombreUsuario��� �
)��� �
)��� �
{��� �
clientePartida
��
 
.
�� "
CambiarPosicionBonus
�� -
(
��- .
PartidaEnJuego
��. <
.
��< =
Nombre
��= C
)
��C D
;
��D E
}
�� 	
DispatcherTimer
�� $
temporizadorMovimiento
�� .
=
��/ 0
new
��1 4
DispatcherTimer
��5 D
(
��D E
)
��E F
;
��F G$
temporizadorMovimiento
�� 
.
�� 
Interval
�� '
=
��( )
new
��* -
TimeSpan
��. 6
(
��6 7
$num
��7 8
,
��8 9
$num
��: ;
,
��; <
$num
��= >
)
��> ?
;
��? @$
temporizadorMovimiento
�� 
.
�� 
Tick
�� #
+=
��$ &
(
��' (
a
��( )
,
��) *
b
��+ ,
)
��, -
=>
��. 0
{
��1 2$
temporizadorMovimiento
��
  
.
��  !
Stop
��! %
(
��% &
)
��& '
;
��' (
try
��
 
{
�� 
if
�� 
(
�� 
!
�� 
VerificarGanador
�� !
(
��! "
nombreUsuario
��" /
)
��/ 0
)
��0 1
{
��2 3
SiguienteJugador
�� 
(
�� 
)
��  
;
��  !
}
�� 
else
�� 
{
�� %
validarConectadoPartida
�� %
.
��% &
Stop
��& *
(
��* +
)
��+ ,
;
��, -

Resultados
�� 

resultados
�� #
=
��$ %
new
��& )

Resultados
��* 4
(
��4 5
this
��5 9
,
��9 :
posicionJugadores
��; L
)
��L M
;
��M N

resultados
�� 
.
�� 

ShowDialog
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
��
 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
��+ , 
EnviarMensajeError
�� 
(
�� 
)
��  
;
��  !
}
��
 
}
�� 	
;
��	 
$
temporizadorMovimiento
�� 
.
�� 
Start
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' ( 
EnviarMensajeError
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
Boolean
�� 
VerificarGanador
�� $
(
��$ %
String
��% +
nombreUsuario
��, 9
)
��9 :
{
��; <
Boolean
�� 
	verificar
�� 
=
�� 
false
�� 
;
��  

ServiceSYE
�� 
.
�� 
Jugador
�� 
jugadorMovimiento
�� *
=
��+ ,
new
��- 0

ServiceSYE
��1 ;
.
��; <
Jugador
��< C
(
��C D
)
��D E
;
��E F
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
PartidaEnJuego
�� (
.
��( )
JugadoresPartida
��) 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
��F G
if
�� 

(
�� 
PartidaEnJuego
�� 
.
�� 
JugadoresPartida
�� +
.
��+ ,
	ElementAt
��, 5
(
��5 6
i
��6 7
)
��7 8
.
��8 9
Value
��9 >
.
��> ?
NombreUsuario
��? L
.
��L M
Equals
��M S
(
��S T
nombreUsuario
��T a
)
��a b
)
��b c
{
��d e
jugadorMovimiento
��
 
=
�� 
PartidaEnJuego
�� ,
.
��, -
JugadoresPartida
��- =
.
��= >
	ElementAt
��> G
(
��G H
i
��H I
)
��I J
.
��J K
Value
��K P
;
��P Q
}
�� 	
}
�� 
if
�� 
(
��	 

jugadorMovimiento
��
 
.
�� 
Turno
�� !
.
��! "
Casilla
��" )
.
��) *
Numero
��* 0
==
��1 3
$num
��4 7
)
��7 8
{
��9 :
	verificar
�� 
=
�� 
true
�� 
;
�� 
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� &
.
��& '
Text
��' +
+
��, -
$str
��. 1
+
��2 3
jugadorMovimiento
��4 E
.
��E F
NombreUsuario
��F S
+
��T U

Properties
��V `
.
��` a
	Resources
��a j
.
��j k
ms_Gano
��k r
+
��s t
$str
��u |
;
��| }
tb_Mensajes
�� 
.
�� 
ScrollToEnd
�� 
(
��  
)
��  !
;
��! "
posicionJugadores
�� 
=
�� 
new
�� 
List
��  $
<
��$ %

ServiceSYE
��% /
.
��/ 0
Jugador
��0 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
List
�� 
<
�� 

ServiceSYE
�� 
.
�� 
Jugador
�� 
>
��  "
posicionJugadoresAux
��! 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A

ServiceSYE
��A K
.
��K L
Jugador
��L S
>
��S T
(
��T U
)
��U V
;
��V W
List
�� 
<
�� 
int
�� 
>
�� 
premios
�� 
=
�� 
DefinirPremios
�� *
(
��* +
PartidaEnJuego
��+ 9
.
��9 :
JugadoresPartida
��: J
.
��J K
Count
��K P
)
��P Q
;
��Q R
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
PartidaEnJuego
�� *
.
��* +
JugadoresPartida
��+ ;
.
��; <
Count
��< A
;
��A B
i
��C D
++
��D F
)
��F G
{
��H I"
posicionJugadoresAux
��
 
.
�� 
Add
�� "
(
��" #
PartidaEnJuego
��# 1
.
��1 2
JugadoresPartida
��2 B
.
��B C
	ElementAt
��C L
(
��L M
i
��M N
)
��N O
.
��O P
Value
��P U
)
��U V
;
��V W
}
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
PartidaEnJuego
�� #
.
��# $
JugadoresPartida
��$ 4
.
��4 5
Count
��5 :
;
��: ;
i
��< =
>
��> ?
$num
��@ A
;
��A B
i
��C D
--
��D F
)
��F G
{
��H I

ServiceSYE
��
 
.
�� 
Jugador
�� 
jugadorMasAlto
�� +
=
��, -#
DefinirJugadorMasAlto
��. C
(
��C D"
posicionJugadoresAux
��D X
,
��X Y
i
��Z [
)
��[ \
;
��\ ]"
posicionJugadoresAux
��
 
.
�� 
Remove
�� %
(
��% &
jugadorMasAlto
��& 4
)
��4 5
;
��5 6
jugadorMasAlto
��
 
.
�� 
Estadisticas
�� %
.
��% &
Puntos
��& ,
=
��- .
Convert
��/ 6
.
��6 7
ToInt16
��7 >
(
��> ?
premios
��? F
.
��F G
	ElementAt
��G P
(
��P Q
i
��Q R
-
��S T
$num
��U V
)
��V W
)
��W X
;
��X Y
posicionJugadores
��
 
.
�� 
Add
�� 
(
��  
jugadorMasAlto
��  .
)
��. /
;
��/ 0'
GuardarNuevasEstadisticas
��
 #
(
��# $
jugadorMasAlto
��$ 2
,
��2 3
i
��4 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
return
�� 
	verificar
�� 
;
�� 
}
�� 
public
�� 


ServiceSYE
�� 
.
�� 
Jugador
�� #
DefinirJugadorMasAlto
�� 3
(
��3 4
List
��4 8
<
��8 9

ServiceSYE
��9 C
.
��C D
Jugador
��D K
>
��K L"
posicionJugadoresAux
��M a
,
��a b
int
��c f
contador
��g o
)
��o p
{
��q r

ServiceSYE
�� 
.
�� 
Jugador
�� 
jugadorMasAlto
�� '
=
��( )"
posicionJugadoresAux
��* >
.
��> ?
	ElementAt
��? H
(
��H I
$num
��I J
)
��J K
;
��K L
for
�� 	
(
��
 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
�� 
<
�� 
contador
�� "
;
��" #
j
��$ %
++
��% '
)
��' (
{
��) *
if
�� 

(
�� 
jugadorMasAlto
�� 
.
�� 
Turno
��  
.
��  !
Casilla
��! (
.
��( )
Numero
��) /
<
��0 1"
posicionJugadoresAux
��2 F
.
��F G
	ElementAt
��G P
(
��P Q
j
��Q R
)
��R S
.
��S T
Turno
��T Y
.
��Y Z
Casilla
��Z a
.
��a b
Numero
��b h
)
��h i
{
��j k
jugadorMasAlto
��
 
=
�� "
posicionJugadoresAux
�� /
.
��/ 0
	ElementAt
��0 9
(
��9 :
j
��: ;
)
��; <
;
��< =
}
�� 	
}
�� 
return
�� 
jugadorMasAlto
�� 
;
�� 
}
�� 
public
�� 

List
�� 
<
�� 
int
�� 
>
�� 
DefinirPremios
�� #
(
��# $
int
��$ '
numeroJugadores
��( 7
)
��7 8
{
��9 :
List
�� 

<
��
 
int
�� 
>
�� 
premios
�� 
=
�� 
new
�� 
List
�� "
<
��" #
int
��# &
>
��& '
(
��' (
)
��( )
;
��) *
if
�� 
(
��	 

numeroJugadores
��
 
==
�� 
$num
�� 
)
�� 
{
��  !
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 
numeroJugadores
�� 
==
�� 
$num
��  
)
��  !
{
��" #
premios
��
 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
��
 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
��
 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
else
��
 
{
�� 
if
��
 
(
�� 
numeroJugadores
�� 
==
��  
$num
��! "
)
��" #
{
��$ %
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
��
 
else
�� 
{
�� 
premios
�� 
.
�� 
Add
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
return
�� 
premios
�� 
;
�� 
}
�� 
private
�� 
void
�� '
GuardarNuevasEstadisticas
�� *
(
��* +

ServiceSYE
��+ 5
.
��5 6
Jugador
��6 =
jugadorMasAlto
��> L
,
��L M
int
��N Q
contador
��R Z
)
��Z [
{
��\ ]
if
�� 
(
��	 

Jugador
��
 
.
�� 
NombreUsuario
�� 
.
��  
Equals
��  &
(
��& '
jugadorMasAlto
��' 5
.
��5 6
NombreUsuario
��6 C
)
��C D
)
��D E
{
��F G
Jugador
�� 
.
�� 
Estadisticas
�� 
.
�� 
Puntos
�� #
=
��$ %
Convert
��& -
.
��- .
ToInt16
��. 5
(
��5 6
Jugador
��6 =
.
��= >
Estadisticas
��> J
.
��J K
Puntos
��K Q
+
��R S
jugadorMasAlto
��T b
.
��b c
Estadisticas
��c o
.
��o p
Puntos
��p v
)
��v w
;
��w x
if
�� 

(
�� 
contador
�� 
==
�� 
PartidaEnJuego
�� &
.
��& '
JugadoresPartida
��' 7
.
��7 8
Count
��8 =
)
��= >
{
��? @
Jugador
��
 
.
�� 
Estadisticas
�� 
.
�� 
	Victorias
�� (
=
��) *
Convert
��+ 2
.
��2 3
ToInt16
��3 :
(
��: ;
Jugador
��; B
.
��B C
Estadisticas
��C O
.
��O P
	Victorias
��P Y
+
��Z [
$num
��\ ]
)
��] ^
;
��^ _
}
�� 	
try
�� 
{
�� 
clienteJugador
��
 
.
�� #
ModificarEstadisticas
�� .
(
��. /
Jugador
��/ 6
.
��6 7
NombreUsuario
��7 D
,
��D E
Jugador
��F M
.
��M N
Estadisticas
��N Z
.
��Z [
Puntos
��[ a
,
��a b
Jugador
��c j
.
��j k
Estadisticas
��k w
.
��w x
	Victorias��x �
)��� �
;��� �
}
�� 	
catch
��
 
(
�� $
CommunicationException
�� '
)
��' (
{
��) *

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_ConexionBD2
��/ =
,
��= >

Properties
��? I
.
��I J
	Resources
��J S
.
��S T
	mb_Alerta
��T ]
)
��] ^
;
��^ _
}
�� 	
}
�� 
}
�� 
private
�� 
void
�� 
SiguienteJugador
�� !
(
��! "
)
��" #
{
��$ %
if
�� 
(
��	 

PartidaEnJuego
��
 
.
�� 
Turno
�� 
==
�� !
PartidaEnJuego
��" 0
.
��0 1
JugadoresPartida
��1 A
.
��A B
	ElementAt
��B K
(
��K L
$num
��L M
)
��M N
.
��N O
Value
��O T
.
��T U
Turno
��U Z
.
��Z [
NumeroTurno
��[ f
)
��f g
{
��h i
PartidaEnJuego
�� 
=
�� 
clientePartida
�� '
.
��' (
ObtenerPartida
��( 6
(
��6 7
PartidaEnJuego
��7 E
.
��E F
Nombre
��F L
)
��L M
;
��M N
CargarBonus
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
��	 

PartidaEnJuego
��
 
.
�� 
Turno
�� 
==
�� !
Jugador
��" )
.
��) *
Turno
��* /
.
��/ 0
NumeroTurno
��0 ;
)
��; <
{
��= >
clienteChat
�� 
.
�� "
EnviarMensajePartida
�� (
(
��( )
$str
��) +
,
��+ ,
PartidaEnJuego
��- ;
.
��; <
Nombre
��< B
,
��B C
$num
��D E
)
��E F
;
��F G
}
�� 
}
�� 
private
�� 
void
�� !
EnviarMensajeTurnos
�� $
(
��$ %
)
��% &
{
��' (
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +
$str
��, 1
+
��2 3

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
ms_Comienzo
��I T
+
��U V
$str
��W ^
;
��^ _
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +

Properties
��, 6
.
��6 7
	Resources
��7 @
.
��@ A
ms_Turn
��A H
+
��I J
$str
��K Q
+
��R S

Properties
��T ^
.
��^ _
	Resources
��_ h
.
��h i
ms_Amarillo
��i t
+
��u v
$str
��w ~
+�� �
this��� �
.��� �
PartidaEnJuego��� �
.��� � 
JugadoresPartida��� �
.��� �
	ElementAt��� �
(��� �
$num��� �
)��� �
.��� �
Value��� �
.��� �
NombreUsuario��� �
+��� �
$str��� �
;��� �
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +

Properties
��, 6
.
��6 7
	Resources
��7 @
.
��@ A
ms_Turn
��A H
+
��I J
$str
��K Q
+
��R S

Properties
��T ^
.
��^ _
	Resources
��_ h
.
��h i

ms_Naranja
��i s
+
��t u
$str
��v }
+
��~ 
this��� �
.��� �
PartidaEnJuego��� �
.��� � 
JugadoresPartida��� �
.��� �
	ElementAt��� �
(��� �
$num��� �
)��� �
.��� �
Value��� �
.��� �
NombreUsuario��� �
+��� �
$str��� �
;��� �
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +

Properties
��, 6
.
��6 7
	Resources
��7 @
.
��@ A
ms_Turn
��A H
+
��I J
$str
��K Q
+
��R S

Properties
��T ^
.
��^ _
	Resources
��_ h
.
��h i
	ms_Morado
��i r
+
��s t
$str
��u |
+
��} ~
this�� �
.��� �
PartidaEnJuego��� �
.��� � 
JugadoresPartida��� �
.��� �
	ElementAt��� �
(��� �
$num��� �
)��� �
.��� �
Value��� �
.��� �
NombreUsuario��� �
+��� �
$str��� �
;��� �
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +

Properties
��, 6
.
��6 7
	Resources
��7 @
.
��@ A
ms_Turn
��A H
+
��I J
$str
��K Q
+
��R S

Properties
��T ^
.
��^ _
	Resources
��_ h
.
��h i
ms_Rosa
��i p
+
��q r
$str
��s z
+
��{ |
this��} �
.��� �
PartidaEnJuego��� �
.��� � 
JugadoresPartida��� �
.��� �
	ElementAt��� �
(��� �
$num��� �
)��� �
.��� �
Value��� �
.��� �
NombreUsuario��� �
+��� �
$str��� �
;��� �
}
�� 
public
�� 

void
�� 
ActivarAbandonar
��  
(
��  !
String
��! '
nombreUsuario
��( 5
)
��5 6
{
��7 8
if
�� 
(
��	 

!
��
 
Jugador
�� 
.
�� 
NombreUsuario
��  
.
��  !
Equals
��! '
(
��' (
nombreUsuario
��( 5
)
��5 6
||
��7 9
PartidaEnJuego
��: H
.
��H I
JugadoresPartida
��I Y
.
��Y Z
Count
��Z _
==
��` b
$num
��c d
)
��d e
{
��f g
bt_Abandonar
�� 
.
�� 
	IsEnabled
�� 
=
��  
true
��! %
;
��% &
}
�� 
}
�� 
public
�� 

void
��  
EnviarMensajeBonus
�� "
(
��" #
String
��# )
nombreUsuario
��* 7
)
��7 8
{
��9 :
tb_Mensajes
�� 
.
�� 
Text
�� 
=
�� 
tb_Mensajes
�� $
.
��$ %
Text
��% )
+
��* +
$str
��, /
+
��0 1
nombreUsuario
��2 ?
+
��@ A

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
ms_Bonus
��W _
+
��` a
$str
��b h
;
��h i
}
�� 
public
�� 

void
��  
MoverFichaAbandono
�� "
(
��" #
String
��# )
nombreUsuario
��* 7
,
��7 8

Dictionary
��9 C
<
��C D
object
��D J
,
��J K
Jugador
��L S
>
��S T
jugadoresPartida
��U e
)
��e f
{
��g h
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
jugadoresPartida
�� *
.
��* +
Count
��+ 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
��7 8
if
�� 

(
�� 
jugadoresPartida
�� 
.
�� 
	ElementAt
�� &
(
��& '
i
��' (
)
��( )
.
��) *
Value
��* /
.
��/ 0
NombreUsuario
��0 =
.
��= >
Equals
��> D
(
��D E
nombreUsuario
��E R
)
��R S
)
��S T
{
��U V
jugadoresPartida
��
 
.
�� 
	ElementAt
�� $
(
��$ %
i
��% &
)
��& '
.
��' (
Value
��( -
.
��- .
Turno
��. 3
.
��3 4
Casilla
��4 ;
=
��< =
new
��> A
Casilla
��B I
{
��J K
Numero
�� 
=
�� 
$num
�� 
,
�� 
	PosicionX
�� 
=
�� 
-
�� 
$num
�� 
,
�� 
	PosicionY
�� 
=
�� 
-
�� 
$num
�� 
,
�� 

Movimiento
�� 
=
�� 
$num
�� 
,
�� 
Bonus
�� 
=
�� 
false
�� 
,
�� 
}
��
 
;
�� 

MoverFicha
��
 
(
�� 
jugadoresPartida
�� %
.
��% &
	ElementAt
��& /
(
��/ 0
i
��0 1
)
��1 2
.
��2 3
Value
��3 8
)
��8 9
;
��9 :
break
��
 
;
�� 
}
�� 	
}
�� 
}
�� 
private
�� 
void
��  
EnviarMensajeError
�� #
(
��# $
)
��$ %
{
��& ' 
MessageBoxTemporal
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� (
.
��( )
	Resources
��) 2
.
��2 3"
mb_ConexionServidor3
��3 G
,
��G H

Properties
��I S
.
��S T
	Resources
��T ]
.
��] ^
	mb_Alerta
��^ g
,
��g h
$num
��i j
,
��j k
false
��l q
)
��q r
;
��r s
cerrar
�� 
=
�� 
false
�� 
;
�� 
this
�� 

.
��
 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� ��
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MenuPrincipal.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public 
partial	 
class 
MenuPrincipal $
:% &
Window' -
{. /
private 

ServiceSYE 
. 
Jugador 
jugador &
;& '
private 

ServiceSYE 
. 
JugadorClient $
clienteJugador% 3
=4 5
new6 9

ServiceSYE: D
.D E
JugadorClientE R
(R S
)S T
;T U
private 
Boolean 
cerrar 
= 
true !
;! "
DispatcherTimer  
validarConectadoMenu (
=) *
new+ .
DispatcherTimer/ >
(> ?
)? @
;@ A
public 

MenuPrincipal 
( 

ServiceSYE #
.# $
Jugador$ +
jugador, 3
)3 4
{5 6
InitializeComponent 
( 
) 
; 
this 

.
 
Title 
= 
this 
. 
Title 
+ 
$str  %
+& '
jugador( /
./ 0
NombreUsuario0 =
;= >
this 

.
 
jugador 
= 
jugador 
; 
CargarDatos 
( 
) 
; 
ValidarConectado 
( 
) 
; 
} 
private## 
void## 
CargarDatos## 
(## 
)## 
{##  
mi_NombreUsuario$$ 
.$$ 
Header$$ 
=$$ 
jugador$$  '
.$$' (
NombreUsuario$$( 5
;$$5 6
	mi_Puntos%% 
.%% 
Header%% 
=%% 
jugador%%  
.%%  !
Estadisticas%%! -
.%%- .
Puntos%%. 4
+%%5 6
$str%%7 :
+%%; <
	mi_Puntos%%= F
.%%F G
Header%%G M
;%%M N
mi_Victorias&& 
.&& 
Header&& 
=&& 
jugador&& #
.&&# $
Estadisticas&&$ 0
.&&0 1
	Victorias&&1 :
+&&; <
$str&&= @
+&&A B
mi_Victorias&&C O
.&&O P
Header&&P V
;&&V W
}'' 
private,, 
void,, 
ValidarConectado,, !
(,,! "
),," #
{,,$ % 
validarConectadoMenu-- 
.-- 
Interval-- #
=--$ %
new--& )
TimeSpan--* 2
(--2 3
$num--3 4
,--4 5
$num--6 7
,--7 8
$num--9 ;
)--; <
;--< = 
validarConectadoMenu.. 
... 
Tick.. 
+=..  "
(..# $
a..$ %
,..% &
b..' (
)..( )
=>..* ,
{..- .
try// 
{// 
clienteJugador00
 
.00 
UnirseAlJuego00 &
(00& '
jugador00' .
)00. /
;00/ 0
}11 	
catch11
 
(11 "
CommunicationException11 '
)11' (
{11) *
clienteJugador22
 
=22 
new22 

ServiceSYE22 )
.22) *
JugadorClient22* 7
(227 8
)228 9
;229 :
}33 	
}44 
;44  
validarConectadoMenu55 
.55 
Start55  
(55  !
)55! "
;55" #
}66 
private== 
void== !
Bt_CrearPartida_Click== &
(==& '
object==' -
sender==. 4
,==4 5
RoutedEventArgs==6 E
e==F G
)==G H
{==I J
CrearPartida>> 
crearPartida>> 
=>>  !
new>>" %
CrearPartida>>& 2
(>>2 3
this>>3 7
,>>7 8
jugador>>9 @
)>>@ A
;>>A B
crearPartida?? 
.?? 

ShowDialog?? 
(?? 
)?? 
;??  
}@@ 
privateGG 
voidGG 
I_Crear_MouseUpGG  
(GG  !
objectGG! '
senderGG( .
,GG. / 
MouseButtonEventArgsGG0 D
eGGE F
)GGF G
{GGH I!
Bt_CrearPartida_ClickHH 
(HH 
senderHH "
,HH" #
newHH$ '
RoutedEventArgsHH( 7
(HH7 8
)HH8 9
)HH9 :
;HH: ;
}II 
privatePP 
voidPP "
Bt_UnirsePartida_ClickPP '
(PP' (
objectPP( .
senderPP/ 5
,PP5 6
RoutedEventArgsPP7 F
ePPG H
)PPH I
{PPJ K
UnirsePartidaQQ 
unirsePartidaQQ !
=QQ" #
newQQ$ '
UnirsePartidaQQ( 5
(QQ5 6
thisQQ6 :
,QQ: ;
jugadorQQ< C
)QQC D
;QQD E
unirsePartidaRR 
.RR 

ShowDialogRR 
(RR 
)RR  
;RR  !
}SS 
privateZZ 
voidZZ 
I_Unirse_MouseUpZZ !
(ZZ! "
objectZZ" (
senderZZ) /
,ZZ/ 0 
MouseButtonEventArgsZZ1 E
eZZF G
)ZZG H
{ZZI J"
Bt_UnirsePartida_Click[[ 
([[ 
sender[[ #
,[[# $
new[[% (
RoutedEventArgs[[) 8
([[8 9
)[[9 :
)[[: ;
;[[; <
}\\ 
privatecc 
voidcc $
Bt_TablaPosiciones_Clickcc )
(cc) *
objectcc* 0
sendercc1 7
,cc7 8
RoutedEventArgscc9 H
eccI J
)ccJ K
{ccL M
TablaPosicionesdd 
tablaPosicionesdd %
=dd& '
newdd( +
TablaPosicionesdd, ;
(dd; <
jugadordd< C
)ddC D
;ddD E
tablaPosicionesee 
.ee 

ShowDialogee  
(ee  !
)ee! "
;ee" #
}ff 
privatemm 
voidmm 
I_Posicion_MouseUpmm #
(mm# $
objectmm$ *
sendermm+ 1
,mm1 2 
MouseButtonEventArgsmm3 G
emmH I
)mmI J
{mmK L$
Bt_TablaPosiciones_Clicknn 
(nn 
sendernn %
,nn% &
newnn' *
RoutedEventArgsnn+ :
(nn: ;
)nn; <
)nn< =
;nn= >
}oo 
privatevv 
voidvv 
Mi_Salir_Clickvv 
(vv  
objectvv  &
sendervv' -
,vv- .
RoutedEventArgsvv/ >
evv? @
)vv@ A
{vvB C
thisww 

.ww
 
Closeww 
(ww 
)ww 
;ww 
}xx 
private 
void 
Window_Closing 
(  
object  &
sender' -
,- .
System/ 5
.5 6
ComponentModel6 D
.D E
CancelEventArgsE T
eU V
)V W
{X Y
if
�� 
(
��	 

cerrar
��
 
)
�� 
{
�� 
try
�� 
{
�� 
if
��
 
(
�� 
clienteJugador
�� 
.
�� #
ModificarEstadisticas
�� 2
(
��2 3
jugador
��3 :
.
��: ;
NombreUsuario
��; H
,
��H I
jugador
��J Q
.
��Q R
Estadisticas
��R ^
.
��^ _
Puntos
��_ e
,
��e f
jugador
��g n
.
��n o
Estadisticas
��o {
.
��{ |
	Victorias��| �
)��� �
)��� �
{��� �
clienteJugador
�� 
.
�� 
SalirDelJuego
�� (
(
��( )
jugador
��) 0
)
��0 1
;
��1 2

MainWindow
�� 

mainWindow
�� !
=
��" #
new
��$ '

MainWindow
��( 2
(
��2 3
)
��3 4
;
��4 5

mainWindow
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� "
validarConectadoMenu
��  
.
��  !
Stop
��! %
(
��% &
)
��& '
;
��' (
}
��
 
else
�� 
{
�� 
e
�� 
.
�� 
Cancel
�� 
=
�� 
true
�� 
;
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� &
.
��& '
	Resources
��' 0
.
��0 1
mb_ConexionBD2
��1 ?
,
��? @

Properties
��A K
.
��K L
	Resources
��L U
.
��U V
	mb_Alerta
��V _
)
��_ `
;
��` a
}
��
 
}
�� 	
catch
��
 
(
�� $
CommunicationException
�� '
)
��' (
{
��) *
e
��
 
.
�� 
Cancel
�� 
=
�� 
true
�� 
;
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /"
mb_ConexionServidor2
��/ C
,
��C D

Properties
��E O
.
��O P
	Resources
��P Y
.
��Y Z
	mb_Alerta
��Z c
)
��c d
;
��d e
}
�� 	
}
�� 
}
�� 
public
�� 

void
�� 
UnirseAPartida
�� 
(
�� 

ServiceSYE
�� )
.
��) *
Partida
��* 1
partida
��2 9
)
��9 :
{
��; <
Espera
�� 
espera
�� 
=
�� 
new
�� 
Espera
��  
(
��  !
jugador
��! (
,
��( )
partida
��* 1
)
��1 2
;
��2 3
espera
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
cerrar
�� 
=
�� 
false
�� 
;
�� 
this
�� 

.
��
 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 
partial
��	 
class
�� 
Partidas
�� 
:
��  !

ServiceSYE
��" ,
.
��, -
IPartidaCallback
��- =
{
��> ?
public
�� 

UnirsePartida
�� 
UnirsePartida
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 

Partida
�� 
Partida
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 

void
��  
ActualizarPartidas
�� "
(
��" #

ServiceSYE
��# -
.
��- .
Partida
��. 5
[
��5 6
]
��6 7
partidas
��8 @
)
��@ A
{
��B C
UnirsePartida
�� 
.
�� 
dg_Partidas
�� 
.
��  
ItemsSource
��  +
=
��, -
partidas
��. 6
;
��6 7
}
�� 
public
�� 

void
�� 
Tirar
�� 
(
�� 
)
�� 
{
�� 
Partida
�� 
.
�� 
ActivarDado
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 
partial
��	 
class
�� 
Mensajes
�� 
:
��  !

ServiceSYE
��" ,
.
��, -
IChatCallback
��- :
{
��; <
public
�� 

Espera
�� 
Espera
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 

Partida
�� 
Partida
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 

void
�� 
RecibeMensaje
�� 
(
�� 
string
�� $
nombreUsuario
��% 2
,
��2 3
string
��4 :
mensaje
��; B
,
��B C
int
��D G
numeroJugadores
��H W
)
��W X
{
��Y Z
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
mensaje
�� &
)
��& '
)
��' (
{
��) *
Espera
�� 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� 
=
��  !
Espera
��" (
.
��( )
tb_Mensajes
��) 4
.
��4 5
Text
��5 9
+
��: ;
nombreUsuario
��< I
+
��J K

Properties
��L V
.
��V W
	Resources
��W `
.
��` a
	ms_Unirse
��a j
+
��k l
$str
��m s
;
��s t
Espera
�� 
.
�� 
lb_Esperando
�� 
.
�� 
Content
�� #
=
��$ %

Properties
��& 0
.
��0 1
	Resources
��1 :
.
��: ;
lb_Esperando
��; G
+
��H I
(
��J K
$num
��K L
-
��M N
numeroJugadores
��O ^
)
��^ _
.
��_ `
ToString
��` h
(
��h i
)
��i j
;
��j k
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 
mensaje
�� 
.
�� 
Equals
�� 
(
�� 
$str
�� 
)
�� 
)
��  
{
��! "
Espera
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� !
=
��" #
Espera
��$ *
.
��* +
tb_Mensajes
��+ 6
.
��6 7
Text
��7 ;
+
��< =
nombreUsuario
��> K
+
��L M

Properties
��N X
.
��X Y
	Resources
��Y b
.
��b c
ms_Salir
��c k
+
��l m
$str
��n t
;
��t u
Espera
��
 
.
�� 
lb_Esperando
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =
lb_Esperando
��= I
+
��J K
(
��L M
$num
��M N
-
��O P
numeroJugadores
��Q `
)
��` a
.
��a b
ToString
��b j
(
��j k
)
��k l
;
��l m
}
�� 	
else
��
 
{
�� 
Espera
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� !
=
��" #
Espera
��$ *
.
��* +
tb_Mensajes
��+ 6
.
��6 7
Text
��7 ;
+
��< =
nombreUsuario
��> K
+
��L M
$str
��N S
+
��T U
mensaje
��V ]
+
��^ _
$str
��` f
;
��f g
}
�� 	
}
�� 
Espera
�� 
.
�� 
tb_Mensajes
�� 
.
�� 
ScrollToEnd
�� $
(
��$ %
)
��% &
;
��& '
if
�� 
(
��	 

numeroJugadores
��
 
==
�� 
$num
�� 
)
�� 
{
��  !
Partida
�� 
ventanaPartida
�� 
=
��  
new
��! $
Partida
��% ,
(
��, -
Espera
��- 3
.
��3 4
Jugador
��4 ;
,
��; <
Espera
��= C
.
��C D
Partida
��D K
,
��K L
Espera
��M S
.
��S T
ClientePartida
��T b
,
��b c
Espera
��d j
.
��j k
ClienteChat
��k v
,
��v w
Espera
��x ~
.
��~ 
Partidas�� �
,��� �
Espera��� �
.��� �
Mensajes��� �
)��� �
;��� �
ventanaPartida
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
Espera
�� 
.
�� 
Cerrar
�� 
=
�� 
false
�� 
;
�� 
Espera
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 

void
�� "
RecibeMensajePartida
�� $
(
��$ %
string
��% +
nombreUsuario
��, 9
,
��9 :
string
��; A
mensaje
��B I
,
��I J
int
��K N
tipoMensaje
��O Z
)
��Z [
{
��\ ]
switch
�� 
(
�� 
tipoMensaje
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� "
=
��# $
Partida
��% ,
.
��, -
tb_Mensajes
��- 8
.
��8 9
Text
��9 =
+
��> ?
nombreUsuario
��@ M
+
��N O
$str
��P U
+
��V W
mensaje
��X _
+
��` a
$str
��b h
;
��h i
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
�� 
ActivarAbandonar
�� "
(
��" #
nombreUsuario
��# 0
)
��0 1
;
��1 2
Partida
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� "
=
��# $
Partida
��% ,
.
��, -
tb_Mensajes
��- 8
.
��8 9
Text
��9 =
+
��> ?
$str
��@ C
+
��D E

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [
ms_Turno
��[ c
+
��d e
nombreUsuario
��f s
+
��t u
$str
��v }
;
��} ~
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
��  
EnviarMensajeBonus
�� $
(
��$ %
nombreUsuario
��% 2
)
��2 3
;
��3 4
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
�� 
bt_Abandonar
�� 
.
�� 
	IsEnabled
�� (
=
��) *
false
��+ 0
;
��0 1
Partida
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� "
=
��# $
Partida
��% ,
.
��, -
tb_Mensajes
��- 8
.
��8 9
Text
��9 =
+
��> ?
$str
��@ C
+
��D E
nombreUsuario
��F S
+
��T U

Properties
��V `
.
��` a
	Resources
��a j
.
��j k
	ms_Numero
��k t
+
��u v
mensaje
��w ~
+�� �
$str��� �
;��� �
Partida
��
 
.
�� "
DeterminarMovimiento
�� &
(
��& '
nombreUsuario
��' 4
,
��4 5
mensaje
��6 =
)
��= >
;
��> ?
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
�� 
bt_Abandonar
�� 
.
�� 
	IsEnabled
�� (
=
��) *
false
��+ 0
;
��0 1
Partida
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� "
=
��# $
Partida
��% ,
.
��, -
tb_Mensajes
��- 8
.
��8 9
Text
��9 =
+
��> ?
$str
��@ C
+
��D E
nombreUsuario
��F S
+
��T U

Properties
��V `
.
��` a
	Resources
��a j
.
��j k
ms_TurnoPerdido
��k z
+
��{ |
$str��} �
;��� �
Partida
��
 
.
�� 
CambiarTurno
�� 
(
�� 
nombreUsuario
�� ,
)
��, -
;
��- .
break
��
 
;
�� 
case
�� 
$num
�� 
:
�� 
Partida
��
 
.
��  
MoverFichaAbandono
�� $
(
��$ %
nombreUsuario
��% 2
,
��2 3
Partida
��4 ;
.
��; <
PartidaEnJuego
��< J
.
��J K
JugadoresPartida
��K [
)
��[ \
;
��\ ]
Partida
��
 
.
�� 
tb_Mensajes
�� 
.
�� 
Text
�� "
=
��# $
Partida
��% ,
.
��, -
tb_Mensajes
��- 8
.
��8 9
Text
��9 =
+
��> ?
nombreUsuario
��@ M
+
��N O

Properties
��P Z
.
��Z [
	Resources
��[ d
.
��d e
ms_Salir
��e m
+
��n o
$str
��p v
;
��v w
break
��
 
;
�� 
}
�� 
Partida
�� 
.
�� 
tb_Mensajes
�� 
.
�� 
ScrollToEnd
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
}�� ��
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Registrarse.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public 
partial	 
class 
Registrarse "
:# $
Window% +
{, -
private 

ServiceSYE 
. 
JugadorClient $
cliente% ,
;, -
public 

Registrarse 
( 
Boolean 
prueba %
)% &
{' (
InitializeComponent 
( 
) 
; 
} 
public 

Registrarse 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
this 

.
 
cliente 
= 
new 

ServiceSYE #
.# $
JugadorClient$ 1
(1 2
)2 3
;3 4
} 
private&& 
void&&  
Bt_Registrarse_Click&& %
(&&% &
object&&& ,
sender&&- 3
,&&3 4
RoutedEventArgs&&5 D
e&&E F
)&&F G
{&&H I
if'' 
(''	 

ValidarDatos''
 
('' 
)'' 
)'' 
{'' 

ServiceSYE(( 
.(( 
Jugador(( 
jugador(( "
=((# $
CrearNuevoJugador((% 6
(((6 7
)((7 8
;((8 9
if)) 

()) 
!)) 
jugador)) 
.)) 
Codigo)) 
.)) 
Equals)) "
())" #
$str))# &
)))& '
&&))( *
!))+ ,
jugador)), 3
.))3 4
Codigo))4 :
.)): ;
Equals)); A
())A B
$str))B F
)))F G
)))G H
{))I J
RegistrarJugador**
 
(** 
jugador** "
)**" #
;**# $
}++ 	
else++
 
{++ 
if,,
 
(,, 
jugador,, 
.,, 
Codigo,, 
.,, 
Equals,, #
(,,# $
$str,,$ '
),,' (
),,( )
{,,* +

MessageBox-- 
.-- 
Show-- 
(-- 

Properties-- &
.--& '
	Resources--' 0
.--0 1
mb_ConexionBD--1 >
,--> ?

Properties--@ J
.--J K
	Resources--K T
.--T U
	mb_Alerta--U ^
)--^ _
;--_ `
}..
 
else.. 
{.. 

MessageBox// 
.// 
Show// 
(// 

Properties// &
.//& '
	Resources//' 0
.//0 1
mb_ConexionServidor//1 D
,//D E

Properties//F P
.//P Q
	Resources//Q Z
.//Z [
	mb_Alerta//[ d
)//d e
;//e f
}00
 
}11 	
}22 
}33 
private:: 
void:: 
Bt_Cancelar_Click:: "
(::" #
object::# )
sender::* 0
,::0 1
RoutedEventArgs::2 A
e::B C
)::C D
{::E F
this;; 

.;;
 
Close;; 
(;; 
);; 
;;; 
}<< 
privateCC 
voidCC 
Bt_Terminos_ClickCC "
(CC" #
objectCC# )
senderCC* 0
,CC0 1
RoutedEventArgsCC2 A
eCCB C
)CCC D
{CCE F

MessageBoxDD 
.DD 
ShowDD 
(DD 

PropertiesDD  
.DD  !
	ResourcesDD! *
.DD* +"
mb_TerminosCondicionesDD+ A
,DDA B

PropertiesDDC M
.DDM N
	ResourcesDDN W
.DDW X 
bt_TerminosYPoliticaDDX l
)DDl m
;DDm n
}EE 
privateMM 

ServiceSYEMM 
.MM 
JugadorMM 
CrearNuevoJugadorMM 0
(MM0 1
)MM1 2
{MM3 4

ServiceSYENN 
.NN 
JugadorNN 
jugadorNN  
=NN! "
newNN# &

ServiceSYENN' 1
.NN1 2
JugadorNN2 9
{NN: ;
NombreUsuarioOO 
=OO 
tb_NombreUsuarioOO (
.OO( )
TextOO) -
,OO- .
ContraseniaPP 
=PP 
ComputeSha256HashPP '
(PP' (
pb_ContraseniaPP( 6
.PP6 7
PasswordPP7 ?
)PP? @
,PP@ A
CorreoElectronicoQQ 
=QQ  
tb_CorreoElectronicoQQ 0
.QQ0 1
TextQQ1 5
,QQ5 6
CodigoRR 
=RR 
GenerarCodigoRR 
(RR 
)RR  
,RR  !
EstadisticasSS 
=SS 
newSS 

ServiceSYESS %
.SS% &
EstadisticasSS& 2
{SS3 4
PuntosTT
 
=TT 
$numTT 
,TT 
	VictoriasUU
 
=UU 
$numUU 
,UU 
}VV 	
}WW 
;WW 
returnXX 
jugadorXX 
;XX 
}YY 
privateaa 
voidaa 
RegistrarJugadoraa !
(aa! "

ServiceSYEaa" ,
.aa, -
Jugadoraa- 4
jugadoraa5 <
)aa< =
{aa> ?
trybb 	
{bb
 
ifcc 

(cc 
clientecc 
.cc 
EnviarCodigoACorreocc '
(cc' (
jugadorcc( /
,cc/ 0

Propertiescc1 ;
.cc; <
	Resourcescc< E
.ccE F
	ms_AsuntoccF O
,ccO P

PropertiesccQ [
.cc[ \
	Resourcescc\ e
.cce f
ms_IngresaCodigoccf v
,ccv w

Properties	ccx �
.
cc� �
	Resources
cc� �
.
cc� �

ms_Mensaje
cc� �
)
cc� �
)
cc� �
{
cc� �
ifdd
 
(dd 
clientedd 
.dd 
RegistrarJugadordd &
(dd& '
jugadordd' .
)dd. /
)dd/ 0
{dd1 2

MessageBoxee 
.ee 
Showee 
(ee 

Propertiesee &
.ee& '
	Resourcesee' 0
.ee0 1
mb_RegistroExitosoee1 C
,eeC D

PropertieseeE O
.eeO P
	ResourceseeP Y
.eeY Z
mb_ListoeeZ b
)eeb c
;eec d

MessageBoxff 
.ff 
Showff 
(ff 

Propertiesff &
.ff& '
	Resourcesff' 0
.ff0 1
mb_CorreoEnviadoff1 A
,ffA B

PropertiesffC M
.ffM N
	ResourcesffN W
.ffW X
	mb_CodigoffX a
)ffa b
;ffb c
ValidarCuentagg 
validarCuentagg '
=gg( )
newgg* -
ValidarCuentagg. ;
(gg; <
)gg< =
;gg= >
validarCuentahh 
.hh 
Showhh 
(hh 
)hh  
;hh  !
thisii 
.ii 
Closeii 
(ii 
)ii 
;ii 
}jj
 
elsejj 
{jj 

MessageBoxkk 
.kk 
Showkk 
(kk 

Propertieskk &
.kk& '
	Resourceskk' 0
.kk0 1
mb_ConexionBDkk1 >
,kk> ?

Propertieskk@ J
.kkJ K
	ResourceskkK T
.kkT U
	mb_AlertakkU ^
)kk^ _
;kk_ `
}ll
 
}mm 	
elsemm
 
{mm 

MessageBoxnn
 
.nn 
Shownn 
(nn 

Propertiesnn $
.nn$ %
	Resourcesnn% .
.nn. /
mb_RegistroFallidonn/ A
,nnA B

PropertiesnnC M
.nnM N
	ResourcesnnN W
.nnW X
	mb_AlertannX a
)nna b
;nnb c
}oo 	
}pp 
catchpp 
(pp "
CommunicationExceptionpp %
)pp% &
{pp' (

MessageBoxqq 
.qq 
Showqq 
(qq 

Propertiesqq "
.qq" #
	Resourcesqq# ,
.qq, -
mb_ConexionServidorqq- @
,qq@ A

PropertiesqqB L
.qqL M
	ResourcesqqM V
.qqV W
	mb_AlertaqqW `
)qq` a
;qqa b
}rr 
}ss 
private{{ 
Boolean{{ 
ValidarDatos{{  
({{  !
){{! "
{{{# $
Boolean|| 
validar|| 
=|| 
false|| 
;|| 
if}} 
(}}	 
!
ValidarDatosCompletos}}
 
(}}  
tb_NombreUsuario}}  0
.}}0 1
Text}}1 5
,}}5 6 
tb_CorreoElectronico}}7 K
.}}K L
Text}}L P
,}}P Q
pb_Contrasenia}}R `
.}}` a
Password}}a i
,}}i j$
pb_ConfirmarContrasenia	}}k �
.
}}� �
Password
}}� �
)
}}� �
)
}}� �
{
}}� �
if~~ 

(~~ 
ValidarContrasenia~~ 
(~~ 
pb_Contrasenia~~ -
.~~- .
Password~~. 6
)~~6 7
&&~~8 : 
ValidarNombreUsuario~~; O
(~~O P
pb_Contrasenia~~P ^
.~~^ _
Password~~_ g
)~~g h
)~~h i
{~~j k
if
 
(  
VerificarContrasenia "
(" #
pb_Contrasenia# 1
.1 2
Password2 :
,: ;#
pb_ConfirmarContrasenia< S
.S T
PasswordT \
)\ ]
)] ^
{_ `
if
�� 
(
�� $
ValidarDatosPersonales
�� &
(
��& '
)
��' (
)
��( )
{
��* +
validar
�� 
=
�� )
ValidarTerminosYCondiciones
�� 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
}
��
 
else
�� 
{
�� %
pb_ConfirmarContrasenia
�� #
.
��# $
Password
��$ ,
=
��- .
$str
��/ 1
;
��1 2

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� &
.
��& '
	Resources
��' 0
.
��0 1&
mb_ContraseniaNoCoincide
��1 I
,
��I J

Properties
��K U
.
��U V
	Resources
��V _
.
��_ `
	mb_Alerta
��` i
)
��i j
;
��j k
}
��
 
}
�� 	
else
��
 
{
�� 
pb_Contrasenia
��
 
.
�� 
Password
�� !
=
��" #
$str
��$ &
;
��& '%
pb_ConfirmarContrasenia
��
 !
.
��! "
Password
��" *
=
��+ ,
$str
��- /
;
��/ 0

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /$
mb_ContraseniaInvalida
��/ E
,
��E F

Properties
��G Q
.
��Q R
	Resources
��R [
.
��[ \
	mb_Alerta
��\ e
)
��e f
;
��f g
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -
mb_DatosVacios
��- ;
,
��; <

Properties
��= G
.
��G H
	Resources
��H Q
.
��Q R
	mb_Alerta
��R [
)
��[ \
;
��\ ]
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� #
ValidarDatosCompletos
�� (
(
��( )
string
��) /
nombre
��0 6
,
��6 7
string
��8 >
correo
��? E
,
��E F
string
��G M
contrasenia
��N Y
,
��Y Z
string
��[ a"
confirmarcontrasenia
��b v
)
��v w
{
��x y
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

(
��
 
nombre
�� 
!=
�� 
null
�� 
&&
�� 
nombre
�� #
.
��# $
Length
��$ *
>
��+ ,
$num
��- .
)
��. /
&&
��0 2
(
��	 

correo
��
 
!=
�� 
null
�� 
&&
�� 
correo
�� "
.
��" #
Length
��# )
>
��* +
$num
��, -
)
��- .
&&
��/ 1
(
��	 

contrasenia
��
 
!=
�� 
null
�� 
&&
��  
contrasenia
��! ,
.
��, -
Length
��- 3
>
��4 5
$num
��6 7
)
��7 8
&&
��9 ;
(
��	 
"
confirmarcontrasenia
��
 
!=
�� !
null
��" &
&&
��' )"
confirmarcontrasenia
��* >
.
��> ?
Length
��? E
>
��F G
$num
��H I
)
��I J
)
��J K
{
��L M
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
��  
ValidarContrasenia
�� %
(
��% &
String
��& ,
contrasenia
��- 8
)
��8 9
{
��: ;
Boolean
�� 
validar
�� 
=
�� 
true
�� 
,
�� 
letra
�� #
=
��$ %
false
��& +
,
��+ ,
numero
��- 3
=
��4 5
false
��6 ;
;
��; <
if
�� 
(
��	 

contrasenia
��
 
.
�� 
Length
�� 
<
�� 
$num
��  
)
��  !
{
��" #
validar
�� 
=
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
��	 

validar
��
 
)
�� 
{
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
contrasenia
�� '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
��5 6
letra
��
 
=
�� '
ValidarLetraEnContrasenia
�� +
(
��+ ,
letra
��, 1
,
��1 2
contrasenia
��3 >
,
��> ?
i
��@ A
)
��A B
;
��B C
if
��
 
(
�� 
!
�� 
numero
�� 
&&
�� 
contrasenia
�� $
[
��$ %
i
��% &
]
��& '
>=
��( *
$num
��+ -
&&
��. 0
contrasenia
��1 <
[
��< =
i
��= >
]
��> ?
<=
��@ B
$num
��C E
)
��E F
{
��G H
numero
�� 
=
�� 
true
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
if
�� 
(
��	 

letra
��
 
&&
�� 
numero
�� 
)
�� 
{
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� '
ValidarLetraEnContrasenia
�� ,
(
��, -
Boolean
��- 4
letra
��5 :
,
��: ;
String
��< B
contrasenia
��C N
,
��N O
int
��P S
i
��T U
)
��U V
{
��W X
Boolean
�� 
validar
�� 
=
�� 
letra
�� 
;
�� 
if
�� 
(
��	 

!
��
 
letra
�� 
&&
�� 
(
�� 
(
�� 
contrasenia
�� !
[
��! "
i
��" #
]
��# $
>=
��% '
$num
��( *
&&
��+ -
contrasenia
��. 9
[
��9 :
i
��: ;
]
��; <
<=
��= ?
$num
��@ B
)
��B C
||
��D F
(
��
 
contrasenia
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
��  "
contrasenia
��# .
[
��. /
i
��/ 0
]
��0 1
<=
��2 4
$num
��5 8
)
��8 9
||
��: <
contrasenia
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
��  
$char
��  #
)
��# $
||
��% '
contrasenia
��( 3
[
��3 4
i
��4 5
]
��5 6
.
��6 7
Equals
��7 =
(
��= >
$char
��> A
)
��A B
||
��C E
contrasenia
��F Q
[
��Q R
i
��R S
]
��S T
.
��T U
Equals
��U [
(
��[ \
$char
��\ _
)
��_ `
||
��a c
contrasenia
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
��  
$char
��  #
)
��# $
||
��% '
contrasenia
��( 3
[
��3 4
i
��4 5
]
��5 6
.
��6 7
Equals
��7 =
(
��= >
$char
��> A
)
��A B
||
��C E
contrasenia
��F Q
[
��Q R
i
��R S
]
��S T
.
��T U
Equals
��U [
(
��[ \
$char
��\ _
)
��_ `
||
��a c
contrasenia
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
��  
$char
��  #
)
��# $
||
��% '
contrasenia
��( 3
[
��3 4
i
��4 5
]
��5 6
.
��6 7
Equals
��7 =
(
��= >
$char
��> A
)
��A B
||
��C E
contrasenia
��F Q
[
��Q R
i
��R S
]
��S T
.
��T U
Equals
��U [
(
��[ \
$char
��\ _
)
��_ `
||
��a c
contrasenia
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
��  
$char
��  #
)
��# $
||
��% '
contrasenia
��( 3
[
��3 4
i
��4 5
]
��5 6
.
��6 7
Equals
��7 =
(
��= >
$char
��> A
)
��A B
||
��C E
contrasenia
��F Q
[
��Q R
i
��R S
]
��S T
.
��T U
Equals
��U [
(
��[ \
$char
��\ _
)
��_ `
)
��` a
)
��a b
{
��c d
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
VerificarContrasenia
�� '
(
��' (
string
��( .
contrasenia
��/ :
,
��: ;
string
��< B!
confirmaContrasenia
��C V
)
��V W
{
��X Y
Boolean
�� 
	verificar
�� 
=
�� 
false
�� 
;
��  
if
�� 
(
��	 

contrasenia
��
 
.
�� 
Equals
�� 
(
�� !
confirmaContrasenia
�� 0
)
��0 1
)
��1 2
{
��3 4
	verificar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
	verificar
�� 
;
�� 
}
�� 
private
�� 
Boolean
�� $
ValidarDatosPersonales
�� *
(
��* +
)
��+ ,
{
��- .
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 
"
ValidarNombreUsuario
��
 
(
�� 
tb_NombreUsuario
�� /
.
��/ 0
Text
��0 4
)
��4 5
)
��5 6
{
��7 8
if
�� 

(
�� &
ValidarCorreoElectronico
�� $
(
��$ %"
tb_CorreoElectronico
��% 9
.
��9 :
Text
��: >
)
��> ?
)
��? @
{
��A B
int
��
 
verificarNombre
�� 
=
�� $
VerificarNombreUsuario
��  6
(
��6 7
tb_NombreUsuario
��7 G
.
��G H
Text
��H L
)
��L M
;
��M N
if
��
 
(
�� 
verificarNombre
�� 
==
��  
$num
��! "
)
��" #
{
��$ %
int
�� 
verificarCorreo
�� 
=
��  !(
VerificarCorreoElectronico
��" <
(
��< ="
tb_CorreoElectronico
��= Q
.
��Q R
Text
��R V
)
��V W
;
��W X
if
�� 
(
�� 
verificarCorreo
�� 
==
��  "
$num
��# $
)
��$ %
{
��& '
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� !
MandarMensajesError
�� !
(
��! "
verificarCorreo
��" 1
,
��1 2
false
��3 8
)
��8 9
;
��9 :
}
�� 
}
��
 
else
�� 
{
�� !
MandarMensajesError
�� 
(
��  
verificarNombre
��  /
,
��/ 0
true
��1 5
)
��5 6
;
��6 7
}
��
 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_CorreoInvalido
��/ @
,
��@ A

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
	mb_Alerta
��W `
)
��` a
;
��a b
}
�� 	
}
�� 
else
�� 
{
�� 
tb_NombreUsuario
�� 
.
�� 
Text
�� 
=
�� 
$str
��  "
;
��" #

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -$
mb_CaracteresInvalidos
��- C
,
��C D

Properties
��E O
.
��O P
	Resources
��P Y
.
��Y Z
	mb_Alerta
��Z c
)
��c d
;
��d e
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarNombreUsuario
�� '
(
��' (
string
��( .
nombre
��/ 5
)
��5 6
{
��7 8
Boolean
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
nombre
��  
.
��  !
Length
��! '
;
��' (
i
��) *
++
��* ,
)
��, -
{
��. /
if
�� 

(
�� 
!
�� 
(
�� 
(
�� 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� !
nombre
��" (
[
��( )
i
��) *
]
��* +
<=
��, .
$num
��/ 1
)
��1 2
||
��3 5
(
��
 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
nombre
�� $
[
��$ %
i
��% &
]
��& '
<=
��( *
$num
��+ .
)
��. /
||
��0 2
(
��
 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
nombre
�� $
[
��$ %
i
��% &
]
��& '
<=
��( *
$num
��+ -
)
��- .
||
��/ 1
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��< B
[
��B C
i
��C D
]
��D E
.
��E F
Equals
��F L
(
��L M
$char
��M P
)
��P Q
||
��R T
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��< B
[
��B C
i
��C D
]
��D E
.
��E F
Equals
��F L
(
��L M
$char
��M P
)
��P Q
||
��R T
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��< B
[
��B C
i
��C D
]
��D E
.
��E F
Equals
��F L
(
��L M
$char
��M P
)
��P Q
||
��R T
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��< B
[
��B C
i
��C D
]
��D E
.
��E F
Equals
��F L
(
��L M
$char
��M P
)
��P Q
||
��R T
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
)
��  
)
��  !
{
��" #
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� &
ValidarCorreoElectronico
�� +
(
��+ ,
string
��, 2
correo
��3 9
)
��9 :
{
��; <
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
int
�� 	
posicionArroba
��
 
=
�� 
$num
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
correo
��  
.
��  !
Length
��! '
;
��' (
i
��) *
++
��* ,
)
��, -
{
��. /
if
�� 

(
�� 
correo
�� 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
��  
)
��  !
)
��! "
{
��# $
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
if
�� 

(
�� 
correo
�� 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
��  
)
��  !
&&
��" $
i
��% &
>
��' (
$num
��) *
)
��* +
{
��, -
if
��
 
(
�� 
posicionArroba
�� 
>
�� 
$num
��  
||
��! #
correo
��$ *
[
��* +
i
��+ ,
-
��- .
$num
��/ 0
]
��0 1
.
��1 2
Equals
��2 8
(
��8 9
$char
��9 <
)
��< =
)
��= >
{
��? @
validar
�� 
=
�� 
false
�� 
;
�� 
break
�� 
;
�� 
}
��
 
else
�� 
{
�� 
posicionArroba
�� 
=
�� 
i
�� 
;
�� 
}
��
 
}
�� 	
validar
�� 
=
�� "
ValidarPuntoEnCorreo
�� &
(
��& '
validar
��' .
,
��. /
correo
��0 6
,
��6 7
posicionArroba
��8 F
,
��F G
i
��H I
)
��I J
;
��J K
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarPuntoEnCorreo
�� '
(
��' (
Boolean
��( /
validar
��0 7
,
��7 8
String
��9 ?
correo
��@ F
,
��F G
int
��H K
posicionArroba
��L Z
,
��Z [
int
��\ _
i
��` a
)
��a b
{
��c d
if
�� 
(
��	 

correo
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
&&
��  "
posicionArroba
��# 1
>
��2 3
$num
��4 5
&&
��6 8
i
��9 :
>
��; <
posicionArroba
��= K
+
��L M
$num
��N O
)
��O P
{
��Q R
if
�� 

(
�� 
i
�� 
<
�� 
correo
�� 
.
�� 
Length
�� 
-
�� 
$num
��  !
)
��! "
{
��# $
validar
��
 
=
�� 
true
�� 
;
�� 
}
�� 	
else
��
 
{
�� 
validar
��
 
=
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

int
�� $
VerificarNombreUsuario
�� %
(
��% &
string
��& ,
nombre
��- 3
)
��3 4
{
��5 6
int
�� 	
	verificar
��
 
=
�� 
$num
�� 
;
�� 
try
�� 	
{
��
 

ServiceSYE
�� 
.
�� 
Jugador
�� 
jugador
�� "
=
��# $
cliente
��% ,
.
��, -%
ObtenerJugadorPorNombre
��- D
(
��D E
nombre
��E K
)
��K L
;
��L M
if
�� 

(
�� 
jugador
�� 
.
�� 
NombreUsuario
�� !
.
��! "
Equals
��" (
(
��( )
$str
��) +
)
��+ ,
)
��, -
{
��. /
	verificar
��
 
=
�� 
$num
�� 
;
�� 
}
�� 	
if
�� 

(
�� 
jugador
�� 
.
�� 
NombreUsuario
�� !
.
��! "
Equals
��" (
(
��( )
$str
��) ,
)
��, -
)
��- .
{
��/ 0
	verificar
��
 
=
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' (
	verificar
�� 
=
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
	verificar
�� 
;
�� 
}
�� 
public
�� 

int
�� (
VerificarCorreoElectronico
�� )
(
��) *
string
��* 0
correo
��1 7
)
��7 8
{
��9 :
int
�� 	
	verificar
��
 
=
�� 
$num
�� 
;
�� 
try
�� 	
{
��
 

ServiceSYE
�� 
.
�� 
Jugador
�� 
jugador
�� "
=
��# $
cliente
��% ,
.
��, -%
ObtenerJugadorPorCorreo
��- D
(
��D E
correo
��E K
)
��K L
;
��L M
if
�� 

(
�� 
jugador
�� 
.
�� 
CorreoElectronico
�� %
.
��% &
Equals
��& ,
(
��, -
$str
��- /
)
��/ 0
)
��0 1
{
��2 3
	verificar
��
 
=
�� 
$num
�� 
;
�� 
}
�� 	
if
�� 

(
�� 
jugador
�� 
.
�� 
NombreUsuario
�� !
.
��! "
Equals
��" (
(
��( )
$str
��) ,
)
��, -
)
��- .
{
��/ 0
	verificar
��
 
=
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
catch
�� 
(
�� $
CommunicationException
�� %
)
��% &
{
��' (
	verificar
�� 
=
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
	verificar
�� 
;
�� 
}
�� 
private
�� 
Boolean
�� )
ValidarTerminosYCondiciones
�� /
(
��/ 0
)
��0 1
{
��2 3
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

cb_Terminos
��
 
.
�� 
	IsChecked
�� 
==
��  "
true
��# '
)
��' (
{
��) *
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, - 
ms_AceptarTerminos
��- ?
,
��? @

Properties
��A K
.
��K L
	Resources
��L U
.
��U V
	mb_Alerta
��V _
)
��_ `
;
��` a
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

String
�� 
GenerarCodigo
�� 
(
��  
)
��  !
{
��" #
String
�� 
codigo
�� 
=
�� 
$str
�� 
;
�� 
while
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� !
(
��! "
codigo
��" (
)
��( )
)
��) *
{
��+ ,
Random
�� 
random
�� 
=
�� 
new
�� 
Random
�� "
(
��" #
)
��# $
;
��$ %
StringBuilder
�� 
codigoGenerado
�� $
=
��% &
new
��' *
StringBuilder
��+ 8
(
��8 9
)
��9 :
;
��: ;
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
codigoGenerado
��
 
.
�� 
Append
�� 
(
��  
random
��  &
.
��& '
Next
��' +
(
��+ ,
$num
��, .
)
��. /
)
��/ 0
;
��0 1
}
�� 	
codigo
�� 
=
�� 
codigoGenerado
�� 
.
��  
ToString
��  (
(
��( )
)
��) *
;
��* +
try
�� 
{
�� 
int
��
 
validarCodigo
�� 
=
�� 
cliente
�� %
.
��% &
ValidarCodigo
��& 3
(
��3 4
codigo
��4 :
)
��: ;
;
��; <
if
��
 
(
�� 
validarCodigo
�� 
!=
�� 
$num
��  
)
��  !
{
��" #
if
�� 
(
�� 
validarCodigo
�� 
==
��  
$num
��! "
||
��# %
codigo
��& ,
.
��, -
Equals
��- 3
(
��3 4
$str
��4 ;
)
��; <
)
��< =
{
��> ?
codigo
�� 
=
�� 
$str
�� 
;
�� 
}
�� 
}
��
 
else
�� 
{
�� 
codigo
�� 
=
�� 
$str
�� 
;
�� 
}
��
 
}
�� 	
catch
��
 
(
�� $
CommunicationException
�� '
)
��' (
{
��) *
codigo
��
 
=
�� 
$str
�� 
;
�� 
}
�� 	
}
�� 
return
�� 
codigo
�� 
;
�� 
}
�� 
private
�� 
void
�� !
MandarMensajesError
�� $
(
��$ %
int
��% (
	verificar
��) 2
,
��2 3
Boolean
��4 ;
nombre
��< B
)
��B C
{
��D E
if
�� 
(
��	 

	verificar
��
 
==
�� 
$num
�� 
)
�� 
{
�� 
if
�� 

(
�� 
nombre
�� 
)
�� 
{
�� 
tb_NombreUsuario
��
 
.
�� 
Text
�� 
=
��  !
$str
��" $
;
��$ %

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_NombreOcupado
��/ ?
,
��? @

Properties
��A K
.
��K L
	Resources
��L U
.
��U V
	mb_Alerta
��V _
)
��_ `
;
��` a
}
�� 	
else
��
 
{
�� "
tb_CorreoElectronico
��
 
.
�� 
Text
�� #
=
��$ %
$str
��& (
;
��( )

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_CorreoOcupado
��/ ?
,
��? @

Properties
��A K
.
��K L
	Resources
��L U
.
��U V
	mb_Alerta
��V _
)
��_ `
;
��` a
}
�� 	
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 
	verificar
�� 
==
�� 
$num
�� 
)
�� 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_ConexionBD
��/ <
,
��< =

Properties
��> H
.
��H I
	Resources
��I R
.
��R S
	mb_Alerta
��S \
)
��\ ]
;
��] ^
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /!
mb_ConexionServidor
��/ B
,
��B C

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y
	mb_Alerta
��Y b
)
��b c
;
��c d
}
�� 	
}
�� 
}
�� 
private
�� 
string
�� 
ComputeSha256Hash
�� $
(
��$ %
string
��% +
rawData
��, 3
)
��3 4
{
��5 6
using
�� 
(
�� 
SHA256
�� 

sha256Hash
�� 
=
��  
SHA256
��! '
.
��' (
Create
��( .
(
��. /
)
��/ 0
)
��0 1
{
��2 3
byte
�� 
[
�� 
]
�� 
bytes
�� 
=
�� 

sha256Hash
�� !
.
��! "
ComputeHash
��" -
(
��- .
Encoding
��. 6
.
��6 7
UTF8
��7 ;
.
��; <
GetBytes
��< D
(
��D E
rawData
��E L
)
��L M
)
��M N
;
��N O
StringBuilder
�� 
builder
�� 
=
�� 
new
��  #
StringBuilder
��$ 1
(
��1 2
)
��2 3
;
��3 4
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
bytes
�� !
.
��! "
Length
��" (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0
builder
��
 
.
�� 
Append
�� 
(
�� 
bytes
�� 
[
�� 
i
��  
]
��  !
.
��! "
ToString
��" *
(
��* +
$str
��+ /
)
��/ 0
)
��0 1
;
��1 2
}
�� 	
return
�� 
builder
�� 
.
�� 
ToString
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
}
�� 
}�� �
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Resultados.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public

 
partial

	 
class

 

Resultados

 !
:

" #
Window

$ *
{

+ ,
Partida 
partida 
; 
public 


Resultados 
( 
Partida 
partida %
,% &
List' +
<+ ,

ServiceSYE, 6
.6 7
Jugador7 >
>> ?
posicionJugadores@ Q
)Q R
{S T
InitializeComponent 
( 
) 
; 
this 

.
 
partida 
= 
partida 
; 
dg_Jugadores 
. 
ItemsSource 
=  
posicionJugadores! 2
;2 3
} 
private!! 
void!! 
Bt_Aceptar_Click!! !
(!!! "
object!!" (
sender!!) /
,!!/ 0
RoutedEventArgs!!1 @
e!!A B
)!!B C
{!!D E
this"" 

.""
 
Close"" 
("" 
)"" 
;"" 
}## 
private** 
void** 
Window_Closing** 
(**  
object**  &
sender**' -
,**- .
System**/ 5
.**5 6
ComponentModel**6 D
.**D E
CancelEventArgs**E T
e**U V
)**V W
{**X Y
partida++ 
.++ 
bt_Abandonar++ 
.++ 

RaiseEvent++ %
(++% &
new++& )
RoutedEventArgs++* 9
(++9 :
Button++: @
.++@ A

ClickEvent++A K
,++K L
partida++M T
.++T U
bt_Abandonar++U a
)++a b
)++b c
;++c d
},, 
}-- 
}.. �\
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\TablaPosiciones.xaml.cs
	namespace		 	 
SerpientesYEscaleras		
 
{		  
public 
partial	 
class 
TablaPosiciones &
:' (
Window) /
{0 1
private 

ServiceSYE 
. 
Jugador 
jugador &
;& '
public 

TablaPosiciones 
( 

ServiceSYE %
.% &
Jugador& -
jugador. 5
)5 6
{7 8
InitializeComponent 
( 
) 
; 
this 

.
 
jugador 
= 
jugador 
; !
CargarJugadoresPuntos 
( 
) 
; 
} 
private"" 
void"" 
Bt_Ordenar_Click"" !
(""! "
object""" (
sender"") /
,""/ 0
RoutedEventArgs""1 @
e""A B
)""B C
{""D E
if## 
(##	 


bt_Ordenar##
 
.## 
Content## 
.## 
Equals## #
(### $

Properties##$ .
.##. /
	Resources##/ 8
.##8 9
bt_OrdenarVictorias##9 L
)##L M
)##M N
{##O P
if$$ 

($$ $
CargarJugadoresVictorias$$ $
($$$ %
)$$% &
)$$& '
{$$( )

bt_Ordenar%%
 
.%% 
Content%% 
=%% 

Properties%% )
.%%) *
	Resources%%* 3
.%%3 4
bt_OrdenarPuntos%%4 D
;%%D E
dgc_Posicion&&
 
.&& 
Header&& 
=&& 

Properties&&  *
.&&* +
	Resources&&+ 4
.&&4 5
mi_Victorias&&5 A
;&&A B
dgc_Posicion''
 
.'' 
Binding'' 
=''  
new''! $
Binding''% ,
('', -
$str''- E
)''E F
;''F G
lb_Posicion((
 
.(( 
Content(( 
=(( 
$str((  "
;((" #

i_Posicion))
 
.)) 
Source)) 
=)) 
new)) !
BitmapImage))" -
())- .
new)). 1
Uri))2 5
())5 6
$str))6 8
,))8 9
UriKind)): A
.))A B
Relative))B J
)))J K
)))K L
;))L M
}** 	
else**
 
{** 

MessageBox++
 
.++ 
Show++ 
(++ 

Properties++ $
.++$ %
	Resources++% .
.++. /
mb_ConexionBD++/ <
,++< =

Properties++> H
.++H I
	Resources++I R
.++R S
	mb_Alerta++S \
)++\ ]
;++] ^
},, 	
}-- 
else-- 
{-- 
if.. 

(.. !
CargarJugadoresPuntos.. !
(..! "
).." #
)..# $
{..% &

bt_Ordenar//
 
.// 
Content// 
=// 

Properties// )
.//) *
	Resources//* 3
.//3 4
bt_OrdenarVictorias//4 G
;//G H
dgc_Posicion00
 
.00 
Header00 
=00 

Properties00  *
.00* +
	Resources00+ 4
.004 5
	mi_Puntos005 >
;00> ?
dgc_Posicion11
 
.11 
Binding11 
=11  
new11! $
Binding11% ,
(11, -
$str11- B
)11B C
;11C D
lb_Posicion22
 
.22 
Content22 
=22 
$str22  "
;22" #

i_Posicion33
 
.33 
Source33 
=33 
new33 !
BitmapImage33" -
(33- .
new33. 1
Uri332 5
(335 6
$str336 8
,338 9
UriKind33: A
.33A B
Relative33B J
)33J K
)33K L
;33L M
}44 	
else44
 
{44 

MessageBox55
 
.55 
Show55 
(55 

Properties55 $
.55$ %
	Resources55% .
.55. /
mb_ConexionBD55/ <
,55< =

Properties55> H
.55H I
	Resources55I R
.55R S
	mb_Alerta55S \
)55\ ]
;55] ^
}66 	
}77 
}88 
private?? 
void?? -
!Dg_Jugadores_SelectedCellsChanged?? 2
(??2 3
object??3 9
sender??: @
,??@ A)
SelectedCellsChangedEventArgs??B _
e??` a
)??a b
{??c d
int@@ 	
tamanioImagen@@
 
=@@ 
$num@@ 
,@@ 
margen@@ %
=@@& '
$num@@( *
,@@* +
tamanioLetra@@, 8
=@@9 :
$num@@; >
;@@> ?
ifAA 
(AA	 

dg_JugadoresAA
 
.AA 
SelectedIndexAA $
+AA% &
$numAA' (
>AA) *
$numAA+ ,
)AA, -
{AA. /

i_PosicionBB 
.BB 
SourceBB 
=BB 
newBB 
BitmapImageBB  +
(BB+ ,
newBB, /
UriBB0 3
(BB3 4
$strBB4 Y
,BBY Z
UriKindBB[ b
.BBb c
RelativeBBc k
)BBk l
)BBl m
;BBm n
tamanioImagenCC 
=CC 
$numCC 
;CC 
margenDD 
=DD 
$numDD 
;DD 
tamanioLetraEE 
=EE 
$numEE 
;EE 
}FF 
elseFF 
{FF 
ifGG 

(GG 
dg_JugadoresGG 
.GG 
SelectedIndexGG &
+GG' (
$numGG) *
==GG+ -
$numGG. /
)GG/ 0
{GG1 2

i_PosicionHH
 
.HH 
SourceHH 
=HH 
newHH !
BitmapImageHH" -
(HH- .
newHH. 1
UriHH2 5
(HH5 6
$strHH6 [
,HH[ \
UriKindHH] d
.HHd e
RelativeHHe m
)HHm n
)HHn o
;HHo p
tamanioImagenII
 
=II 
$numII 
;II 
margenJJ
 
=JJ 
$numJJ 
;JJ 
tamanioLetraKK
 
=KK 
$numKK 
;KK 
}LL 	
elseLL
 
{LL 
ifMM
 
(MM 
dg_JugadoresMM 
.MM 
SelectedIndexMM (
+MM) *
$numMM+ ,
==MM- /
$numMM0 1
)MM1 2
{MM3 4

i_PosicionNN 
.NN 
SourceNN 
=NN 
newNN  #
BitmapImageNN$ /
(NN/ 0
newNN0 3
UriNN4 7
(NN7 8
$strNN8 \
,NN\ ]
UriKindNN^ e
.NNe f
RelativeNNf n
)NNn o
)NNo p
;NNp q
tamanioImagenOO 
=OO 
$numOO 
;OO  
margenPP 
=PP 
$numPP 
;PP 
tamanioLetraQQ 
=QQ 
$numQQ 
;QQ 
}RR
 
elseRR 
{RR 

i_PosicionSS 
.SS 
SourceSS 
=SS 
newSS  #
BitmapImageSS$ /
(SS/ 0
newSS0 3
UriSS4 7
(SS7 8
$strSS8 Z
,SSZ [
UriKindSS\ c
.SSc d
RelativeSSd l
)SSl m
)SSm n
;SSn o
}TT
 
}UU 	
}VV 

i_PosicionWW 
.WW 
HeightWW 
=WW 
tamanioImagenWW '
;WW' (

i_PosicionXX 
.XX 
MarginXX 
=XX 
newXX 
	ThicknessXX '
(XX' (
$numXX( )
,XX) *
margenXX+ 1
,XX1 2
$numXX3 4
,XX4 5
$numXX6 7
)XX7 8
;XX8 9
lb_PosicionYY 
.YY 
MarginYY 
=YY 
newYY 
	ThicknessYY (
(YY( )
$numYY) *
,YY* +
margenYY, 2
+YY3 4
$numYY5 7
,YY7 8
$numYY9 :
,YY: ;
$numYY< =
)YY= >
;YY> ?
lb_PosicionZZ 
.ZZ 
FontSizeZZ 
=ZZ 
tamanioLetraZZ )
;ZZ) *
lb_Posicion[[ 
.[[ 
Content[[ 
=[[ 
dg_Jugadores[[ (
.[[( )
SelectedIndex[[) 6
+[[7 8
$num[[9 :
;[[: ;
}\\ 
privatebb 
Booleanbb !
CargarJugadoresPuntosbb )
(bb) *
)bb* +
{bb, -
Booleancc 
exitocc 
=cc 
truecc 
;cc 

ServiceSYEdd 
.dd 
JugadorClientdd 
clientedd &
=dd' (
newdd) ,

ServiceSYEdd- 7
.dd7 8
JugadorClientdd8 E
(ddE F
)ddF G
;ddG H
tryee 	
{ee
 
varff 
	jugadoresff 
=ff 
clienteff 
.ff  "
ObtenerJugadoresPuntosff  6
(ff6 7
)ff7 8
;ff8 9
dg_Jugadoresgg 
.gg 
ItemsSourcegg  
=gg! "
	jugadoresgg# ,
;gg, -
ifhh 

(hh 
!hh 
	jugadoreshh 
.hh 
Anyhh 
(hh 
)hh 
)hh 
{hh 
exitoii
 
=ii 
falseii 
;ii 
}jj 	
}kk 
catchkk 
(kk "
CommunicationExceptionkk %
)kk% &
{kk' (

MessageBoxll 
.ll 
Showll 
(ll 

Propertiesll "
.ll" #
	Resourcesll# ,
.ll, -
mb_ConexionServidorll- @
,ll@ A

PropertiesllB L
.llL M
	ResourcesllM V
.llV W
	mb_AlertallW `
)ll` a
;lla b
}mm 
returnnn 
exitonn 
;nn 
}oo 
privateuu 
Booleanuu $
CargarJugadoresVictoriasuu ,
(uu, -
)uu- .
{uu/ 0
Booleanvv 
exitovv 
=vv 
truevv 
;vv 

ServiceSYEww 
.ww 
JugadorClientww 
clienteww &
=ww' (
newww) ,

ServiceSYEww- 7
.ww7 8
JugadorClientww8 E
(wwE F
)wwF G
;wwG H
tryxx 	
{xx
 
varyy 
	jugadoresyy 
=yy 
clienteyy 
.yy  %
ObtenerJugadoresVictoriasyy  9
(yy9 :
)yy: ;
;yy; <
dg_Jugadoreszz 
.zz 
ItemsSourcezz  
=zz! "
	jugadoreszz# ,
;zz, -
if{{ 

({{ 
!{{ 
	jugadores{{ 
.{{ 
Any{{ 
({{ 
){{ 
){{ 
{{{ 
exito||
 
=|| 
false|| 
;|| 
}}} 	
}~~ 
catch~~ 
(~~ "
CommunicationException~~ %
)~~% &
{~~' (

MessageBox 
. 
Show 
( 

Properties "
." #
	Resources# ,
., -
mb_ConexionServidor- @
,@ A

PropertiesB L
.L M
	ResourcesM V
.V W
	mb_AlertaW `
)` a
;a b
}
�� 
return
�� 
exito
�� 
;
�� 
}
�� 
}
�� 
}�� �6
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\UnirsePartida.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public		 
partial			 
class		 
UnirsePartida		 $
:		% &
Window		' -
{		. /
private

 

ServiceSYE

 
.

 
Jugador

 
jugador

 &
;

& '
private 
MenuPrincipal 
menuPrincipal '
;' (
private 

ServiceSYE 
. 
PartidaClient $
clientePartida% 3
;3 4
public 

UnirsePartida 
( 
MenuPrincipal &
menuPrincipal' 4
,4 5

ServiceSYE6 @
.@ A
JugadorA H
jugadorI P
)P Q
{R S
InitializeComponent 
( 
) 
; 
this 

.
 
menuPrincipal 
= 
menuPrincipal (
;( )
this 

.
 
jugador 
= 
jugador 
; 
Partidas 
partidas 
= 
new 
Partidas &
(& '
)' (
;( )
partidas 
. 
UnirsePartida 
= 
this #
;# $
InstanceContext 
contexto 
=  
new! $
InstanceContext% 4
(4 5
partidas5 =
)= >
;> ?
clientePartida 
= 
new 

ServiceSYE %
.% &
PartidaClient& 3
(3 4
contexto4 <
)< =
;= >
try 	
{
 
clientePartida   
.   
VerPartidas   "
(  " #
jugador  # *
.  * +
NombreUsuario  + 8
)  8 9
;  9 :
}!! 
catch!! 
(!! "
CommunicationException!! %
)!!% &
{!!' (

MessageBox"" 
."" 
Show"" 
("" 

Properties"" "
.""" #
	Resources""# ,
."", -
mb_ConexionServidor""- @
,""@ A

Properties""B L
.""L M
	Resources""M V
.""V W
	mb_Alerta""W `
)""` a
;""a b
}## 
CargarPartidas$$ 
($$ 
)$$ 
;$$ 
}%% 
private,, 
void,, 
Bt_Unirse_Click,,  
(,,  !
object,,! '
sender,,( .
,,,. /
RoutedEventArgs,,0 ?
e,,@ A
),,A B
{,,C D
if-- 
(--	 

dg_Partidas--
 
.-- 
SelectedIndex-- #
>=--$ &
$num--' (
)--( )
{--* +
if.. 

(.. 
jugador.. 
... 
Estadisticas..  
...  !
Puntos..! '
>=..( *
$num..+ .
)... /
{..0 1

ServiceSYE//
 
.// 
Partida// 
partida// $
=//% &
(//' (

ServiceSYE//( 2
.//2 3
Partida//3 :
)//: ;
dg_Partidas//; F
.//F G
SelectedItem//G S
;//S T
try00
 
{00 
clientePartida11 
.11 
SalirVerPartidas11 +
(11+ ,
)11, -
;11- .
menuPrincipal22 
.22 
UnirseAPartida22 (
(22( )
partida22) 0
)220 1
;221 2
this33 
.33 
Close33 
(33 
)33 
;33 
}44
 
catch44 
(44 "
CommunicationException44 )
)44) *
{44+ ,

MessageBox55 
.55 
Show55 
(55 

Properties55 &
.55& '
	Resources55' 0
.550 1
mb_ConexionServidor551 D
,55D E

Properties55F P
.55P Q
	Resources55Q Z
.55Z [
	mb_Alerta55[ d
)55d e
;55e f
}66
 
}77 	
else77
 
{77 

MessageBox88
 
.88 
Show88 
(88 

Properties88 $
.88$ %
	Resources88% .
.88. /"
mb_PuntosInsuficientes88/ E
,88E F

Properties88G Q
.88Q R
	Resources88R [
.88[ \
	mb_Alerta88\ e
)88e f
;88f g
}99 	
}:: 
};; 
privateBB 
voidBB 
Bt_Ayuda_ClickBB 
(BB  
objectBB  &
senderBB' -
,BB- .
RoutedEventArgsBB/ >
eBB? @
)BB@ A
{BBB C

MessageBoxCC 
.CC 
ShowCC 
(CC 

PropertiesCC  
.CC  !
	ResourcesCC! *
.CC* +
mb_AyudaUnirseCC+ 9
,CC9 :

PropertiesCC; E
.CCE F
	ResourcesCCF O
.CCO P
mb_AyudaCCP X
)CCX Y
;CCY Z
}DD 
privateKK 
voidKK 
Window_ClosingKK 
(KK  
objectKK  &
senderKK' -
,KK- .
SystemKK/ 5
.KK5 6
ComponentModelKK6 D
.KKD E
CancelEventArgsKKE T
eKKU V
)KKV W
{KKX Y
tryLL 	
{LL
 
clientePartidaMM 
.MM 
SalirVerPartidasMM '
(MM' (
)MM( )
;MM) *
}NN 
catchNN 
(NN "
CommunicationExceptionNN %
)NN% &
{NN' (

MessageBoxOO 
.OO 
ShowOO 
(OO 

PropertiesOO "
.OO" #
	ResourcesOO# ,
.OO, -
mb_ConexionServidorOO- @
,OO@ A

PropertiesOOB L
.OOL M
	ResourcesOOM V
.OOV W
	mb_AlertaOOW `
)OO` a
;OOa b
}PP 
}QQ 
publicVV 

voidVV 
CargarPartidasVV 
(VV 
)VV  
{VV! "
tryWW 	
{WW
 
dg_PartidasXX 
.XX 
ItemsSourceXX 
=XX  !
clientePartidaXX" 0
.XX0 1
ObtenerPartidasXX1 @
(XX@ A
)XXA B
;XXB C
}YY 
catchYY 
(YY "
CommunicationExceptionYY %
)YY% &
{YY' (

MessageBoxZZ 
.ZZ 
ShowZZ 
(ZZ 

PropertiesZZ "
.ZZ" #
	ResourcesZZ# ,
.ZZ, -
mb_ConexionServidorZZ- @
,ZZ@ A

PropertiesZZB L
.ZZL M
	ResourcesZZM V
.ZZV W
	mb_AlertaZZW `
)ZZ` a
;ZZa b
}[[ 
}\\ 
}]] 
}^^ ��
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\ValidarCuenta.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public

 
partial

	 
class

 
ValidarCuenta

 $
:

% &
Window

' -
{

. /
private 

ServiceSYE 
. 
JugadorClient $
cliente% ,
;, -
public 

ValidarCuenta 
( 
Boolean  
prueba! '
)' (
{) *
} 
public 

ValidarCuenta 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
this 

.
 
cliente 
= 
new 

ServiceSYE #
.# $
JugadorClient$ 1
(1 2
)2 3
;3 4
} 
private## 
void## 
Bt_Aceptar_Click## !
(##! "
object##" (
sender##) /
,##/ 0
RoutedEventArgs##1 @
e##A B
)##B C
{##D E
if$$ 
($$	 

!$$
 !
tb_CodigoVerificacion$$  
.$$  !
Text$$! %
.$$% &
Equals$$& ,
($$, -
$str$$- /
)$$/ 0
)$$0 1
{$$2 3
if%% 

(%% 
ValidarCodigo%% 
(%% !
tb_CodigoVerificacion%% /
.%%/ 0
Text%%0 4
)%%4 5
)%%5 6
{%%7 8
try&&
 
{&& 

ServiceSYE'' 
.'' 
Jugador'' 
jugador'' &
=''' (
cliente'') 0
.''0 1#
ObtenerJugadorPorCodigo''1 H
(''H I!
tb_CodigoVerificacion''I ^
.''^ _
Text''_ c
)''c d
;''d e
if(( 
((( 
!(( 
jugador(( 
.(( 
NombreUsuario(( &
.((& '
Equals((' -
(((- .
$str((. 1
)((1 2
)((2 3
{((4 5 
ValidarCuentaJugador)) "
())" #
jugador))# *
)))* +
;))+ ,
}** 
else** 
{** 

MessageBox++ 
.++ 
Show++ 
(++ 

Properties++ (
.++( )
	Resources++) 2
.++2 3
mb_ConexionBD++3 @
,++@ A

Properties++B L
.++L M
	Resources++M V
.++V W
	mb_Alerta++W `
)++` a
;++a b
},, 
}--
 
catch-- 
(-- "
CommunicationException-- )
)--) *
{--+ ,

MessageBox.. 
... 
Show.. 
(.. 

Properties.. &
...& '
	Resources..' 0
...0 1
mb_ConexionServidor..1 D
,..D E

Properties..F P
...P Q
	Resources..Q Z
...Z [
	mb_Alerta..[ d
)..d e
;..e f
}//
 
}00 	
else00
 
{00 !
tb_CodigoVerificacion11
 
.11  
Text11  $
=11% &
$str11' )
;11) *

MessageBox22
 
.22 
Show22 
(22 

Properties22 $
.22$ %
	Resources22% .
.22. /
mb_SoloNumeros22/ =
,22= >

Properties22? I
.22I J
	Resources22J S
.22S T
	mb_Alerta22T ]
)22] ^
;22^ _
}33 	
}44 
else44 
{44 

MessageBox55 
.55 
Show55 
(55 

Properties55 "
.55" #
	Resources55# ,
.55, -
mb_CodigoVacio55- ;
,55; <

Properties55= G
.55G H
	Resources55H Q
.55Q R
	mb_Alerta55R [
)55[ \
;55\ ]
}66 
}77 
private>> 
void>> 
Bt_Cancelar_Click>> "
(>>" #
object>># )
sender>>* 0
,>>0 1
RoutedEventArgs>>2 A
e>>B C
)>>C D
{>>E F
this?? 

.??
 
Close?? 
(?? 
)?? 
;?? 
}@@ 
privateGG 
voidGG 
Bt_Enviar_ClickGG  
(GG  !
objectGG! '
senderGG( .
,GG. /
RoutedEventArgsGG0 ?
eGG@ A
)GGA B
{GGC D
ifHH 
(HH	 

ValidarDatosHH
 
(HH 
)HH 
)HH 
{HH 
tryII 
{II 

ServiceSYEJJ
 
.JJ 
JugadorJJ 
jugadorJJ $
=JJ% &
clienteJJ' .
.JJ. /#
ObtenerJugadorPorNombreJJ/ F
(JJF G
tb_NombreUsuarioJJG W
.JJW X
TextJJX \
)JJ\ ]
;JJ] ^
ifKK
 
(KK 
ValidarJugadorKK 
(KK 
jugadorKK $
)KK$ %
)KK% &
{KK' (
ifLL 
(LL 
!LL 
jugadorLL 
.LL 
CodigoLL 
.LL  
EqualsLL  &
(LL& '
$strLL' .
)LL. /
)LL/ 0
{LL1 2
RegistrarseMM 
registrarseMM %
=MM& '
newMM( +
RegistrarseMM, 7
(MM7 8
)MM8 9
;MM9 :
StringNN 
codigoNN 
=NN 
registrarseNN )
.NN) *
GenerarCodigoNN* 7
(NN7 8
)NN8 9
;NN9 :
ifOO 
(OO 
!OO 
codigoOO 
.OO 
EqualsOO  
(OO  !
$strOO! $
)OO$ %
&&OO& (
!OO) *
codigoOO* 0
.OO0 1
EqualsOO1 7
(OO7 8
$strOO8 <
)OO< =
)OO= >
{OO? @
EnviarNuevoCodigoPP !
(PP! "
jugadorPP" )
,PP) *
codigoPP+ 1
)PP1 2
;PP2 3
}QQ 
elseQQ 
{QQ $
MandarMensajeErrorCodigoRR (
(RR( )
codigoRR) /
)RR/ 0
;RR0 1
}SS 
}TT 
elseTT 
{TT 

MessageBoxUU 
.UU 
ShowUU 
(UU 

PropertiesUU (
.UU( )
	ResourcesUU) 2
.UU2 3!
mb_CuentaYaVerificadaUU3 H
,UUH I

PropertiesUUJ T
.UUT U
	ResourcesUUU ^
.UU^ _
	mb_AlertaUU_ h
)UUh i
;UUi j
}VV 
}WW
 
}XX 	
catchXX
 
(XX "
CommunicationExceptionXX '
)XX' (
{XX) *

MessageBoxYY
 
.YY 
ShowYY 
(YY 

PropertiesYY $
.YY$ %
	ResourcesYY% .
.YY. /
mb_ConexionServidorYY/ B
,YYB C

PropertiesYYD N
.YYN O
	ResourcesYYO X
.YYX Y
	mb_AlertaYYY b
)YYb c
;YYc d
}ZZ 	
}[[ 
tb_NombreUsuario\\ 
.\\ 
Text\\ 
=\\ 
$str\\  
;\\  !
}]] 
publichh 

Booleanhh 
ValidarCodigohh  
(hh  !
Stringhh! '
codigoVerificacionhh( :
)hh: ;
{hh< =
Booleanii 
validarii 
=ii 
trueii 
;ii 
forjj 	
(jj
 
intjj 
ijj 
=jj 
$numjj 
;jj 
ijj 
<jj 
codigoVerificacionjj ,
.jj, -
Lengthjj- 3
;jj3 4
ijj5 6
++jj6 8
)jj8 9
{jj: ;
ifkk 

(kk 
!kk 
(kk 
codigoVerificacionkk  
[kk  !
ikk! "
]kk" #
>=kk$ &
$numkk' )
&&kk* ,
codigoVerificacionkk- ?
[kk? @
ikk@ A
]kkA B
<=kkC E
$numkkF H
)kkH I
)kkI J
{kkK L
validarll
 
=ll 
falsell 
;ll 
breakmm
 
;mm 
}nn 	
}oo 
returnpp 
validarpp 
;pp 
}qq 
privateyy 
voidyy  
ValidarCuentaJugadoryy %
(yy% &

ServiceSYEyy& 0
.yy0 1
Jugadoryy1 8
jugadoryy9 @
)yy@ A
{yyB C
ifzz 
(zz	 

jugadorzz
 
.zz 
Codigozz 
.zz 
Equalszz 
(zz  !
tb_CodigoVerificacionzz  5
.zz5 6
Textzz6 :
)zz: ;
)zz; <
{zz= >
if{{ 

({{ 
cliente{{ 
.{{  
ValidarCuentaJugador{{ (
({{( )!
tb_CodigoVerificacion{{) >
.{{> ?
Text{{? C
){{C D
){{D E
{{{F G

MessageBox||
 
.|| 
Show|| 
(|| 

Properties|| $
.||$ %
	Resources||% .
.||. /
mb_CuentaValidada||/ @
+||A B
jugador||C J
.||J K
NombreUsuario||K X
+||Y Z
$str||[ ^
,||^ _

Properties||` j
.||j k
	Resources||k t
.||t u
mb_Listo||u }
)||} ~
;||~ 
this}}
 
.}} 
Close}} 
(}} 
)}} 
;}} 
}~~ 	
else~~
 
{~~ 

MessageBox
 
. 
Show 
( 

Properties $
.$ %
	Resources% .
.. /
mb_ConexionBD/ <
,< =

Properties> H
.H I
	ResourcesI R
.R S
	mb_AlertaS \
)\ ]
;] ^
}
�� 	
}
�� 
else
�� 
{
�� #
tb_CodigoVerificacion
�� 
.
�� 
Text
�� "
=
��# $
$str
��% '
;
��' (

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -!
mb_CodigoIncorrecto
��- @
,
��@ A

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
	mb_Alerta
��W `
)
��` a
;
��a b
}
�� 
}
�� 
private
�� 
Boolean
�� 
ValidarDatos
��  
(
��  !
)
��! "
{
��# $
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

tb_NombreUsuario
��
 
.
�� 
Text
�� 
!=
��  "
null
��# '
&&
��( *
tb_NombreUsuario
��+ ;
.
��; <
Text
��< @
.
��@ A
Length
��A G
>
��H I
$num
��J K
)
��K L
{
��M N
if
�� 

(
�� "
ValidarNombreUsuario
��  
(
��  !
tb_NombreUsuario
��! 1
.
��1 2
Text
��2 6
)
��6 7
)
��7 8
{
��9 :
validar
��
 
=
�� 
true
�� 
;
�� 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /$
mb_CaracteresInvalidos
��/ E
,
��E F

Properties
��G Q
.
��Q R
	Resources
��R [
.
��[ \
	mb_Alerta
��\ e
)
��e f
;
��f g
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -
mb_IngreseJugador
��- >
,
��> ?

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U
	mb_Alerta
��U ^
)
��^ _
;
��_ `
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarNombreUsuario
�� '
(
��' (
String
��( .
nombreUsuario
��/ <
)
��< =
{
��> ?
Boolean
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
nombreUsuario
�� '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
��5 6
if
�� 

(
�� 
!
�� 
(
�� 
(
�� 
nombreUsuario
�� 
[
�� 
i
�� 
]
�� 
>=
��  "
$num
��# %
&&
��& (
nombreUsuario
��) 6
[
��6 7
i
��7 8
]
��8 9
<=
��: <
$num
��= ?
)
��? @
||
��A C
(
��
 
nombreUsuario
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� !
&&
��" $
nombreUsuario
��% 2
[
��2 3
i
��3 4
]
��4 5
<=
��6 8
$num
��9 <
)
��< =
||
��> @
(
��
 
nombreUsuario
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� !
&&
��" $
nombreUsuario
��% 2
[
��2 3
i
��3 4
]
��4 5
<=
��6 8
$num
��9 ;
)
��; <
||
��= ?
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
||
��' )
nombreUsuario
��* 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Equals
��; A
(
��A B
$char
��B E
)
��E F
||
��G I
nombreUsuario
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� !
(
��! "
$char
��" %
)
��% &
)
��& '
)
��' (
{
��) *
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
private
�� 
Boolean
�� 
ValidarJugador
�� "
(
��" #

ServiceSYE
��# -
.
��- .
Jugador
��. 5
jugador
��6 =
)
��= >
{
��? @
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

!
��
 
jugador
�� 
.
�� 
NombreUsuario
��  
.
��  !
Equals
��! '
(
��' (
$str
��( +
)
��+ ,
)
��, -
{
��. /
if
�� 

(
�� 
!
�� 
jugador
�� 
.
�� 
NombreUsuario
�� "
.
��" #
Equals
��# )
(
��) *
$str
��* ,
)
��, -
)
��- .
{
��/ 0
validar
��
 
=
�� 
true
�� 
;
�� 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /#
mb_JugadorInexistente
��/ D
,
��D E

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [
	mb_Alerta
��[ d
)
��d e
;
��e f
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -
mb_ConexionBD
��- :
,
��: ;

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q
	mb_Alerta
��Q Z
)
��Z [
;
��[ \
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
private
�� 
void
�� 
EnviarNuevoCodigo
�� "
(
��" #

ServiceSYE
��# -
.
��- .
Jugador
��. 5
jugador
��6 =
,
��= >
String
��? E
codigo
��F L
)
��L M
{
��N O
if
�� 
(
��	 

cliente
��
 
.
�� 
ModificarCodigo
�� !
(
��! "
jugador
��" )
.
��) *
Codigo
��* 0
,
��0 1
codigo
��2 8
)
��8 9
)
��9 :
{
��; <
jugador
�� 
.
�� 
Codigo
�� 
=
�� 
codigo
�� 
;
��  
if
�� 

(
�� 
cliente
�� 
.
�� !
EnviarCodigoACorreo
�� '
(
��' (
jugador
��( /
,
��/ 0

Properties
��1 ;
.
��; <
	Resources
��< E
.
��E F
	ms_Asunto
��F O
,
��O P

Properties
��Q [
.
��[ \
	Resources
��\ e
.
��e f
ms_IngresaCodigo
��f v
,
��v w

Properties��x �
.��� �
	Resources��� �
.��� �

ms_Mensaje��� �
)��� �
)��� �
{��� �

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_CodigoEnviado
��/ ?
+
��@ A
jugador
��B I
.
��I J
CorreoElectronico
��J [
+
��\ ]

Properties
��^ h
.
��h i
	Resources
��i r
.
��r s
mb_IngreseCodigo��s �
,��� �

Properties��� �
.��� �
	Resources��� �
.��� �
	mb_Alerta��� �
)��� �
;��� �
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /
mb_EnvioFallido
��/ >
,
��> ?

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U
	mb_Alerta
��U ^
)
��^ _
;
��_ `
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -
mb_ConexionBD
��- :
,
��: ;

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q
	mb_Alerta
��Q Z
)
��Z [
;
��[ \
}
�� 
}
�� 
private
�� 
void
�� &
MandarMensajeErrorCodigo
�� )
(
��) *
String
��* 0
codigo
��1 7
)
��7 8
{
��9 :
if
�� 
(
��	 

codigo
��
 
.
�� 
Equals
�� 
(
�� 
$str
�� 
)
�� 
)
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -
mb_ConexionBD
��- :
,
��: ;

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q
	mb_Alerta
��Q Z
)
��Z [
;
��[ \
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -!
mb_ConexionServidor
��- @
,
��@ A

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
	mb_Alerta
��W `
)
��` a
;
��a b
}
�� 
}
�� 
}
�� 
}�� �
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\App.xaml.cs
	namespace 	 
SerpientesYEscaleras
 
{  
public 
partial	 
class 
App 
: 
Application (
{) *
App 
( 
) 	
{
 
String 
idioma 
= 
$str 
; 
try		 	
{		
 
idioma

 
=

 
File

 
.

 
ReadAllText

 !
(

! "
	AppDomain

" +
.

+ ,
CurrentDomain

, 9
.

9 :
BaseDirectory

: G
+

H I
$str

J _
)

_ `
.

` a
	Substring

a j
(

j k
$num

k l
,

l m
$num

n o
)

o p
;

p q
} 
catch 
( !
FileNotFoundException $
)$ %
{& '
File 
. 
WriteAllText 
( 
	AppDomain #
.# $
CurrentDomain$ 1
.1 2
BaseDirectory2 ?
+@ A
$strB W
,W X
$strY `
)` a
;a b
} 
catch 
( '
ArgumentOutOfRangeException *
)* +
{, -
File 
. 
WriteAllText 
( 
	AppDomain #
.# $
CurrentDomain$ 1
.1 2
BaseDirectory2 ?
+@ A
$strB W
,W X
$strY `
)` a
;a b
} 
System 
. 
	Threading 
. 
Thread 
. 
CurrentThread +
.+ ,
CurrentCulture, :
=; <
System= C
.C D
GlobalizationD Q
.Q R
CultureInfoR ]
.] ^!
CreateSpecificCulture^ s
(s t
$strt v
)v w
;w x
System 
. 
	Threading 
. 
Thread 
. 
CurrentThread +
.+ ,
CurrentCulture, :
=; <
System= C
.C D
GlobalizationD Q
.Q R
CultureInfoR ]
.] ^!
CreateSpecificCulture^ s
(s t
$strt {
){ |
;| }
if 
(	 

idioma
 
. 
Equals 
( 
$str 
)  
)  !
{" #
System 
. 
	Threading 
. 
Thread 
.  
CurrentThread  -
.- .
CurrentUICulture. >
=? @
newA D
SystemE K
.K L
GlobalizationL Y
.Y Z
CultureInfoZ e
(e f
$strf m
)m n
;n o
} 
else 
{ 
System 
. 
	Threading 
. 
Thread 
.  
CurrentThread  -
.- .
CurrentUICulture. >
=? @
newA D
SystemE K
.K L
GlobalizationL Y
.Y Z
CultureInfoZ e
(e f
$strf h
)h i
;i j
} 
} 
} 
} ޛ
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MainWindow.xaml.cs
	namespace		 	 
SerpientesYEscaleras		
 
{		  
public 
partial	 
class 

MainWindow !
:" #
Window$ *
{+ ,

ServiceSYE 
. 
JugadorClient 
cliente $
;$ %
public 


MainWindow 
( 
Boolean 
prueba $
)$ %
{& '
InitializeComponent 
( 
) 
; 
} 
public 


MainWindow 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
cliente   
=   
new   

ServiceSYE   
.   
JugadorClient   ,
(  , -
)  - .
;  . /
}!! 
private(( 
void(( 
Bt_Ingresar_Click(( "
(((" #
object((# )
sender((* 0
,((0 1
RoutedEventArgs((2 A
e((B C
)((C D
{((E F
if)) 
())	 

ValidarDatos))
 
()) 
))) 
))) 
{)) 
try** 
{** 

ServiceSYE++
 
.++ 
Jugador++ 
jugador++ $
=++% &
cliente++' .
.++. /
IniciarSesion++/ <
(++< =
tb_NombreUsuario++= M
.++M N
Text++N R
,++R S
ComputeSha256Hash++T e
(++e f
pb_Contrasenia++f t
.++t u
Password++u }
)++} ~
)++~ 
;	++ �
if,,
 
(,, 
!,, 
jugador,, 
.,, 
NombreUsuario,, $
.,,$ %
Equals,,% +
(,,+ ,
$str,,, /
),,/ 0
),,0 1
{,,2 3
if-- 
(-- 
!-- 
jugador-- 
.-- 
NombreUsuario-- &
.--& '
Equals--' -
(--- .
$str--. 0
)--0 1
)--1 2
{--3 4
Ingresar.. 
(.. 
jugador.. 
).. 
;..  
}// 
else// 
{// 

MessageBox00 
.00 
Show00 
(00 

Properties00 (
.00( )
	Resources00) 2
.002 33
'mb_NombreUsuarioOContraseniaIncorrectos003 Z
,00Z [

Properties00\ f
.00f g
	Resources00g p
.00p q
	mb_Alerta00q z
)00z {
;00{ |
}11 
}22
 
else22 
{22 

MessageBox33 
.33 
Show33 
(33 

Properties33 &
.33& '
	Resources33' 0
.330 1
mb_ConexionBD331 >
,33> ?

Properties33@ J
.33J K
	Resources33K T
.33T U
	mb_Alerta33U ^
)33^ _
;33_ `
}44
 
}55 	
catch55
 
(55 "
CommunicationException55 '
)55' (
{55) *

MessageBox66
 
.66 
Show66 
(66 

Properties66 $
.66$ %
	Resources66% .
.66. /
mb_ConexionServidor66/ B
,66B C

Properties66D N
.66N O
	Resources66O X
.66X Y
	mb_Alerta66Y b
)66b c
;66c d
}77 	
}88 
tb_NombreUsuario99 
.99 
Text99 
=99 
$str99  
;99  !
pb_Contrasenia:: 
.:: 
Password:: 
=:: 
$str::  "
;::" #
};; 
privateBB 
voidBB "
Lb_Registrarse_MouseUpBB '
(BB' (
objectBB( .
senderBB/ 5
,BB5 6 
MouseButtonEventArgsBB7 K
eBBL M
)BBM N
{BBO P
RegistrarseCC 
registrarseCC 
=CC 
newCC  #
RegistrarseCC$ /
(CC/ 0
)CC0 1
;CC1 2
registrarseDD 
.DD 

ShowDialogDD 
(DD 
)DD 
;DD 
}EE 
privateLL 
voidLL $
Lb_ValidarCuenta_MouseUpLL )
(LL) *
objectLL* 0
senderLL1 7
,LL7 8 
MouseButtonEventArgsLL9 M
eLLN O
)LLO P
{LLQ R
ValidarCuentaMM 
validarCuentaMM !
=MM" #
newMM$ '
ValidarCuentaMM( 5
(MM5 6
)MM6 7
;MM7 8
validarCuentaNN 
.NN 

ShowDialogNN 
(NN 
)NN  
;NN  !
}OO 
privateVV 
voidVV 
Mi_Español_ClickVV !
(VV! "
objectVV" (
senderVV) /
,VV/ 0
RoutedEventArgsVV1 @
eVVA B
)VVB C
{VVD E
ifWW 
(WW	 

	mi_IdiomaWW
 
.WW 
HeaderWW 
.WW 
EqualsWW !
(WW! "
$strWW" ,
)WW, -
)WW- .
{WW/ 0
SystemXX 
.XX 
	ThreadingXX 
.XX 
ThreadXX 
.XX  
CurrentThreadXX  -
.XX- .
CurrentUICultureXX. >
=XX? @
newXXA D
SystemXXE K
.XXK L
GlobalizationXXL Y
.XXY Z
CultureInfoXXZ e
(XXe f
$strXXf h
)XXh i
;XXi j
StringYY 
	contenidoYY 
=YY 
FileYY 
.YY  
ReadAllTextYY  +
(YY+ ,
	AppDomainYY, 5
.YY5 6
CurrentDomainYY6 C
.YYC D
BaseDirectoryYYD Q
+YYR S
$strYYT i
)YYi j
;YYj k
FileZZ 
.ZZ 
WriteAllTextZZ 
(ZZ 
	AppDomainZZ #
.ZZ# $
CurrentDomainZZ$ 1
.ZZ1 2
BaseDirectoryZZ2 ?
+ZZ@ A
$strZZB W
,ZZW X
$strZZY `
+ZZa b
	contenidoZZc l
.ZZl m
	SubstringZZm v
(ZZv w
$numZZw x
)ZZx y
)ZZy z
;ZZz {

MainWindow[[ 

mainWindow[[ 
=[[ 
new[[  #

MainWindow[[$ .
([[. /
)[[/ 0
;[[0 1

mainWindow\\ 
.\\ 
Show\\ 
(\\ 
)\\ 
;\\ 
this]] 
.]] 
Close]] 
(]] 
)]] 
;]] 
}^^ 
}__ 
privateff 
voidff 
Mi_Ingles_Clickff  
(ff  !
objectff! '
senderff( .
,ff. /
RoutedEventArgsff0 ?
eff@ A
)ffA B
{ffC D
ifgg 
(gg	 

	mi_Idiomagg
 
.gg 
Headergg 
.gg 
Equalsgg !
(gg! "
$strgg" *
)gg* +
)gg+ ,
{gg- .
Systemhh 
.hh 
	Threadinghh 
.hh 
Threadhh 
.hh  
CurrentThreadhh  -
.hh- .
CurrentUICulturehh. >
=hh? @
newhhA D
SystemhhE K
.hhK L
GlobalizationhhL Y
.hhY Z
CultureInfohhZ e
(hhe f
$strhhf m
)hhm n
;hhn o
Stringii 
	contenidoii 
=ii 
Fileii 
.ii  
ReadAllTextii  +
(ii+ ,
	AppDomainii, 5
.ii5 6
CurrentDomainii6 C
.iiC D
BaseDirectoryiiD Q
+iiR S
$striiT i
)iii j
;iij k
Filejj 
.jj 
WriteAllTextjj 
(jj 
	AppDomainjj #
.jj# $
CurrentDomainjj$ 1
.jj1 2
BaseDirectoryjj2 ?
+jj@ A
$strjjB W
,jjW X
$strjjY `
+jja b
	contenidojjc l
.jjl m
	Substringjjm v
(jjv w
$numjjw x
)jjx y
)jjy z
;jjz {

MainWindowkk 

mainWindowkk 
=kk 
newkk  #

MainWindowkk$ .
(kk. /
)kk/ 0
;kk0 1

mainWindowll 
.ll 
Showll 
(ll 
)ll 
;ll 
thismm 
.mm 
Closemm 
(mm 
)mm 
;mm 
}nn 
}oo 
privateww 
Booleanww 
ValidarDatosww  
(ww  !
)ww! "
{ww# $
Booleanxx 
validarxx 
=xx 
falsexx 
;xx 
ifyy 
(yy	 
!
ValidarDatosCompletosyy
 
(yy  
tb_NombreUsuarioyy  0
.yy0 1
Textyy1 5
,yy5 6
pb_Contraseniayy7 E
.yyE F
PasswordyyF N
)yyN O
)yyO P
{yyQ R
ifzz 

(zz  
ValidarNombreUsuariozz  
(zz  !
tb_NombreUsuariozz! 1
.zz1 2
Textzz2 6
)zz6 7
)zz7 8
{zz9 :
if{{
 
({{  
ValidarNombreUsuario{{ "
({{" #
pb_Contrasenia{{# 1
.{{1 2
Password{{2 :
){{: ;
){{; <
{{{= >
validar|| 
=|| 
true|| 
;|| 
}}}
 
else}} 
{}} 

MessageBox~~ 
.~~ 
Show~~ 
(~~ 

Properties~~ &
.~~& '
	Resources~~' 0
.~~0 1-
!mb_CaracteresInvalidosContrasenia~~1 R
,~~R S

Properties~~T ^
.~~^ _
	Resources~~_ h
.~~h i
	mb_Alerta~~i r
)~~r s
;~~s t
}
 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /$
mb_CaracteresInvalidos
��/ E
,
��E F

Properties
��G Q
.
��Q R
	Resources
��R [
.
��[ \
	mb_Alerta
��\ e
)
��e f
;
��f g
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -0
"mb_NombreUsuarioOContraseniaVacios
��- O
,
��O P

Properties
��Q [
.
��[ \
	Resources
��\ e
.
��e f
	mb_Alerta
��f o
)
��o p
;
��p q
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
private
�� 
void
�� 
Ingresar
�� 
(
�� 

ServiceSYE
�� $
.
��$ %
Jugador
��% ,
jugador
��- 4
)
��4 5
{
��6 7
if
�� 
(
��	 

jugador
��
 
.
�� 
Codigo
�� 
.
�� 
Equals
�� 
(
��  
$str
��  '
)
��' (
)
��( )
{
��* +
if
�� 

(
�� 
cliente
�� 
.
�� 
ValidarConectado
�� $
(
��$ %
jugador
��% ,
)
��, -
)
��- .
{
��/ 0
cliente
��
 
.
�� 
UnirseAlJuego
�� 
(
��  
jugador
��  '
)
��' (
;
��( )
MenuPrincipal
��
 
menuPrincipal
�� %
=
��& '
new
��( +
MenuPrincipal
��, 9
(
��9 :
jugador
��: A
)
��A B
;
��B C
menuPrincipal
��
 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
this
��
 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
else
��
 
{
�� 

MessageBox
��
 
.
�� 
Show
�� 
(
�� 

Properties
�� $
.
��$ %
	Resources
��% .
.
��. /!
ms_JugadorConectado
��/ B
,
��B C

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y
	mb_Alerta
��Y b
)
��b c
;
��c d
}
�� 	
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� "
.
��" #
	Resources
��# ,
.
��, -!
mb_CuentaNoValidada
��- @
,
��@ A

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
	mb_Alerta
��W `
)
��` a
;
��a b
}
�� 
}
�� 
public
�� 

Boolean
�� #
ValidarDatosCompletos
�� (
(
��( )
string
��) /
nombre
��0 6
,
��6 7
string
��8 >
contrasenia
��? J
)
��J K
{
��L M
Boolean
�� 
validar
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
��	 

(
��
 
nombre
�� 
!=
�� 
null
�� 
&&
�� 
nombre
�� #
.
��# $
Length
��$ *
>
��+ ,
$num
��- .
)
��. /
&&
��0 2
(
�� 	
contrasenia
��	 
!=
�� 
null
�� 
&&
�� 
contrasenia
��  +
.
��+ ,
Length
��, 2
>
��3 4
$num
��5 6
)
��6 7
)
��7 8
{
��9 :
validar
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarNombreUsuario
�� '
(
��' (
string
��( .
nombre
��/ 5
)
��5 6
{
��7 8
Boolean
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
nombre
��  
.
��  !
Length
��! '
;
��' (
i
��) *
++
��* ,
)
��, -
{
��. /
if
�� 

(
�� 
!
�� 
(
�� 
(
�� 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� !
nombre
��" (
[
��( )
i
��) *
]
��* +
<=
��, .
$num
��/ 1
)
��1 2
||
��3 5
(
��
 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
nombre
�� $
[
��$ %
i
��% &
]
��& '
<=
��( *
$num
��+ .
)
��. /
||
��0 2
(
��
 
nombre
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
$num
�� 
&&
�� 
nombre
�� $
[
��$ %
i
��% &
]
��& '
<=
��( *
$num
��+ -
)
��- .
||
��/ 1
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
||
��  "
nombre
��# )
[
��) *
i
��* +
]
��+ ,
.
��, -
Equals
��- 3
(
��3 4
$char
��4 7
)
��7 8
||
��9 ;
nombre
��
 
[
�� 
i
�� 
]
�� 
.
�� 
Equals
�� 
(
�� 
$char
�� 
)
�� 
)
��  
)
��  !
{
��" #
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

string
�� 
ComputeSha256Hash
�� #
(
��# $
string
��$ *
rawData
��+ 2
)
��2 3
{
��4 5
using
�� 
(
�� 
SHA256
�� 

sha256Hash
�� 
=
��  
SHA256
��! '
.
��' (
Create
��( .
(
��. /
)
��/ 0
)
��0 1
{
��2 3
byte
�� 
[
�� 
]
�� 
bytes
�� 
=
�� 

sha256Hash
�� !
.
��! "
ComputeHash
��" -
(
��- .
Encoding
��. 6
.
��6 7
UTF8
��7 ;
.
��; <
GetBytes
��< D
(
��D E
rawData
��E L
)
��L M
)
��M N
;
��N O
StringBuilder
�� 
builder
�� 
=
�� 
new
��  #
StringBuilder
��$ 1
(
��1 2
)
��2 3
;
��3 4
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
bytes
�� !
.
��! "
Length
��" (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0
builder
��
 
.
�� 
Append
�� 
(
�� 
bytes
�� 
[
�� 
i
��  
]
��  !
.
��! "
ToString
��" *
(
��* +
$str
��+ /
)
��/ 0
)
��0 1
;
��1 2
}
�� 	
return
�� 
builder
�� 
.
�� 
ToString
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
}
�� 
}�� �
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str /
)/ 0
]0 1
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[   
assembly   	
:  	 

	ThemeInfo   
(   &
ResourceDictionaryLocation!! 
.!! 
None!! #
,!!# $&
ResourceDictionaryLocation$$ 
.$$ 
SourceAssembly$$ -
)'' 
]'' 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *