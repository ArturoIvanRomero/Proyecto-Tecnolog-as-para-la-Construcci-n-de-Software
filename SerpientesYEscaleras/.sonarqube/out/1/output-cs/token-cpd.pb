óG
öC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\CrearPartida.xaml.cs
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
}kk ¸å
îC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Espera.xaml.cs
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
ÄÄ 
.
ÄÄ 
EnviarMensaje
ÄÄ 
(
ÄÄ  
$str
ÄÄ  #
,
ÄÄ# $
Partida
ÄÄ% ,
.
ÄÄ, -
Nombre
ÄÄ- 3
)
ÄÄ3 4
;
ÄÄ4 5
ClienteChat
ÅÅ 
.
ÅÅ 
	SalirChat
ÅÅ 
(
ÅÅ 
Partida
ÅÅ #
.
ÅÅ# $
Nombre
ÅÅ$ *
)
ÅÅ* +
;
ÅÅ+ ,
MenuPrincipal
ÇÇ 
menuPrincipal
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '
MenuPrincipal
ÇÇ( 5
(
ÇÇ5 6
Jugador
ÇÇ6 =
)
ÇÇ= >
;
ÇÇ> ?
menuPrincipal
ÉÉ 
.
ÉÉ 
Show
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
Cerrar
ÑÑ 
=
ÑÑ 
false
ÑÑ 
;
ÑÑ 
this
ÖÖ 

.
ÖÖ
 
Close
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
private
çç 
void
çç 
Window_Closing
çç 
(
çç  
object
çç  &
sender
çç' -
,
çç- .
System
çç/ 5
.
çç5 6
ComponentModel
çç6 D
.
ççD E
CancelEventArgs
ççE T
e
ççU V
)
ççV W
{
ççX Y$
validarConectadoEspera
éé 
.
éé 
Stop
éé !
(
éé! "
)
éé" #
;
éé# $
if
èè 
(
èè	 

Cerrar
èè
 
)
èè 
{
èè 
ClientePartida
êê 
.
êê 
SalirPartida
êê #
(
êê# $
Jugador
êê$ +
,
êê+ ,
Partida
êê- 4
.
êê4 5
Nombre
êê5 ;
)
êê; <
;
êê< =
ClienteChat
ëë 
.
ëë 
EnviarMensaje
ëë !
(
ëë! "
$str
ëë" %
,
ëë% &
Partida
ëë' .
.
ëë. /
Nombre
ëë/ 5
)
ëë5 6
;
ëë6 7
ClienteChat
íí 
.
íí 
	SalirChat
íí 
(
íí 
Partida
íí %
.
íí% &
Nombre
íí& ,
)
íí, -
;
íí- .
clienteJugador
ìì 
.
ìì 
SalirDelJuego
ìì $
(
ìì$ %
Jugador
ìì% ,
)
ìì, -
;
ìì- .

MainWindow
îî 

mainWindow
îî 
=
îî 
new
îî  #

MainWindow
îî$ .
(
îî. /
)
îî/ 0
;
îî0 1

mainWindow
ïï 
.
ïï 
Show
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 
}
óó 
public
¢¢ 

Boolean
¢¢ 
ValidarMensaje
¢¢ !
(
¢¢! "
String
¢¢" (
mensaje
¢¢) 0
)
¢¢0 1
{
¢¢2 3
Boolean
££ 
validar
££ 
=
££ 
false
££ 
;
££ 
if
§§ 
(
§§	 

mensaje
§§
 
!=
§§ 
null
§§ 
&&
§§ 
mensaje
§§ $
.
§§$ %
Length
§§% +
>
§§, -
$num
§§. /
)
§§/ 0
{
§§1 2
for
•• 
(
•• 
int
•• 
i
•• 
=
•• 
$num
•• 
;
•• 
i
•• 
<
•• 
mensaje
•• #
.
••# $
Length
••$ *
;
••* +
i
••, -
++
••- /
)
••/ 0
{
••1 2
if
¶¶
 
(
¶¶ 
!
¶¶ 
mensaje
¶¶ 
[
¶¶ 
i
¶¶ 
]
¶¶ 
.
¶¶ 
Equals
¶¶  
(
¶¶  !
$char
¶¶! $
)
¶¶$ %
)
¶¶% &
{
¶¶' (
validar
ßß 
=
ßß 
true
ßß 
;
ßß 
break
®® 
;
®® 
}
©©
 
}
™™ 	
}
´´ 
return
¨¨ 
validar
¨¨ 
;
¨¨ 
}
≠≠ 
public
ππ 

Boolean
ππ &
ValidarCaracteresMensaje
ππ +
(
ππ+ ,
string
ππ, 2
mensaje
ππ3 :
)
ππ: ;
{
ππ< =
Boolean
∫∫ 
validar
∫∫ 
=
∫∫ 
true
∫∫ 
;
∫∫ 
for
ªª 	
(
ªª
 
int
ªª 
i
ªª 
=
ªª 
$num
ªª 
;
ªª 
i
ªª 
<
ªª 
mensaje
ªª !
.
ªª! "
Length
ªª" (
;
ªª( )
i
ªª* +
++
ªª+ -
)
ªª- .
{
ªª/ 0
if
ºº 

(
ºº 
!
ºº 
(
ºº 
(
ºº 
mensaje
ºº 
[
ºº 
i
ºº 
]
ºº 
>=
ºº 
$num
ºº 
&&
ºº  "
mensaje
ºº# *
[
ºº* +
i
ºº+ ,
]
ºº, -
<=
ºº. 0
$num
ºº1 3
)
ºº3 4
||
ºº5 7
(
ΩΩ
 
mensaje
ΩΩ 
[
ΩΩ 
i
ΩΩ 
]
ΩΩ 
>=
ΩΩ 
$num
ΩΩ 
&&
ΩΩ 
mensaje
ΩΩ &
[
ΩΩ& '
i
ΩΩ' (
]
ΩΩ( )
<=
ΩΩ* ,
$num
ΩΩ- 0
)
ΩΩ0 1
||
ΩΩ2 4
(
ææ
 
mensaje
ææ 
[
ææ 
i
ææ 
]
ææ 
>=
ææ 
$num
ææ 
&&
ææ 
mensaje
ææ &
[
ææ& '
i
ææ' (
]
ææ( )
<=
ææ* ,
$num
ææ- /
)
ææ/ 0
||
ææ1 3
mensaje
øø
 
[
øø 
i
øø 
]
øø 
.
øø 
Equals
øø 
(
øø 
$char
øø 
)
øø  
||
øø! #
mensaje
øø$ +
[
øø+ ,
i
øø, -
]
øø- .
.
øø. /
Equals
øø/ 5
(
øø5 6
$char
øø6 9
)
øø9 :
||
øø; =
mensaje
¿¿
 
[
¿¿ 
i
¿¿ 
]
¿¿ 
.
¿¿ 
Equals
¿¿ 
(
¿¿ 
$char
¿¿ 
)
¿¿  
||
¿¿! #
mensaje
¿¿$ +
[
¿¿+ ,
i
¿¿, -
]
¿¿- .
.
¿¿. /
Equals
¿¿/ 5
(
¿¿5 6
$char
¿¿6 9
)
¿¿9 :
||
¿¿; =
mensaje
¡¡
 
[
¡¡ 
i
¡¡ 
]
¡¡ 
.
¡¡ 
Equals
¡¡ 
(
¡¡ 
$char
¡¡ 
)
¡¡  
||
¡¡! #
mensaje
¡¡$ +
[
¡¡+ ,
i
¡¡, -
]
¡¡- .
.
¡¡. /
Equals
¡¡/ 5
(
¡¡5 6
$char
¡¡6 9
)
¡¡9 :
||
¡¡; =
mensaje
¬¬
 
[
¬¬ 
i
¬¬ 
]
¬¬ 
.
¬¬ 
Equals
¬¬ 
(
¬¬ 
$char
¬¬ 
)
¬¬  
||
¬¬! #
mensaje
¬¬$ +
[
¬¬+ ,
i
¬¬, -
]
¬¬- .
.
¬¬. /
Equals
¬¬/ 5
(
¬¬5 6
$char
¬¬6 9
)
¬¬9 :
||
¬¬; =
mensaje
√√
 
[
√√ 
i
√√ 
]
√√ 
.
√√ 
Equals
√√ 
(
√√ 
$char
√√ 
)
√√  
||
√√! #
mensaje
√√$ +
[
√√+ ,
i
√√, -
]
√√- .
.
√√. /
Equals
√√/ 5
(
√√5 6
$char
√√6 9
)
√√9 :
||
√√; =
mensaje
ƒƒ
 
[
ƒƒ 
i
ƒƒ 
]
ƒƒ 
.
ƒƒ 
Equals
ƒƒ 
(
ƒƒ 
$char
ƒƒ 
)
ƒƒ  
||
ƒƒ! #
mensaje
ƒƒ$ +
[
ƒƒ+ ,
i
ƒƒ, -
]
ƒƒ- .
.
ƒƒ. /
Equals
ƒƒ/ 5
(
ƒƒ5 6
$char
ƒƒ6 9
)
ƒƒ9 :
||
ƒƒ; =
mensaje
≈≈
 
[
≈≈ 
i
≈≈ 
]
≈≈ 
.
≈≈ 
Equals
≈≈ 
(
≈≈ 
$char
≈≈ 
)
≈≈  
)
≈≈  !
)
≈≈! "
{
≈≈# $
validar
∆∆
 
=
∆∆ 
false
∆∆ 
;
∆∆ 
break
««
 
;
«« 
}
»» 	
}
…… 
return
   
validar
   
;
   
}
ÀÀ 
private
–– 
void
––  
EnviarMensajeError
–– #
(
––# $
)
––$ %
{
––& ' 
MessageBoxTemporal
—— 
.
—— 
Show
—— 
(
—— 

Properties
—— (
.
——( )
	Resources
——) 2
.
——2 3"
mb_ConexionServidor3
——3 G
,
——G H

Properties
——I S
.
——S T
	Resources
——T ]
.
——] ^
	mb_Alerta
——^ g
,
——g h
$num
——i j
,
——j k
false
——l q
)
——q r
;
——r s
MenuPrincipal
““ 
menuPrincipal
““ !
=
““" #
new
““$ '
MenuPrincipal
““( 5
(
““5 6
Jugador
““6 =
)
““= >
;
““> ?
menuPrincipal
”” 
.
”” 
Show
”” 
(
”” 
)
”” 
;
”” 
Cerrar
‘‘ 
=
‘‘ 
false
‘‘ 
;
‘‘ 
this
’’ 

.
’’
 
Close
’’ 
(
’’ 
)
’’ 
;
’’ 
}
÷÷ 
}
◊◊ 
}ÿÿ ñH
õC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MessageBoxTemporal.cs
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
}rr »˘
ïC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Partida.xaml.cs
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

ChatClient	>> â
clienteChat
>>ä ï
,
>>ï ñ
Partidas
>>ó ü
partidas
>>† ®
,
>>® ©
Mensajes
>>™ ≤
mensajes
>>≥ ª
)
>>ª º
{
>>Ω æ
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
ÄÄ 
(
ÄÄ 
PartidaEnJuego
ÄÄ 
.
ÄÄ 
Turno
ÄÄ $
.
ÄÄ$ %
Equals
ÄÄ% +
(
ÄÄ+ ,
PartidaEnJuego
ÄÄ, :
.
ÄÄ: ;
JugadoresPartida
ÄÄ; K
.
ÄÄK L
	ElementAt
ÄÄL U
(
ÄÄU V
PartidaEnJuego
ÄÄV d
.
ÄÄd e
JugadoresPartida
ÄÄe u
.
ÄÄu v
Count
ÄÄv {
-
ÄÄ| }
$num
ÄÄ~ 
)ÄÄ Ä
.ÄÄÄ Å
ValueÄÄÅ Ü
.ÄÄÜ á
TurnoÄÄá å
.ÄÄå ç
NumeroTurnoÄÄç ò
)ÄÄò ô
)ÄÄô ö
{ÄÄõ ú
clientePartida
ÅÅ 
.
ÅÅ 
CambiarTurno
ÅÅ )
(
ÅÅ) *
PartidaEnJuego
ÅÅ* 8
.
ÅÅ8 9
Nombre
ÅÅ9 ?
,
ÅÅ? @ 
CalcularMovimiento
ÅÅA S
(
ÅÅS T
Convert
ÅÅT [
.
ÅÅ[ \
ToInt32
ÅÅ\ c
(
ÅÅc d
lb_Dado
ÅÅd k
.
ÅÅk l
Content
ÅÅl s
)
ÅÅs t
,
ÅÅt u
Jugador
ÅÅv }
,
ÅÅ} ~
PartidaEnJuegoÅÅ ç
)ÅÅç é
,ÅÅé è
$numÅÅê ë
)ÅÅë í
;ÅÅí ì
}
ÇÇ 
else
ÇÇ 
{
ÇÇ 
clientePartida
ÉÉ 
.
ÉÉ 
CambiarTurno
ÉÉ )
(
ÉÉ) *
PartidaEnJuego
ÉÉ* 8
.
ÉÉ8 9
Nombre
ÉÉ9 ?
,
ÉÉ? @ 
CalcularMovimiento
ÉÉA S
(
ÉÉS T
Convert
ÉÉT [
.
ÉÉ[ \
ToInt32
ÉÉ\ c
(
ÉÉc d
lb_Dado
ÉÉd k
.
ÉÉk l
Content
ÉÉl s
)
ÉÉs t
,
ÉÉt u
Jugador
ÉÉv }
,
ÉÉ} ~
PartidaEnJuegoÉÉ ç
)ÉÉç é
,ÉÉé è
PartidaEnJuegoÉÉê û
.ÉÉû ü
TurnoÉÉü §
+ÉÉ• ¶
$numÉÉß ®
)ÉÉ® ©
;ÉÉ© ™
}
ÑÑ 
clienteChat
ÖÖ 
.
ÖÖ "
EnviarMensajePartida
ÖÖ ,
(
ÖÖ, -
lb_Dado
ÖÖ- 4
.
ÖÖ4 5
Content
ÖÖ5 <
.
ÖÖ< =
ToString
ÖÖ= E
(
ÖÖE F
)
ÖÖF G
,
ÖÖG H
PartidaEnJuego
ÖÖI W
.
ÖÖW X
Nombre
ÖÖX ^
,
ÖÖ^ _
$num
ÖÖ` a
)
ÖÖa b
;
ÖÖb c
}
ÜÜ
 
else
ÜÜ 
{
ÜÜ 
MovimientoBonus
áá 
(
áá 
Convert
áá #
.
áá# $
ToInt32
áá$ +
(
áá+ ,
lb_Dado
áá, 3
.
áá3 4
Content
áá4 ;
)
áá; <
)
áá< =
;
áá= >
}
àà
 
}
ââ 	
catch
ââ
 
(
ââ $
CommunicationException
ââ '
)
ââ' (
{
ââ) * 
EnviarMensajeError
ää
 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
;
åå 
temporizadorTurno
çç 
.
çç 
Start
çç 
(
çç 
)
çç 
;
çç  
}
éé 
private
ïï 
void
ïï  
Bt_Abandonar_Click
ïï #
(
ïï# $
object
ïï$ *
sender
ïï+ 1
,
ïï1 2
RoutedEventArgs
ïï3 B
e
ïïC D
)
ïïD E
{
ïïF G
try
ññ 	
{
ññ
 
Jugador
óó 
.
óó 
Estadisticas
óó 
.
óó 
Puntos
óó #
=
óó$ %
Convert
óó& -
.
óó- .
ToInt16
óó. 5
(
óó5 6
Jugador
óó6 =
.
óó= >
Estadisticas
óó> J
.
óóJ K
Puntos
óóK Q
-
óóR S
$num
óóT W
)
óóW X
;
óóX Y
clienteJugador
òò 
.
òò #
ModificarEstadisticas
òò ,
(
òò, -
Jugador
òò- 4
.
òò4 5
NombreUsuario
òò5 B
,
òòB C
Jugador
òòD K
.
òòK L
Estadisticas
òòL X
.
òòX Y
Puntos
òòY _
,
òò_ `
Jugador
òòa h
.
òòh i
Estadisticas
òòi u
.
òòu v
	Victorias
òòv 
)òò Ä
;òòÄ Å
clientePartida
ôô 
.
ôô !
SalirPartidaEnJuego
ôô *
(
ôô* +
Jugador
ôô+ 2
,
ôô2 3
PartidaEnJuego
ôô4 B
.
ôôB C
Nombre
ôôC I
)
ôôI J
;
ôôJ K
clienteChat
öö 
.
öö "
EnviarMensajePartida
öö (
(
öö( )
$str
öö) +
,
öö+ ,
PartidaEnJuego
öö- ;
.
öö; <
Nombre
öö< B
,
ööB C
$num
ööD E
)
ööE F
;
ööF G
clienteChat
õõ 
.
õõ 
SalirChatPartida
õõ $
(
õõ$ %
PartidaEnJuego
õõ% 3
.
õõ3 4
Nombre
õõ4 :
)
õõ: ;
;
õõ; <
}
úú 
catch
úú 
(
úú $
CommunicationException
úú %
)
úú% &
{
úú' ( 
EnviarMensajeError
ùù 
(
ùù 
)
ùù 
;
ùù 
}
ûû 
cerrar
üü 
=
üü 
false
üü 
;
üü 
this
†† 

.
††
 
Close
†† 
(
†† 
)
†† 
;
†† 
}
°° 
private
®® 
void
®® 
Bt_Ayuda_Click
®® 
(
®®  
object
®®  &
sender
®®' -
,
®®- .
RoutedEventArgs
®®/ >
e
®®? @
)
®®@ A
{
®®B C

MessageBox
©© 
.
©© 
Show
©© 
(
©© 

Properties
©©  
.
©©  !
	Resources
©©! *
.
©©* +
mb_AyudaPartida
©©+ :
,
©©: ;

Properties
©©< F
.
©©F G
	Resources
©©G P
.
©©P Q
mb_Ayuda
©©Q Y
)
©©Y Z
;
©©Z [
}
™™ 
private
±± 
void
±± 
Bt_Enviar_Click
±±  
(
±±  !
object
±±! '
sender
±±( .
,
±±. /
RoutedEventArgs
±±0 ?
e
±±@ A
)
±±A B
{
±±C D
Espera
≤≤ 
espera
≤≤ 
=
≤≤ 
new
≤≤ 
Espera
≤≤  
(
≤≤  !
)
≤≤! "
;
≤≤" #
if
≥≥ 
(
≥≥	 

espera
≥≥
 
.
≥≥ 
ValidarMensaje
≥≥ 
(
≥≥  

tb_Mensaje
≥≥  *
.
≥≥* +
Text
≥≥+ /
)
≥≥/ 0
)
≥≥0 1
{
≥≥2 3
if
¥¥ 

(
¥¥ 
espera
¥¥ 
.
¥¥ &
ValidarCaracteresMensaje
¥¥ +
(
¥¥+ ,

tb_Mensaje
¥¥, 6
.
¥¥6 7
Text
¥¥7 ;
)
¥¥; <
)
¥¥< =
{
¥¥> ?
try
µµ
 
{
µµ 
clienteChat
∂∂ 
.
∂∂ "
EnviarMensajePartida
∂∂ ,
(
∂∂, -

tb_Mensaje
∂∂- 7
.
∂∂7 8
Text
∂∂8 <
,
∂∂< =
PartidaEnJuego
∂∂> L
.
∂∂L M
Nombre
∂∂M S
,
∂∂S T
$num
∂∂U V
)
∂∂V W
;
∂∂W X
}
∑∑
 
catch
∑∑ 
(
∑∑ $
CommunicationException
∑∑ )
)
∑∑) *
{
∑∑+ , 
EnviarMensajeError
∏∏ 
(
∏∏ 
)
∏∏  
;
∏∏  !
}
ππ
 
}
∫∫ 	
else
∫∫
 
{
∫∫ 

MessageBox
ªª
 
.
ªª 
Show
ªª 
(
ªª 

Properties
ªª $
.
ªª$ %
	Resources
ªª% .
.
ªª. /+
mb_CaracteresInvalidosMensaje
ªª/ L
,
ªªL M

Properties
ªªN X
.
ªªX Y
	Resources
ªªY b
.
ªªb c
mb_Ayuda
ªªc k
)
ªªk l
;
ªªl m
}
ºº 	
}
ΩΩ 

tb_Mensaje
ææ 
.
ææ 
Text
ææ 
=
ææ 
$str
ææ 
;
ææ 
}
øø 
private
∆∆ 
void
∆∆ 
Window_Closing
∆∆ 
(
∆∆  
object
∆∆  &
sender
∆∆' -
,
∆∆- .
System
∆∆/ 5
.
∆∆5 6
ComponentModel
∆∆6 D
.
∆∆D E
CancelEventArgs
∆∆E T
e
∆∆U V
)
∆∆V W
{
∆∆X Y
if
«« 
(
««	 

cerrar
««
 
)
«« 
{
«« 
e
»» 	
.
»»	 

Cancel
»»
 
=
»» 
true
»» 
;
»» 
}
…… 
else
…… 
{
…… %
validarConectadoPartida
   
.
    
Stop
    $
(
  $ %
)
  % &
;
  & '
MenuPrincipal
ÀÀ 
menuPrincipal
ÀÀ #
=
ÀÀ$ %
new
ÀÀ& )
MenuPrincipal
ÀÀ* 7
(
ÀÀ7 8
Jugador
ÀÀ8 ?
)
ÀÀ? @
;
ÀÀ@ A
menuPrincipal
ÃÃ 
.
ÃÃ 
Show
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
}
ÕÕ 
}
ŒŒ 
private
”” 
void
”” 
CargarTablero
”” 
(
”” 
)
””  
{
””! "
if
‘‘ 
(
‘‘	 

PartidaEnJuego
‘‘
 
.
‘‘ 

Dificultad
‘‘ #
.
‘‘# $
Equals
‘‘$ *
(
‘‘* +
$str
‘‘+ 2
)
‘‘2 3
||
‘‘4 6
PartidaEnJuego
‘‘7 E
.
‘‘E F

Dificultad
‘‘F P
.
‘‘P Q
Equals
‘‘Q W
(
‘‘W X
$str
‘‘X ^
)
‘‘^ _
)
‘‘_ `
{
‘‘a b
	i_Tablero
’’ 
.
’’ 
Source
’’ 
=
’’ 
new
’’ 
BitmapImage
’’ *
(
’’* +
new
’’+ .
Uri
’’/ 2
(
’’2 3
$str
’’3 V
,
’’V W
UriKind
’’X _
.
’’_ `
Relative
’’` h
)
’’h i
)
’’i j
;
’’j k
}
÷÷ 
else
÷÷ 
{
÷÷ 
if
◊◊ 

(
◊◊ 
PartidaEnJuego
◊◊ 
.
◊◊ 

Dificultad
◊◊ %
.
◊◊% &
Equals
◊◊& ,
(
◊◊, -
$str
◊◊- 6
)
◊◊6 7
||
◊◊8 :
PartidaEnJuego
◊◊; I
.
◊◊I J

Dificultad
◊◊J T
.
◊◊T U
Equals
◊◊U [
(
◊◊[ \
$str
◊◊\ b
)
◊◊b c
)
◊◊c d
{
◊◊e f
	i_Tablero
ÿÿ
 
.
ÿÿ 
Source
ÿÿ 
=
ÿÿ 
new
ÿÿ  
BitmapImage
ÿÿ! ,
(
ÿÿ, -
new
ÿÿ- 0
Uri
ÿÿ1 4
(
ÿÿ4 5
$str
ÿÿ5 Z
,
ÿÿZ [
UriKind
ÿÿ\ c
.
ÿÿc d
Relative
ÿÿd l
)
ÿÿl m
)
ÿÿm n
;
ÿÿn o
}
ŸŸ 	
}
⁄⁄ 
}
€€ 
public
ÁÁ 

Jugador
ÁÁ 
ObtenerTurno
ÁÁ 
(
ÁÁ  

Dictionary
ÁÁ  *
<
ÁÁ* +
object
ÁÁ+ 1
,
ÁÁ1 2
Jugador
ÁÁ3 :
>
ÁÁ: ;
jugadoresPartida
ÁÁ< L
,
ÁÁL M
Jugador
ÁÁN U
jugadorTurno
ÁÁV b
)
ÁÁb c
{
ÁÁd e
for
ËË 	
(
ËË
 
int
ËË 
i
ËË 
=
ËË 
$num
ËË 
;
ËË 
i
ËË 
<
ËË 
$num
ËË 
;
ËË 
i
ËË 
++
ËË  
)
ËË  !
{
ËË" #
if
ÈÈ 

(
ÈÈ 
jugadoresPartida
ÈÈ 
.
ÈÈ 
	ElementAt
ÈÈ &
(
ÈÈ& '
i
ÈÈ' (
)
ÈÈ( )
.
ÈÈ) *
Value
ÈÈ* /
.
ÈÈ/ 0
NombreUsuario
ÈÈ0 =
.
ÈÈ= >
Equals
ÈÈ> D
(
ÈÈD E
jugadorTurno
ÈÈE Q
.
ÈÈQ R
NombreUsuario
ÈÈR _
)
ÈÈ_ `
)
ÈÈ` a
{
ÈÈb c
jugadorTurno
ÍÍ
 
=
ÍÍ 
jugadoresPartida
ÍÍ )
.
ÍÍ) *
	ElementAt
ÍÍ* 3
(
ÍÍ3 4
i
ÍÍ4 5
)
ÍÍ5 6
.
ÍÍ6 7
Value
ÍÍ7 <
;
ÍÍ< =
lb_Turno
ÎÎ
 
.
ÎÎ 
Content
ÎÎ 
=
ÎÎ 
i
ÎÎ 
+
ÎÎ  
$num
ÎÎ! "
;
ÎÎ" #
break
ÏÏ
 
;
ÏÏ 
}
ÌÌ 	
}
ÓÓ 
switch
ÔÔ 
(
ÔÔ 
Convert
ÔÔ 
.
ÔÔ 
ToInt32
ÔÔ 
(
ÔÔ 
lb_Turno
ÔÔ &
.
ÔÔ& '
Content
ÔÔ' .
)
ÔÔ. /
)
ÔÔ/ 0
{
ÔÔ1 2
case
 
$num
 
:
 
i_Ficha
ÒÒ
 
.
ÒÒ 
Source
ÒÒ 
=
ÒÒ 
new
ÒÒ 
BitmapImage
ÒÒ *
(
ÒÒ* +
new
ÒÒ+ .
Uri
ÒÒ/ 2
(
ÒÒ2 3
$str
ÒÒ3 P
,
ÒÒP Q
UriKind
ÒÒR Y
.
ÒÒY Z
Relative
ÒÒZ b
)
ÒÒb c
)
ÒÒc d
;
ÒÒd e
break
ÚÚ
 
;
ÚÚ 
case
ÛÛ 
$num
ÛÛ 
:
ÛÛ 
i_Ficha
ÙÙ
 
.
ÙÙ 
Source
ÙÙ 
=
ÙÙ 
new
ÙÙ 
BitmapImage
ÙÙ *
(
ÙÙ* +
new
ÙÙ+ .
Uri
ÙÙ/ 2
(
ÙÙ2 3
$str
ÙÙ3 P
,
ÙÙP Q
UriKind
ÙÙR Y
.
ÙÙY Z
Relative
ÙÙZ b
)
ÙÙb c
)
ÙÙc d
;
ÙÙd e
break
ıı
 
;
ıı 
case
ˆˆ 
$num
ˆˆ 
:
ˆˆ 
i_Ficha
˜˜
 
.
˜˜ 
Source
˜˜ 
=
˜˜ 
new
˜˜ 
BitmapImage
˜˜ *
(
˜˜* +
new
˜˜+ .
Uri
˜˜/ 2
(
˜˜2 3
$str
˜˜3 P
,
˜˜P Q
UriKind
˜˜R Y
.
˜˜Y Z
Relative
˜˜Z b
)
˜˜b c
)
˜˜c d
;
˜˜d e
break
¯¯
 
;
¯¯ 
case
˘˘ 
$num
˘˘ 
:
˘˘ 
i_Ficha
˙˙
 
.
˙˙ 
Source
˙˙ 
=
˙˙ 
new
˙˙ 
BitmapImage
˙˙ *
(
˙˙* +
new
˙˙+ .
Uri
˙˙/ 2
(
˙˙2 3
$str
˙˙3 P
,
˙˙P Q
UriKind
˙˙R Y
.
˙˙Y Z
Relative
˙˙Z b
)
˙˙b c
)
˙˙c d
;
˙˙d e
break
˚˚
 
;
˚˚ 
}
¸¸ 
return
˝˝ 
jugadorTurno
˝˝ 
;
˝˝ 
}
˛˛ 
private
ÉÉ 
void
ÉÉ 
CargarBonus
ÉÉ 
(
ÉÉ 
)
ÉÉ 
{
ÉÉ  
for
ÑÑ 	
(
ÑÑ
 
int
ÑÑ 
i
ÑÑ 
=
ÑÑ 
$num
ÑÑ 
;
ÑÑ 
i
ÑÑ 
<
ÑÑ 
$num
ÑÑ 
;
ÑÑ 
i
ÑÑ  
++
ÑÑ  "
)
ÑÑ" #
{
ÑÑ$ %
if
ÖÖ 

(
ÖÖ 
PartidaEnJuego
ÖÖ 
.
ÖÖ 
Tablero
ÖÖ "
.
ÖÖ" #
Casillas
ÖÖ# +
[
ÖÖ+ ,
i
ÖÖ, -
]
ÖÖ- .
.
ÖÖ. /
Bonus
ÖÖ/ 4
)
ÖÖ4 5
{
ÖÖ6 7
i_Bonus1
ÜÜ
 
.
ÜÜ 
Margin
ÜÜ 
=
ÜÜ 
new
ÜÜ 
	Thickness
ÜÜ  )
(
ÜÜ) *
PartidaEnJuego
ÜÜ* 8
.
ÜÜ8 9
Tablero
ÜÜ9 @
.
ÜÜ@ A
Casillas
ÜÜA I
[
ÜÜI J
i
ÜÜJ K
]
ÜÜK L
.
ÜÜL M
	PosicionX
ÜÜM V
,
ÜÜV W
$num
ÜÜX Y
,
ÜÜY Z
$num
ÜÜ[ \
,
ÜÜ\ ]
PartidaEnJuego
ÜÜ^ l
.
ÜÜl m
Tablero
ÜÜm t
.
ÜÜt u
Casillas
ÜÜu }
[
ÜÜ} ~
i
ÜÜ~ 
]ÜÜ Ä
.ÜÜÄ Å
	PosicionYÜÜÅ ä
-ÜÜã å
$numÜÜç è
)ÜÜè ê
;ÜÜê ë
break
áá
 
;
áá 
}
àà 	
}
ââ 
for
ää 	
(
ää
 
int
ää 
i
ää 
=
ää 
$num
ää 
;
ää 
i
ää 
<
ää 
$num
ää 
;
ää 
i
ää  
++
ää  "
)
ää" #
{
ää$ %
if
ãã 

(
ãã 
PartidaEnJuego
ãã 
.
ãã 
Tablero
ãã "
.
ãã" #
Casillas
ãã# +
[
ãã+ ,
i
ãã, -
]
ãã- .
.
ãã. /
Bonus
ãã/ 4
)
ãã4 5
{
ãã6 7
i_Bonus2
åå
 
.
åå 
Margin
åå 
=
åå 
new
åå 
	Thickness
åå  )
(
åå) *
PartidaEnJuego
åå* 8
.
åå8 9
Tablero
åå9 @
.
åå@ A
Casillas
ååA I
[
ååI J
i
ååJ K
]
ååK L
.
ååL M
	PosicionX
ååM V
,
ååV W
$num
ååX Y
,
ååY Z
$num
åå[ \
,
åå\ ]
PartidaEnJuego
åå^ l
.
åål m
Tablero
ååm t
.
ååt u
Casillas
ååu }
[
åå} ~
i
åå~ 
]åå Ä
.ååÄ Å
	PosicionYååÅ ä
-ååã å
$numååç è
)ååè ê
;ååê ë
break
çç
 
;
çç 
}
éé 	
}
èè 
for
êê 	
(
êê
 
int
êê 
i
êê 
=
êê 
$num
êê 
;
êê 
i
êê 
<
êê 
$num
êê 
;
êê 
i
êê  
++
êê  "
)
êê" #
{
êê$ %
if
ëë 

(
ëë 
PartidaEnJuego
ëë 
.
ëë 
Tablero
ëë "
.
ëë" #
Casillas
ëë# +
[
ëë+ ,
i
ëë, -
]
ëë- .
.
ëë. /
Bonus
ëë/ 4
)
ëë4 5
{
ëë6 7
i_Bonus3
íí
 
.
íí 
Margin
íí 
=
íí 
new
íí 
	Thickness
íí  )
(
íí) *
PartidaEnJuego
íí* 8
.
íí8 9
Tablero
íí9 @
.
íí@ A
Casillas
ííA I
[
ííI J
i
ííJ K
]
ííK L
.
ííL M
	PosicionX
ííM V
,
ííV W
$num
ííX Y
,
ííY Z
$num
íí[ \
,
íí\ ]
PartidaEnJuego
íí^ l
.
ííl m
Tablero
íím t
.
íít u
Casillas
ííu }
[
íí} ~
i
íí~ 
]íí Ä
.ííÄ Å
	PosicionYííÅ ä
-ííã å
$numííç è
)ííè ê
;ííê ë
break
ìì
 
;
ìì 
}
îî 	
}
ïï 
for
ññ 	
(
ññ
 
int
ññ 
i
ññ 
=
ññ 
$num
ññ 
;
ññ 
i
ññ 
<
ññ 
$num
ññ 
;
ññ 
i
ññ  
++
ññ  "
)
ññ" #
{
ññ$ %
if
óó 

(
óó 
PartidaEnJuego
óó 
.
óó 
Tablero
óó "
.
óó" #
Casillas
óó# +
[
óó+ ,
i
óó, -
]
óó- .
.
óó. /
Bonus
óó/ 4
)
óó4 5
{
óó6 7
i_Bonus4
òò
 
.
òò 
Margin
òò 
=
òò 
new
òò 
	Thickness
òò  )
(
òò) *
PartidaEnJuego
òò* 8
.
òò8 9
Tablero
òò9 @
.
òò@ A
Casillas
òòA I
[
òòI J
i
òòJ K
]
òòK L
.
òòL M
	PosicionX
òòM V
,
òòV W
$num
òòX Y
,
òòY Z
$num
òò[ \
,
òò\ ]
PartidaEnJuego
òò^ l
.
òòl m
Tablero
òòm t
.
òòt u
Casillas
òòu }
[
òò} ~
i
òò~ 
]òò Ä
.òòÄ Å
	PosicionYòòÅ ä
-òòã å
$numòòç è
)òòè ê
;òòê ë
break
ôô
 
;
ôô 
}
öö 	
}
õõ 
}
úú 
public
°° 

void
°° 
ActivarDado
°° 
(
°° 
)
°° 
{
°° 
bt_Dado
¢¢ 
.
¢¢ 
	IsEnabled
¢¢ 
=
¢¢ 
true
¢¢ 
;
¢¢ 
temporizador
££ 
=
££ 
new
££ 
DispatcherTimer
££ (
(
££( )
)
££) *
;
££* +
temporizador
§§ 
.
§§ 
Interval
§§ 
=
§§ 
new
§§ !
TimeSpan
§§" *
(
§§* +
$num
§§+ ,
,
§§, -
$num
§§. /
,
§§/ 0
$num
§§1 2
)
§§2 3
;
§§3 4
temporizador
•• 
.
•• 
Tick
•• 
+=
•• 
(
•• 
a
•• 
,
•• 
b
••  
)
••  !
=>
••" $
{
••% &
	lb_Tiempo
¶¶ 
.
¶¶ 
Content
¶¶ 
=
¶¶ 
Convert
¶¶ #
.
¶¶# $
ToInt32
¶¶$ +
(
¶¶+ ,
	lb_Tiempo
¶¶, 5
.
¶¶5 6
Content
¶¶6 =
)
¶¶= >
-
¶¶? @
$num
¶¶A B
;
¶¶B C
if
ßß 

(
ßß 
	lb_Tiempo
ßß 
.
ßß 
Content
ßß 
.
ßß 
Equals
ßß $
(
ßß$ %
$num
ßß% &
)
ßß& '
)
ßß' (
{
ßß) *
TurnoPerdido
®®
 
(
®® 
)
®® 
;
®® 
temporizador
©©
 
.
©© 
Stop
©© 
(
©© 
)
©© 
;
©© 
}
™™ 	
}
´´ 
;
´´ 
temporizador
¨¨ 
.
¨¨ 
Start
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 
private
≤≤ 
void
≤≤ 
TurnoPerdido
≤≤ 
(
≤≤ 
)
≤≤ 
{
≤≤  !
bt_Dado
≥≥ 
.
≥≥ 
	IsEnabled
≥≥ 
=
≥≥ 
false
≥≥ 
;
≥≥  
	lb_Tiempo
¥¥ 
.
¥¥ 
Content
¥¥ 
=
¥¥ 
$num
¥¥ 
;
¥¥ 
try
µµ 	
{
µµ
 
if
∂∂ 

(
∂∂ 
!
∂∂ 
bonus
∂∂ 
)
∂∂ 
{
∂∂ 
if
∑∑
 
(
∑∑ 
PartidaEnJuego
∑∑ 
.
∑∑ 
Turno
∑∑ "
.
∑∑" #
Equals
∑∑# )
(
∑∑) *
PartidaEnJuego
∑∑* 8
.
∑∑8 9
JugadoresPartida
∑∑9 I
.
∑∑I J
	ElementAt
∑∑J S
(
∑∑S T
PartidaEnJuego
∑∑T b
.
∑∑b c
JugadoresPartida
∑∑c s
.
∑∑s t
Count
∑∑t y
-
∑∑z {
$num
∑∑| }
)
∑∑} ~
.
∑∑~ 
Value∑∑ Ñ
.∑∑Ñ Ö
Turno∑∑Ö ä
.∑∑ä ã
NumeroTurno∑∑ã ñ
)∑∑ñ ó
)∑∑ó ò
{∑∑ô ö
clientePartida
∏∏ 
.
∏∏ 
CambiarTurno
∏∏ '
(
∏∏' (
PartidaEnJuego
∏∏( 6
.
∏∏6 7
Nombre
∏∏7 =
,
∏∏= >
$num
∏∏? @
,
∏∏@ A
$num
∏∏B C
)
∏∏C D
;
∏∏D E
}
ππ
 
else
ππ 
{
ππ 
clientePartida
∫∫ 
.
∫∫ 
CambiarTurno
∫∫ '
(
∫∫' (
PartidaEnJuego
∫∫( 6
.
∫∫6 7
Nombre
∫∫7 =
,
∫∫= >
$num
∫∫? @
,
∫∫@ A
PartidaEnJuego
∫∫B P
.
∫∫P Q
Turno
∫∫Q V
+
∫∫W X
$num
∫∫Y Z
)
∫∫Z [
;
∫∫[ \
}
ªª
 
}
ºº 	
clienteChat
ΩΩ 
.
ΩΩ "
EnviarMensajePartida
ΩΩ (
(
ΩΩ( )
$str
ΩΩ) +
,
ΩΩ+ ,
PartidaEnJuego
ΩΩ- ;
.
ΩΩ; <
Nombre
ΩΩ< B
,
ΩΩB C
$num
ΩΩD E
)
ΩΩE F
;
ΩΩF G
}
ææ 
catch
ææ 
(
ææ $
CommunicationException
ææ %
)
ææ% &
{
ææ' ( 
EnviarMensajeError
øø 
(
øø 
)
øø 
;
øø 
}
¿¿ 
}
¡¡ 
public
““ 

int
““  
CalcularMovimiento
““ !
(
““! "
int
““" %

numeroDado
““& 0
,
““0 1
Jugador
““2 9
jugadorMovimiento
““: K
,
““K L

ServiceSYE
““M W
.
““W X
Partida
““X _
partidaJugando
““` n
)
““n o
{
““p q
int
”” 	

movimiento
””
 
;
”” 
if
‘‘ 
(
‘‘	 

jugadorMovimiento
‘‘
 
.
‘‘ 
Turno
‘‘ !
.
‘‘! "
Casilla
‘‘" )
.
‘‘) *
Numero
‘‘* 0
+
‘‘1 2

numeroDado
‘‘3 =
>
‘‘> ?
$num
‘‘@ C
)
‘‘C D
{
‘‘E F

movimiento
’’ 
=
’’ 
$num
’’ 
-
’’ 
(
’’ 
jugadorMovimiento
’’ -
.
’’- .
Turno
’’. 3
.
’’3 4
Casilla
’’4 ;
.
’’; <
Numero
’’< B
+
’’C D

numeroDado
’’E O
-
’’P Q
$num
’’R U
)
’’U V
;
’’V W
}
÷÷ 
else
÷÷ 
{
÷÷ 

movimiento
◊◊ 
=
◊◊ 
jugadorMovimiento
◊◊ &
.
◊◊& '
Turno
◊◊' ,
.
◊◊, -
Casilla
◊◊- 4
.
◊◊4 5
Numero
◊◊5 ;
+
◊◊< =

numeroDado
◊◊> H
;
◊◊H I
}
ÿÿ 
jugadorMovimiento
ŸŸ 
.
ŸŸ 
Turno
ŸŸ 
.
ŸŸ 
Casilla
ŸŸ %
=
ŸŸ& '
partidaJugando
ŸŸ( 6
.
ŸŸ6 7
Tablero
ŸŸ7 >
.
ŸŸ> ?
Casillas
ŸŸ? G
[
ŸŸG H

movimiento
ŸŸH R
-
ŸŸS T
$num
ŸŸU V
]
ŸŸV W
;
ŸŸW X
return
⁄⁄ 

movimiento
⁄⁄ 
;
⁄⁄ 
}
€€ 
public
ÁÁ 

void
ÁÁ "
DeterminarMovimiento
ÁÁ $
(
ÁÁ$ %
String
ÁÁ% +
nombreUsuario
ÁÁ, 9
,
ÁÁ9 :
String
ÁÁ; A
mensaje
ÁÁB I
)
ÁÁI J
{
ÁÁK L
try
ËË 	
{
ËË
 
PartidaEnJuego
ÈÈ 
=
ÈÈ 
clientePartida
ÈÈ '
.
ÈÈ' (
ObtenerPartida
ÈÈ( 6
(
ÈÈ6 7
PartidaEnJuego
ÈÈ7 E
.
ÈÈE F
Nombre
ÈÈF L
)
ÈÈL M
;
ÈÈM N
if
ÍÍ 

(
ÍÍ 
bonus
ÍÍ 
&&
ÍÍ 
mensaje
ÍÍ 
.
ÍÍ 
Equals
ÍÍ #
(
ÍÍ# $
$str
ÍÍ$ '
)
ÍÍ' (
)
ÍÍ( )
{
ÍÍ* +
CambiarTurno
ÎÎ
 
(
ÎÎ 
nombreUsuario
ÎÎ $
)
ÎÎ$ %
;
ÎÎ% &
}
ÏÏ 	
else
ÏÏ
 
{
ÏÏ 
lb_Dado
ÌÌ
 
.
ÌÌ 
Content
ÌÌ 
=
ÌÌ 
$str
ÌÌ 
;
ÌÌ 

ServiceSYE
ÓÓ
 
.
ÓÓ 
Jugador
ÓÓ 
jugadorMovimiento
ÓÓ .
=
ÓÓ/ 0)
DeterminarJugadorMovimiento
ÓÓ1 L
(
ÓÓL M
nombreUsuario
ÓÓM Z
)
ÓÓZ [
;
ÓÓ[ \

MoverFicha
ÔÔ
 
(
ÔÔ 
jugadorMovimiento
ÔÔ &
)
ÔÔ& '
;
ÔÔ' (
if

 
(
 
jugadorMovimiento
 
.
  
Turno
  %
.
% &
Casilla
& -
.
- .

Movimiento
. 8
!=
9 ;
$num
< =
)
= >
{
? @*
MoverFichaSerpienteOEscalera
ÒÒ (
(
ÒÒ( )
jugadorMovimiento
ÒÒ) :
)
ÒÒ: ;
;
ÒÒ; <
}
ÚÚ
 
else
ÚÚ 
{
ÚÚ 
if
ÛÛ 
(
ÛÛ 
jugadorMovimiento
ÛÛ !
.
ÛÛ! "
Turno
ÛÛ" '
.
ÛÛ' (
Casilla
ÛÛ( /
.
ÛÛ/ 0
Bonus
ÛÛ0 5
)
ÛÛ5 6
{
ÛÛ7 8
bonus
ÙÙ 
=
ÙÙ 
true
ÙÙ 
;
ÙÙ 

TirarBonus
ıı 
(
ıı 
jugadorMovimiento
ıı *
)
ıı* +
;
ıı+ ,
}
ˆˆ 
else
ˆˆ 
{
ˆˆ 
CambiarTurno
˜˜ 
(
˜˜ 
nombreUsuario
˜˜ (
)
˜˜( )
;
˜˜) *
}
¯¯ 
}
˘˘
 
}
˙˙ 	
}
˚˚ 
catch
˚˚ 
(
˚˚ $
CommunicationException
˚˚ %
)
˚˚% &
{
˚˚' ( 
EnviarMensajeError
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 
public
ââ 

Jugador
ââ )
DeterminarJugadorMovimiento
ââ .
(
ââ. /
String
ââ/ 5
nombreUsuario
ââ6 C
)
ââC D
{
ââE F

ServiceSYE
ää 
.
ää 
Jugador
ää 
jugadorMovimiento
ää *
=
ää+ ,
new
ää- 0

ServiceSYE
ää1 ;
.
ää; <
Jugador
ää< C
(
ääC D
)
ääD E
;
ääE F
for
ãã 	
(
ãã
 
int
ãã 
i
ãã 
=
ãã 
$num
ãã 
;
ãã 
i
ãã 
<
ãã 
PartidaEnJuego
ãã (
.
ãã( )
JugadoresPartida
ãã) 9
.
ãã9 :
Count
ãã: ?
;
ãã? @
i
ããA B
++
ããB D
)
ããD E
{
ããF G
if
åå 

(
åå 
PartidaEnJuego
åå 
.
åå 
JugadoresPartida
åå +
.
åå+ ,
	ElementAt
åå, 5
(
åå5 6
i
åå6 7
)
åå7 8
.
åå8 9
Value
åå9 >
.
åå> ?
NombreUsuario
åå? L
.
ååL M
Equals
ååM S
(
ååS T
nombreUsuario
ååT a
)
ååa b
)
ååb c
{
ååd e
jugadorMovimiento
çç
 
=
çç 
PartidaEnJuego
çç ,
.
çç, -
JugadoresPartida
çç- =
.
çç= >
	ElementAt
çç> G
(
ççG H
i
ççH I
)
ççI J
.
ççJ K
Value
ççK P
;
ççP Q
}
éé 	
}
èè 
return
êê 
jugadorMovimiento
êê 
;
êê 
}
ëë 
private
ôô 
void
ôô 

MoverFicha
ôô 
(
ôô 
Jugador
ôô #
jugadorMovimiento
ôô$ 5
)
ôô5 6
{
ôô7 8
switch
öö 
(
öö 
jugadorMovimiento
öö 
.
öö  
Turno
öö  %
.
öö% &
NumeroTurno
öö& 1
)
öö1 2
{
öö3 4
case
õõ 
$num
õõ 
:
õõ 
i_Ficha1
úú
 
.
úú 
Margin
úú 
=
úú 
new
úú 
	Thickness
úú  )
(
úú) *
jugadorMovimiento
úú* ;
.
úú; <
Turno
úú< A
.
úúA B
Casilla
úúB I
.
úúI J
	PosicionX
úúJ S
+
úúT U
$num
úúV X
,
úúX Y
$num
úúZ [
,
úú[ \
$num
úú] ^
,
úú^ _
jugadorMovimiento
úú` q
.
úúq r
Turno
úúr w
.
úúw x
Casilla
úúx 
.úú Ä
	PosicionYúúÄ â
-úúä ã
$numúúå é
)úúé è
;úúè ê
break
ùù
 
;
ùù 
case
ûû 
$num
ûû 
:
ûû 
i_Ficha2
üü
 
.
üü 
Margin
üü 
=
üü 
new
üü 
	Thickness
üü  )
(
üü) *
jugadorMovimiento
üü* ;
.
üü; <
Turno
üü< A
.
üüA B
Casilla
üüB I
.
üüI J
	PosicionX
üüJ S
,
üüS T
$num
üüU V
,
üüV W
$num
üüX Y
,
üüY Z
jugadorMovimiento
üü[ l
.
üül m
Turno
üüm r
.
üür s
Casilla
üüs z
.
üüz {
	PosicionYüü{ Ñ
)üüÑ Ö
;üüÖ Ü
break
††
 
;
†† 
case
°° 
$num
°° 
:
°° 
i_Ficha3
¢¢
 
.
¢¢ 
Margin
¢¢ 
=
¢¢ 
new
¢¢ 
	Thickness
¢¢  )
(
¢¢) *
jugadorMovimiento
¢¢* ;
.
¢¢; <
Turno
¢¢< A
.
¢¢A B
Casilla
¢¢B I
.
¢¢I J
	PosicionX
¢¢J S
,
¢¢S T
$num
¢¢U V
,
¢¢V W
$num
¢¢X Y
,
¢¢Y Z
jugadorMovimiento
¢¢[ l
.
¢¢l m
Turno
¢¢m r
.
¢¢r s
Casilla
¢¢s z
.
¢¢z {
	PosicionY¢¢{ Ñ
-¢¢Ö Ü
$num¢¢á â
)¢¢â ä
;¢¢ä ã
break
££
 
;
££ 
case
§§ 
$num
§§ 
:
§§ 
i_Ficha4
••
 
.
•• 
Margin
•• 
=
•• 
new
•• 
	Thickness
••  )
(
••) *
jugadorMovimiento
••* ;
.
••; <
Turno
••< A
.
••A B
Casilla
••B I
.
••I J
	PosicionX
••J S
+
••T U
$num
••V X
,
••X Y
$num
••Z [
,
••[ \
$num
••] ^
,
••^ _
jugadorMovimiento
••` q
.
••q r
Turno
••r w
.
••w x
Casilla
••x 
.•• Ä
	PosicionY••Ä â
)••â ä
;••ä ã
break
¶¶
 
;
¶¶ 
}
ßß 
}
®® 
private
∞∞ 
void
∞∞ *
MoverFichaSerpienteOEscalera
∞∞ -
(
∞∞- .

ServiceSYE
∞∞. 8
.
∞∞8 9
Jugador
∞∞9 @
jugadorMovimiento
∞∞A R
)
∞∞R S
{
∞∞T U
try
±± 	
{
±±
 
if
≤≤ 

(
≤≤ 
jugadorMovimiento
≤≤ 
.
≤≤ 
NombreUsuario
≤≤ +
.
≤≤+ ,
Equals
≤≤, 2
(
≤≤2 3
Jugador
≤≤3 :
.
≤≤: ;
NombreUsuario
≤≤; H
)
≤≤H I
)
≤≤I J
{
≤≤K L
Jugador
≥≥
 
.
≥≥ 
Turno
≥≥ 
.
≥≥ 
Casilla
≥≥ 
=
≥≥  !
PartidaEnJuego
≥≥" 0
.
≥≥0 1
Tablero
≥≥1 8
.
≥≥8 9
Casillas
≥≥9 A
[
≥≥A B
jugadorMovimiento
≥≥B S
.
≥≥S T
Turno
≥≥T Y
.
≥≥Y Z
Casilla
≥≥Z a
.
≥≥a b
Numero
≥≥b h
+
≥≥i j
jugadorMovimiento
≥≥k |
.
≥≥| }
Turno≥≥} Ç
.≥≥Ç É
Casilla≥≥É ä
.≥≥ä ã

Movimiento≥≥ã ï
-≥≥ñ ó
$num≥≥ò ô
]≥≥ô ö
;≥≥ö õ
clientePartida
¥¥
 
.
¥¥  
MovimientoEspecial
¥¥ +
(
¥¥+ ,
PartidaEnJuego
¥¥, :
.
¥¥: ;
Nombre
¥¥; A
,
¥¥A B
Jugador
¥¥C J
.
¥¥J K
Turno
¥¥K P
.
¥¥P Q
Casilla
¥¥Q X
.
¥¥X Y
Numero
¥¥Y _
)
¥¥_ `
;
¥¥` a
}
µµ 	
DispatcherTimer
∂∂ $
temporizadorMovimiento
∂∂ .
=
∂∂/ 0
new
∂∂1 4
DispatcherTimer
∂∂5 D
(
∂∂D E
)
∂∂E F
;
∂∂F G$
temporizadorMovimiento
∑∑ 
.
∑∑ 
Interval
∑∑ '
=
∑∑( )
new
∑∑* -
TimeSpan
∑∑. 6
(
∑∑6 7
$num
∑∑7 8
,
∑∑8 9
$num
∑∑: ;
,
∑∑; <
$num
∑∑= >
)
∑∑> ?
;
∑∑? @$
temporizadorMovimiento
∏∏ 
.
∏∏ 
Tick
∏∏ #
+=
∏∏$ &
(
∏∏' (
a
∏∏( )
,
∏∏) *
b
∏∏+ ,
)
∏∏, -
=>
∏∏. 0
{
∏∏1 2$
temporizadorMovimiento
ππ
  
.
ππ  !
Stop
ππ! %
(
ππ% &
)
ππ& '
;
ππ' (
try
∫∫
 
{
∫∫ 
PartidaEnJuego
ªª 
=
ªª 
clientePartida
ªª +
.
ªª+ ,
ObtenerPartida
ªª, :
(
ªª: ;
PartidaEnJuego
ªª; I
.
ªªI J
Nombre
ªªJ P
)
ªªP Q
;
ªªQ R"
DeterminarMovimiento
ºº  
(
ºº  !
jugadorMovimiento
ºº! 2
.
ºº2 3
NombreUsuario
ºº3 @
,
ºº@ A
$str
ººB D
)
ººD E
;
ººE F
}
ΩΩ
 
catch
ΩΩ 
(
ΩΩ $
CommunicationException
ΩΩ )
)
ΩΩ) *
{
ΩΩ+ , 
EnviarMensajeError
ææ 
(
ææ 
)
ææ  
;
ææ  !
}
øø
 
}
¿¿ 	
;
¿¿	 
$
temporizadorMovimiento
¡¡ 
.
¡¡ 
Start
¡¡ $
(
¡¡$ %
)
¡¡% &
;
¡¡& '
}
¬¬ 
catch
¬¬ 
(
¬¬ $
CommunicationException
¬¬ %
)
¬¬% &
{
¬¬' ( 
EnviarMensajeError
√√ 
(
√√ 
)
√√ 
;
√√ 
}
ƒƒ 
}
≈≈ 
private
ÕÕ 
void
ÕÕ 

TirarBonus
ÕÕ 
(
ÕÕ 

ServiceSYE
ÕÕ &
.
ÕÕ& '
Jugador
ÕÕ' .
jugadorMovimiento
ÕÕ/ @
)
ÕÕ@ A
{
ÕÕB C
if
ŒŒ 
(
ŒŒ	 

jugadorMovimiento
ŒŒ
 
.
ŒŒ 
NombreUsuario
ŒŒ )
.
ŒŒ) *
Equals
ŒŒ* 0
(
ŒŒ0 1
Jugador
ŒŒ1 8
.
ŒŒ8 9
NombreUsuario
ŒŒ9 F
)
ŒŒF G
)
ŒŒG H
{
ŒŒI J
DispatcherTimer
œœ 
temporizadorBonus
œœ )
=
œœ) *
new
œœ+ .
DispatcherTimer
œœ/ >
(
œœ> ?
)
œœ? @
;
œœ@ A
temporizadorBonus
–– 
.
–– 
Interval
–– "
=
––# $
new
––% (
TimeSpan
––) 1
(
––1 2
$num
––2 3
,
––3 4
$num
––5 6
,
––6 7
$num
––8 9
)
––9 :
;
––: ;
temporizadorBonus
—— 
.
—— 
Tick
—— 
+=
—— !
(
——" #
a
——# $
,
——$ %
b
——& '
)
——' (
=>
——) +
{
——, -
temporizadorBonus
““
 
.
““ 
Stop
““  
(
““  !
)
““! "
;
““" #
try
””
 
{
”” 
clienteChat
‘‘ 
.
‘‘ "
EnviarMensajePartida
‘‘ ,
(
‘‘, -
$str
‘‘- /
,
‘‘/ 0
PartidaEnJuego
‘‘1 ?
.
‘‘? @
Nombre
‘‘@ F
,
‘‘F G
$num
‘‘H I
)
‘‘I J
;
‘‘J K
}
’’
 
catch
’’ 
(
’’ $
CommunicationException
’’ )
)
’’) *
{
’’+ , 
EnviarMensajeError
÷÷ 
(
÷÷ 
)
÷÷  
;
÷÷  !
}
◊◊
 
}
ÿÿ 	
;
ÿÿ	 

temporizadorBonus
ŸŸ 
.
ŸŸ 
Start
ŸŸ 
(
ŸŸ  
)
ŸŸ  !
;
ŸŸ! "
}
⁄⁄ 
}
€€ 
private
„„ 
void
„„ 
MovimientoBonus
„„  
(
„„  !
int
„„! $

numeroDado
„„% /
)
„„/ 0
{
„„1 2
try
‰‰ 	
{
‰‰
 
switch
ÂÂ 
(
ÂÂ 

numeroDado
ÂÂ 
)
ÂÂ 
{
ÂÂ 
case
ÊÊ
 
$num
ÊÊ 
:
ÊÊ 
Jugador
ÁÁ 
.
ÁÁ 
Turno
ÁÁ 
.
ÁÁ 
Casilla
ÁÁ !
=
ÁÁ" #
PartidaEnJuego
ÁÁ$ 2
.
ÁÁ2 3
Tablero
ÁÁ3 :
.
ÁÁ: ;
Casillas
ÁÁ; C
[
ÁÁC D
$num
ÁÁD E
]
ÁÁE F
;
ÁÁF G
clientePartida
ËË 
.
ËË  
MovimientoEspecial
ËË -
(
ËË- .
PartidaEnJuego
ËË. <
.
ËË< =
Nombre
ËË= C
,
ËËC D
$num
ËËE F
)
ËËF G
;
ËËG H
break
ÈÈ 
;
ÈÈ 
case
ÍÍ
 
$num
ÍÍ 
:
ÍÍ 
clientePartida
ÎÎ 
.
ÎÎ  
MovimientoEspecial
ÎÎ -
(
ÎÎ- .
PartidaEnJuego
ÎÎ. <
.
ÎÎ< =
Nombre
ÎÎ= C
,
ÎÎC D
	TiroBonus
ÎÎE N
(
ÎÎN O
$num
ÎÎO P
,
ÎÎP Q
Jugador
ÎÎR Y
,
ÎÎY Z
PartidaEnJuego
ÎÎ[ i
)
ÎÎi j
)
ÎÎj k
;
ÎÎk l
break
ÏÏ 
;
ÏÏ 
case
ÌÌ
 
$num
ÌÌ 
:
ÌÌ 
clientePartida
ÓÓ 
.
ÓÓ  
MovimientoEspecial
ÓÓ -
(
ÓÓ- .
PartidaEnJuego
ÓÓ. <
.
ÓÓ< =
Nombre
ÓÓ= C
,
ÓÓC D
	TiroBonus
ÓÓE N
(
ÓÓN O
$num
ÓÓO P
,
ÓÓP Q
Jugador
ÓÓR Y
,
ÓÓY Z
PartidaEnJuego
ÓÓ[ i
)
ÓÓi j
)
ÓÓj k
;
ÓÓk l
break
ÔÔ 
;
ÔÔ 
case

 
$num
 
:
 
Jugador
ÒÒ 
.
ÒÒ 
Estadisticas
ÒÒ  
.
ÒÒ  !
Puntos
ÒÒ! '
=
ÒÒ( )
Convert
ÒÒ* 1
.
ÒÒ1 2
ToInt16
ÒÒ2 9
(
ÒÒ9 :
Jugador
ÒÒ: A
.
ÒÒA B
Estadisticas
ÒÒB N
.
ÒÒN O
Puntos
ÒÒO U
+
ÒÒV W
$num
ÒÒX Z
)
ÒÒZ [
;
ÒÒ[ \
clienteJugador
ÚÚ 
.
ÚÚ #
ModificarEstadisticas
ÚÚ 0
(
ÚÚ0 1
Jugador
ÚÚ1 8
.
ÚÚ8 9
NombreUsuario
ÚÚ9 F
,
ÚÚF G
Jugador
ÚÚH O
.
ÚÚO P
Estadisticas
ÚÚP \
.
ÚÚ\ ]
Puntos
ÚÚ] c
,
ÚÚc d
Jugador
ÚÚe l
.
ÚÚl m
Estadisticas
ÚÚm y
.
ÚÚy z
	VictoriasÚÚz É
)ÚÚÉ Ñ
;ÚÚÑ Ö
break
ÛÛ 
;
ÛÛ 
case
ÙÙ
 
$num
ÙÙ 
:
ÙÙ 
clientePartida
ıı 
.
ıı  
MovimientoEspecial
ıı -
(
ıı- .
PartidaEnJuego
ıı. <
.
ıı< =
Nombre
ıı= C
,
ııC D
	TiroBonus
ııE N
(
ııN O
$num
ııO P
,
ııP Q
Jugador
ııR Y
,
ııY Z
PartidaEnJuego
ıı[ i
)
ııi j
)
ııj k
;
ıık l
break
ˆˆ 
;
ˆˆ 
case
˜˜
 
$num
˜˜ 
:
˜˜ 
Jugador
¯¯ 
.
¯¯ 
Turno
¯¯ 
.
¯¯ 
Casilla
¯¯ !
=
¯¯" #
PartidaEnJuego
¯¯$ 2
.
¯¯2 3
Tablero
¯¯3 :
.
¯¯: ;
Casillas
¯¯; C
[
¯¯C D
$num
¯¯D F
]
¯¯F G
;
¯¯G H
clientePartida
˘˘ 
.
˘˘  
MovimientoEspecial
˘˘ -
(
˘˘- .
PartidaEnJuego
˘˘. <
.
˘˘< =
Nombre
˘˘= C
,
˘˘C D
$num
˘˘E G
)
˘˘G H
;
˘˘H I
break
˙˙ 
;
˙˙ 
}
˚˚ 	
clienteChat
¸¸ 
.
¸¸ "
EnviarMensajePartida
¸¸ (
(
¸¸( )
lb_Dado
¸¸) 0
.
¸¸0 1
Content
¸¸1 8
.
¸¸8 9
ToString
¸¸9 A
(
¸¸A B
)
¸¸B C
,
¸¸C D
PartidaEnJuego
¸¸E S
.
¸¸S T
Nombre
¸¸T Z
,
¸¸Z [
$num
¸¸\ ]
)
¸¸] ^
;
¸¸^ _
}
˝˝ 
catch
˝˝ 
(
˝˝ $
CommunicationException
˝˝ %
)
˝˝% &
{
˝˝' ( 
EnviarMensajeError
˛˛ 
(
˛˛ 
)
˛˛ 
;
˛˛ 
}
ˇˇ 
}
ÄÄ 
public
îî 

int
îî 
	TiroBonus
îî 
(
îî 
int
îî 
bonus
îî "
,
îî" #
Jugador
îî$ +
jugadorMovimiento
îî, =
,
îî= >

ServiceSYE
îî? I
.
îîI J
Partida
îîJ Q
partidaJugando
îîR `
)
îî` a
{
îîb c
int
ïï 	

movimiento
ïï
 
=
ïï 
$num
ïï 
;
ïï 
switch
ññ 
(
ññ 
bonus
ññ 
)
ññ 
{
ññ 
case
óó 
$num
óó 
:
óó 

movimiento
òò
 
=
òò 
jugadorMovimiento
òò (
.
òò( )
Turno
òò) .
.
òò. /
Casilla
òò/ 6
.
òò6 7
Numero
òò7 =
/
òò> ?
$num
òò@ A
;
òòA B
break
ôô
 
;
ôô 
case
öö 
$num
öö 
:
öö 

movimiento
õõ
 
=
õõ 
jugadorMovimiento
õõ (
.
õõ( )
Turno
õõ) .
.
õõ. /
Casilla
õõ/ 6
.
õõ6 7
Numero
õõ7 =
-
õõ> ?
$num
õõ@ A
;
õõA B
break
úú
 
;
úú 
case
ùù 
$num
ùù 
:
ùù 

movimiento
ûû
 
=
ûû 
jugadorMovimiento
ûû (
.
ûû( )
Turno
ûû) .
.
ûû. /
Casilla
ûû/ 6
.
ûû6 7
Numero
ûû7 =
+
ûû> ?
$num
ûû@ B
;
ûûB C
break
üü
 
;
üü 
}
†† 
jugadorMovimiento
°° 
.
°° 
Turno
°° 
.
°° 
Casilla
°° %
=
°°& '
partidaJugando
°°( 6
.
°°6 7
Tablero
°°7 >
.
°°> ?
Casillas
°°? G
[
°°G H

movimiento
°°H R
-
°°S T
$num
°°U V
]
°°V W
;
°°W X
return
¢¢ 

movimiento
¢¢ 
;
¢¢ 
}
££ 
public
´´ 

void
´´ 
CambiarTurno
´´ 
(
´´ 
String
´´ #
nombreUsuario
´´$ 1
)
´´1 2
{
´´3 4
try
¨¨ 	
{
¨¨
 
PartidaEnJuego
≠≠ 
=
≠≠ 
clientePartida
≠≠ '
.
≠≠' (
ObtenerPartida
≠≠( 6
(
≠≠6 7
PartidaEnJuego
≠≠7 E
.
≠≠E F
Nombre
≠≠F L
)
≠≠L M
;
≠≠M N
bonus
ÆÆ 
=
ÆÆ 
false
ÆÆ 
;
ÆÆ 
if
ØØ 

(
ØØ 
PartidaEnJuego
ØØ 
.
ØØ 
Turno
ØØ  
==
ØØ! #
PartidaEnJuego
ØØ$ 2
.
ØØ2 3
JugadoresPartida
ØØ3 C
.
ØØC D
	ElementAt
ØØD M
(
ØØM N
$num
ØØN O
)
ØØO P
.
ØØP Q
Value
ØØQ V
.
ØØV W
Turno
ØØW \
.
ØØ\ ]
NumeroTurno
ØØ] h
&&
ØØi k
nombreUsuario
ØØl y
.
ØØy z
EqualsØØz Ä
(ØØÄ Å
JugadorØØÅ à
.ØØà â
NombreUsuarioØØâ ñ
)ØØñ ó
)ØØó ò
{ØØô ö
clientePartida
∞∞
 
.
∞∞ "
CambiarPosicionBonus
∞∞ -
(
∞∞- .
PartidaEnJuego
∞∞. <
.
∞∞< =
Nombre
∞∞= C
)
∞∞C D
;
∞∞D E
}
±± 	
DispatcherTimer
≤≤ $
temporizadorMovimiento
≤≤ .
=
≤≤/ 0
new
≤≤1 4
DispatcherTimer
≤≤5 D
(
≤≤D E
)
≤≤E F
;
≤≤F G$
temporizadorMovimiento
≥≥ 
.
≥≥ 
Interval
≥≥ '
=
≥≥( )
new
≥≥* -
TimeSpan
≥≥. 6
(
≥≥6 7
$num
≥≥7 8
,
≥≥8 9
$num
≥≥: ;
,
≥≥; <
$num
≥≥= >
)
≥≥> ?
;
≥≥? @$
temporizadorMovimiento
¥¥ 
.
¥¥ 
Tick
¥¥ #
+=
¥¥$ &
(
¥¥' (
a
¥¥( )
,
¥¥) *
b
¥¥+ ,
)
¥¥, -
=>
¥¥. 0
{
¥¥1 2$
temporizadorMovimiento
µµ
  
.
µµ  !
Stop
µµ! %
(
µµ% &
)
µµ& '
;
µµ' (
try
∂∂
 
{
∂∂ 
if
∑∑ 
(
∑∑ 
!
∑∑ 
VerificarGanador
∑∑ !
(
∑∑! "
nombreUsuario
∑∑" /
)
∑∑/ 0
)
∑∑0 1
{
∑∑2 3
SiguienteJugador
∏∏ 
(
∏∏ 
)
∏∏  
;
∏∏  !
}
ππ 
else
ππ 
{
ππ %
validarConectadoPartida
∫∫ %
.
∫∫% &
Stop
∫∫& *
(
∫∫* +
)
∫∫+ ,
;
∫∫, -

Resultados
ªª 

resultados
ªª #
=
ªª$ %
new
ªª& )

Resultados
ªª* 4
(
ªª4 5
this
ªª5 9
,
ªª9 :
posicionJugadores
ªª; L
)
ªªL M
;
ªªM N

resultados
ºº 
.
ºº 

ShowDialog
ºº #
(
ºº# $
)
ºº$ %
;
ºº% &
}
ΩΩ 
}
ææ
 
catch
ææ 
(
ææ $
CommunicationException
ææ )
)
ææ) *
{
ææ+ , 
EnviarMensajeError
øø 
(
øø 
)
øø  
;
øø  !
}
¿¿
 
}
¡¡ 	
;
¡¡	 
$
temporizadorMovimiento
¬¬ 
.
¬¬ 
Start
¬¬ $
(
¬¬$ %
)
¬¬% &
;
¬¬& '
}
√√ 
catch
√√ 
(
√√ $
CommunicationException
√√ %
)
√√% &
{
√√' ( 
EnviarMensajeError
ƒƒ 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 
}
∆∆ 
private
—— 
Boolean
—— 
VerificarGanador
—— $
(
——$ %
String
——% +
nombreUsuario
——, 9
)
——9 :
{
——; <
Boolean
““ 
	verificar
““ 
=
““ 
false
““ 
;
““  

ServiceSYE
”” 
.
”” 
Jugador
”” 
jugadorMovimiento
”” *
=
””+ ,
new
””- 0

ServiceSYE
””1 ;
.
””; <
Jugador
””< C
(
””C D
)
””D E
;
””E F
for
‘‘ 	
(
‘‘
 
int
‘‘ 
i
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
i
‘‘ 
<
‘‘ 
PartidaEnJuego
‘‘ (
.
‘‘( )
JugadoresPartida
‘‘) 9
.
‘‘9 :
Count
‘‘: ?
;
‘‘? @
i
‘‘A B
++
‘‘B D
)
‘‘D E
{
‘‘F G
if
’’ 

(
’’ 
PartidaEnJuego
’’ 
.
’’ 
JugadoresPartida
’’ +
.
’’+ ,
	ElementAt
’’, 5
(
’’5 6
i
’’6 7
)
’’7 8
.
’’8 9
Value
’’9 >
.
’’> ?
NombreUsuario
’’? L
.
’’L M
Equals
’’M S
(
’’S T
nombreUsuario
’’T a
)
’’a b
)
’’b c
{
’’d e
jugadorMovimiento
÷÷
 
=
÷÷ 
PartidaEnJuego
÷÷ ,
.
÷÷, -
JugadoresPartida
÷÷- =
.
÷÷= >
	ElementAt
÷÷> G
(
÷÷G H
i
÷÷H I
)
÷÷I J
.
÷÷J K
Value
÷÷K P
;
÷÷P Q
}
◊◊ 	
}
ÿÿ 
if
ŸŸ 
(
ŸŸ	 

jugadorMovimiento
ŸŸ
 
.
ŸŸ 
Turno
ŸŸ !
.
ŸŸ! "
Casilla
ŸŸ" )
.
ŸŸ) *
Numero
ŸŸ* 0
==
ŸŸ1 3
$num
ŸŸ4 7
)
ŸŸ7 8
{
ŸŸ9 :
	verificar
⁄⁄ 
=
⁄⁄ 
true
⁄⁄ 
;
⁄⁄ 
tb_Mensajes
€€ 
.
€€ 
Text
€€ 
=
€€ 
tb_Mensajes
€€ &
.
€€& '
Text
€€' +
+
€€, -
$str
€€. 1
+
€€2 3
jugadorMovimiento
€€4 E
.
€€E F
NombreUsuario
€€F S
+
€€T U

Properties
€€V `
.
€€` a
	Resources
€€a j
.
€€j k
ms_Gano
€€k r
+
€€s t
$str
€€u |
;
€€| }
tb_Mensajes
‹‹ 
.
‹‹ 
ScrollToEnd
‹‹ 
(
‹‹  
)
‹‹  !
;
‹‹! "
posicionJugadores
›› 
=
›› 
new
›› 
List
››  $
<
››$ %

ServiceSYE
››% /
.
››/ 0
Jugador
››0 7
>
››7 8
(
››8 9
)
››9 :
;
››: ;
List
ﬁﬁ 
<
ﬁﬁ 

ServiceSYE
ﬁﬁ 
.
ﬁﬁ 
Jugador
ﬁﬁ 
>
ﬁﬁ  "
posicionJugadoresAux
ﬁﬁ! 5
=
ﬁﬁ6 7
new
ﬁﬁ8 ;
List
ﬁﬁ< @
<
ﬁﬁ@ A

ServiceSYE
ﬁﬁA K
.
ﬁﬁK L
Jugador
ﬁﬁL S
>
ﬁﬁS T
(
ﬁﬁT U
)
ﬁﬁU V
;
ﬁﬁV W
List
ﬂﬂ 
<
ﬂﬂ 
int
ﬂﬂ 
>
ﬂﬂ 
premios
ﬂﬂ 
=
ﬂﬂ 
DefinirPremios
ﬂﬂ *
(
ﬂﬂ* +
PartidaEnJuego
ﬂﬂ+ 9
.
ﬂﬂ9 :
JugadoresPartida
ﬂﬂ: J
.
ﬂﬂJ K
Count
ﬂﬂK P
)
ﬂﬂP Q
;
ﬂﬂQ R
for
‡‡ 
(
‡‡ 
int
‡‡ 
i
‡‡ 
=
‡‡ 
$num
‡‡ 
;
‡‡ 
i
‡‡ 
<
‡‡ 
PartidaEnJuego
‡‡ *
.
‡‡* +
JugadoresPartida
‡‡+ ;
.
‡‡; <
Count
‡‡< A
;
‡‡A B
i
‡‡C D
++
‡‡D F
)
‡‡F G
{
‡‡H I"
posicionJugadoresAux
··
 
.
·· 
Add
·· "
(
··" #
PartidaEnJuego
··# 1
.
··1 2
JugadoresPartida
··2 B
.
··B C
	ElementAt
··C L
(
··L M
i
··M N
)
··N O
.
··O P
Value
··P U
)
··U V
;
··V W
}
‚‚ 	
for
„„ 
(
„„ 
int
„„ 
i
„„ 
=
„„ 
PartidaEnJuego
„„ #
.
„„# $
JugadoresPartida
„„$ 4
.
„„4 5
Count
„„5 :
;
„„: ;
i
„„< =
>
„„> ?
$num
„„@ A
;
„„A B
i
„„C D
--
„„D F
)
„„F G
{
„„H I

ServiceSYE
‰‰
 
.
‰‰ 
Jugador
‰‰ 
jugadorMasAlto
‰‰ +
=
‰‰, -#
DefinirJugadorMasAlto
‰‰. C
(
‰‰C D"
posicionJugadoresAux
‰‰D X
,
‰‰X Y
i
‰‰Z [
)
‰‰[ \
;
‰‰\ ]"
posicionJugadoresAux
ÂÂ
 
.
ÂÂ 
Remove
ÂÂ %
(
ÂÂ% &
jugadorMasAlto
ÂÂ& 4
)
ÂÂ4 5
;
ÂÂ5 6
jugadorMasAlto
ÊÊ
 
.
ÊÊ 
Estadisticas
ÊÊ %
.
ÊÊ% &
Puntos
ÊÊ& ,
=
ÊÊ- .
Convert
ÊÊ/ 6
.
ÊÊ6 7
ToInt16
ÊÊ7 >
(
ÊÊ> ?
premios
ÊÊ? F
.
ÊÊF G
	ElementAt
ÊÊG P
(
ÊÊP Q
i
ÊÊQ R
-
ÊÊS T
$num
ÊÊU V
)
ÊÊV W
)
ÊÊW X
;
ÊÊX Y
posicionJugadores
ÁÁ
 
.
ÁÁ 
Add
ÁÁ 
(
ÁÁ  
jugadorMasAlto
ÁÁ  .
)
ÁÁ. /
;
ÁÁ/ 0'
GuardarNuevasEstadisticas
ËË
 #
(
ËË# $
jugadorMasAlto
ËË$ 2
,
ËË2 3
i
ËË4 5
)
ËË5 6
;
ËË6 7
}
ÈÈ 	
}
ÍÍ 
return
ÎÎ 
	verificar
ÎÎ 
;
ÎÎ 
}
ÏÏ 
public
˙˙ 


ServiceSYE
˙˙ 
.
˙˙ 
Jugador
˙˙ #
DefinirJugadorMasAlto
˙˙ 3
(
˙˙3 4
List
˙˙4 8
<
˙˙8 9

ServiceSYE
˙˙9 C
.
˙˙C D
Jugador
˙˙D K
>
˙˙K L"
posicionJugadoresAux
˙˙M a
,
˙˙a b
int
˙˙c f
contador
˙˙g o
)
˙˙o p
{
˙˙q r

ServiceSYE
˚˚ 
.
˚˚ 
Jugador
˚˚ 
jugadorMasAlto
˚˚ '
=
˚˚( )"
posicionJugadoresAux
˚˚* >
.
˚˚> ?
	ElementAt
˚˚? H
(
˚˚H I
$num
˚˚I J
)
˚˚J K
;
˚˚K L
for
¸¸ 	
(
¸¸
 
int
¸¸ 
j
¸¸ 
=
¸¸ 
$num
¸¸ 
;
¸¸ 
j
¸¸ 
<
¸¸ 
contador
¸¸ "
;
¸¸" #
j
¸¸$ %
++
¸¸% '
)
¸¸' (
{
¸¸) *
if
˝˝ 

(
˝˝ 
jugadorMasAlto
˝˝ 
.
˝˝ 
Turno
˝˝  
.
˝˝  !
Casilla
˝˝! (
.
˝˝( )
Numero
˝˝) /
<
˝˝0 1"
posicionJugadoresAux
˝˝2 F
.
˝˝F G
	ElementAt
˝˝G P
(
˝˝P Q
j
˝˝Q R
)
˝˝R S
.
˝˝S T
Turno
˝˝T Y
.
˝˝Y Z
Casilla
˝˝Z a
.
˝˝a b
Numero
˝˝b h
)
˝˝h i
{
˝˝j k
jugadorMasAlto
˛˛
 
=
˛˛ "
posicionJugadoresAux
˛˛ /
.
˛˛/ 0
	ElementAt
˛˛0 9
(
˛˛9 :
j
˛˛: ;
)
˛˛; <
;
˛˛< =
}
ˇˇ 	
}
ÄÄ 
return
ÅÅ 
jugadorMasAlto
ÅÅ 
;
ÅÅ 
}
ÇÇ 
public
çç 

List
çç 
<
çç 
int
çç 
>
çç 
DefinirPremios
çç #
(
çç# $
int
çç$ '
numeroJugadores
çç( 7
)
çç7 8
{
çç9 :
List
éé 

<
éé
 
int
éé 
>
éé 
premios
éé 
=
éé 
new
éé 
List
éé "
<
éé" #
int
éé# &
>
éé& '
(
éé' (
)
éé( )
;
éé) *
if
èè 
(
èè	 

numeroJugadores
èè
 
==
èè 
$num
èè 
)
èè 
{
èè  !
premios
êê 
.
êê 
Add
êê 
(
êê 
$num
êê 
)
êê 
;
êê 
premios
ëë 
.
ëë 
Add
ëë 
(
ëë 
$num
ëë 
)
ëë 
;
ëë 
premios
íí 
.
íí 
Add
íí 
(
íí 
$num
íí 
)
íí 
;
íí 
premios
ìì 
.
ìì 
Add
ìì 
(
ìì 
$num
ìì 
)
ìì 
;
ìì 
}
îî 
else
îî 
{
îî 
if
ïï 

(
ïï 
numeroJugadores
ïï 
==
ïï 
$num
ïï  
)
ïï  !
{
ïï" #
premios
ññ
 
.
ññ 
Add
ññ 
(
ññ 
$num
ññ 
)
ññ 
;
ññ 
premios
óó
 
.
óó 
Add
óó 
(
óó 
$num
óó 
)
óó 
;
óó 
premios
òò
 
.
òò 
Add
òò 
(
òò 
$num
òò 
)
òò 
;
òò 
}
ôô 	
else
ôô
 
{
ôô 
if
öö
 
(
öö 
numeroJugadores
öö 
==
öö  
$num
öö! "
)
öö" #
{
öö$ %
premios
õõ 
.
õõ 
Add
õõ 
(
õõ 
$num
õõ 
)
õõ 
;
õõ 
premios
úú 
.
úú 
Add
úú 
(
úú 
$num
úú 
)
úú 
;
úú 
}
ùù
 
else
ùù 
{
ùù 
premios
ûû 
.
ûû 
Add
ûû 
(
ûû 
$num
ûû 
)
ûû 
;
ûû 
}
üü
 
}
†† 	
}
°° 
return
¢¢ 
premios
¢¢ 
;
¢¢ 
}
££ 
private
ÆÆ 
void
ÆÆ '
GuardarNuevasEstadisticas
ÆÆ *
(
ÆÆ* +

ServiceSYE
ÆÆ+ 5
.
ÆÆ5 6
Jugador
ÆÆ6 =
jugadorMasAlto
ÆÆ> L
,
ÆÆL M
int
ÆÆN Q
contador
ÆÆR Z
)
ÆÆZ [
{
ÆÆ\ ]
if
ØØ 
(
ØØ	 

Jugador
ØØ
 
.
ØØ 
NombreUsuario
ØØ 
.
ØØ  
Equals
ØØ  &
(
ØØ& '
jugadorMasAlto
ØØ' 5
.
ØØ5 6
NombreUsuario
ØØ6 C
)
ØØC D
)
ØØD E
{
ØØF G
Jugador
∞∞ 
.
∞∞ 
Estadisticas
∞∞ 
.
∞∞ 
Puntos
∞∞ #
=
∞∞$ %
Convert
∞∞& -
.
∞∞- .
ToInt16
∞∞. 5
(
∞∞5 6
Jugador
∞∞6 =
.
∞∞= >
Estadisticas
∞∞> J
.
∞∞J K
Puntos
∞∞K Q
+
∞∞R S
jugadorMasAlto
∞∞T b
.
∞∞b c
Estadisticas
∞∞c o
.
∞∞o p
Puntos
∞∞p v
)
∞∞v w
;
∞∞w x
if
±± 

(
±± 
contador
±± 
==
±± 
PartidaEnJuego
±± &
.
±±& '
JugadoresPartida
±±' 7
.
±±7 8
Count
±±8 =
)
±±= >
{
±±? @
Jugador
≤≤
 
.
≤≤ 
Estadisticas
≤≤ 
.
≤≤ 
	Victorias
≤≤ (
=
≤≤) *
Convert
≤≤+ 2
.
≤≤2 3
ToInt16
≤≤3 :
(
≤≤: ;
Jugador
≤≤; B
.
≤≤B C
Estadisticas
≤≤C O
.
≤≤O P
	Victorias
≤≤P Y
+
≤≤Z [
$num
≤≤\ ]
)
≤≤] ^
;
≤≤^ _
}
≥≥ 	
try
¥¥ 
{
¥¥ 
clienteJugador
µµ
 
.
µµ #
ModificarEstadisticas
µµ .
(
µµ. /
Jugador
µµ/ 6
.
µµ6 7
NombreUsuario
µµ7 D
,
µµD E
Jugador
µµF M
.
µµM N
Estadisticas
µµN Z
.
µµZ [
Puntos
µµ[ a
,
µµa b
Jugador
µµc j
.
µµj k
Estadisticas
µµk w
.
µµw x
	Victoriasµµx Å
)µµÅ Ç
;µµÇ É
}
∂∂ 	
catch
∂∂
 
(
∂∂ $
CommunicationException
∂∂ '
)
∂∂' (
{
∂∂) *

MessageBox
∑∑
 
.
∑∑ 
Show
∑∑ 
(
∑∑ 

Properties
∑∑ $
.
∑∑$ %
	Resources
∑∑% .
.
∑∑. /
mb_ConexionBD2
∑∑/ =
,
∑∑= >

Properties
∑∑? I
.
∑∑I J
	Resources
∑∑J S
.
∑∑S T
	mb_Alerta
∑∑T ]
)
∑∑] ^
;
∑∑^ _
}
∏∏ 	
}
ππ 
}
∫∫ 
private
øø 
void
øø 
SiguienteJugador
øø !
(
øø! "
)
øø" #
{
øø$ %
if
¿¿ 
(
¿¿	 

PartidaEnJuego
¿¿
 
.
¿¿ 
Turno
¿¿ 
==
¿¿ !
PartidaEnJuego
¿¿" 0
.
¿¿0 1
JugadoresPartida
¿¿1 A
.
¿¿A B
	ElementAt
¿¿B K
(
¿¿K L
$num
¿¿L M
)
¿¿M N
.
¿¿N O
Value
¿¿O T
.
¿¿T U
Turno
¿¿U Z
.
¿¿Z [
NumeroTurno
¿¿[ f
)
¿¿f g
{
¿¿h i
PartidaEnJuego
¡¡ 
=
¡¡ 
clientePartida
¡¡ '
.
¡¡' (
ObtenerPartida
¡¡( 6
(
¡¡6 7
PartidaEnJuego
¡¡7 E
.
¡¡E F
Nombre
¡¡F L
)
¡¡L M
;
¡¡M N
CargarBonus
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 
if
ƒƒ 
(
ƒƒ	 

PartidaEnJuego
ƒƒ
 
.
ƒƒ 
Turno
ƒƒ 
==
ƒƒ !
Jugador
ƒƒ" )
.
ƒƒ) *
Turno
ƒƒ* /
.
ƒƒ/ 0
NumeroTurno
ƒƒ0 ;
)
ƒƒ; <
{
ƒƒ= >
clienteChat
≈≈ 
.
≈≈ "
EnviarMensajePartida
≈≈ (
(
≈≈( )
$str
≈≈) +
,
≈≈+ ,
PartidaEnJuego
≈≈- ;
.
≈≈; <
Nombre
≈≈< B
,
≈≈B C
$num
≈≈D E
)
≈≈E F
;
≈≈F G
}
∆∆ 
}
«« 
private
ÃÃ 
void
ÃÃ !
EnviarMensajeTurnos
ÃÃ $
(
ÃÃ$ %
)
ÃÃ% &
{
ÃÃ' (
tb_Mensajes
ÕÕ 
.
ÕÕ 
Text
ÕÕ 
=
ÕÕ 
tb_Mensajes
ÕÕ $
.
ÕÕ$ %
Text
ÕÕ% )
+
ÕÕ* +
$str
ÕÕ, 1
+
ÕÕ2 3

Properties
ÕÕ4 >
.
ÕÕ> ?
	Resources
ÕÕ? H
.
ÕÕH I
ms_Comienzo
ÕÕI T
+
ÕÕU V
$str
ÕÕW ^
;
ÕÕ^ _
tb_Mensajes
ŒŒ 
.
ŒŒ 
Text
ŒŒ 
=
ŒŒ 
tb_Mensajes
ŒŒ $
.
ŒŒ$ %
Text
ŒŒ% )
+
ŒŒ* +

Properties
ŒŒ, 6
.
ŒŒ6 7
	Resources
ŒŒ7 @
.
ŒŒ@ A
ms_Turn
ŒŒA H
+
ŒŒI J
$str
ŒŒK Q
+
ŒŒR S

Properties
ŒŒT ^
.
ŒŒ^ _
	Resources
ŒŒ_ h
.
ŒŒh i
ms_Amarillo
ŒŒi t
+
ŒŒu v
$str
ŒŒw ~
+ŒŒ Ä
thisŒŒÅ Ö
.ŒŒÖ Ü
PartidaEnJuegoŒŒÜ î
.ŒŒî ï 
JugadoresPartidaŒŒï •
.ŒŒ• ¶
	ElementAtŒŒ¶ Ø
(ŒŒØ ∞
$numŒŒ∞ ±
)ŒŒ± ≤
.ŒŒ≤ ≥
ValueŒŒ≥ ∏
.ŒŒ∏ π
NombreUsuarioŒŒπ ∆
+ŒŒ« »
$strŒŒ… Õ
;ŒŒÕ Œ
tb_Mensajes
œœ 
.
œœ 
Text
œœ 
=
œœ 
tb_Mensajes
œœ $
.
œœ$ %
Text
œœ% )
+
œœ* +

Properties
œœ, 6
.
œœ6 7
	Resources
œœ7 @
.
œœ@ A
ms_Turn
œœA H
+
œœI J
$str
œœK Q
+
œœR S

Properties
œœT ^
.
œœ^ _
	Resources
œœ_ h
.
œœh i

ms_Naranja
œœi s
+
œœt u
$str
œœv }
+
œœ~ 
thisœœÄ Ñ
.œœÑ Ö
PartidaEnJuegoœœÖ ì
.œœì î 
JugadoresPartidaœœî §
.œœ§ •
	ElementAtœœ• Æ
(œœÆ Ø
$numœœØ ∞
)œœ∞ ±
.œœ± ≤
Valueœœ≤ ∑
.œœ∑ ∏
NombreUsuarioœœ∏ ≈
+œœ∆ «
$strœœ» Ã
;œœÃ Õ
tb_Mensajes
–– 
.
–– 
Text
–– 
=
–– 
tb_Mensajes
–– $
.
––$ %
Text
––% )
+
––* +

Properties
––, 6
.
––6 7
	Resources
––7 @
.
––@ A
ms_Turn
––A H
+
––I J
$str
––K Q
+
––R S

Properties
––T ^
.
––^ _
	Resources
––_ h
.
––h i
	ms_Morado
––i r
+
––s t
$str
––u |
+
––} ~
this–– É
.––É Ñ
PartidaEnJuego––Ñ í
.––í ì 
JugadoresPartida––ì £
.––£ §
	ElementAt––§ ≠
(––≠ Æ
$num––Æ Ø
)––Ø ∞
.––∞ ±
Value––± ∂
.––∂ ∑
NombreUsuario––∑ ƒ
+––≈ ∆
$str––« À
;––À Ã
tb_Mensajes
—— 
.
—— 
Text
—— 
=
—— 
tb_Mensajes
—— $
.
——$ %
Text
——% )
+
——* +

Properties
——, 6
.
——6 7
	Resources
——7 @
.
——@ A
ms_Turn
——A H
+
——I J
$str
——K Q
+
——R S

Properties
——T ^
.
——^ _
	Resources
——_ h
.
——h i
ms_Rosa
——i p
+
——q r
$str
——s z
+
——{ |
this——} Å
.——Å Ç
PartidaEnJuego——Ç ê
.——ê ë 
JugadoresPartida——ë °
.——° ¢
	ElementAt——¢ ´
(——´ ¨
$num——¨ ≠
)——≠ Æ
.——Æ Ø
Value——Ø ¥
.——¥ µ
NombreUsuario——µ ¬
+——√ ƒ
$str——≈ À
;——À Ã
}
““ 
public
⁄⁄ 

void
⁄⁄ 
ActivarAbandonar
⁄⁄  
(
⁄⁄  !
String
⁄⁄! '
nombreUsuario
⁄⁄( 5
)
⁄⁄5 6
{
⁄⁄7 8
if
€€ 
(
€€	 

!
€€
 
Jugador
€€ 
.
€€ 
NombreUsuario
€€  
.
€€  !
Equals
€€! '
(
€€' (
nombreUsuario
€€( 5
)
€€5 6
||
€€7 9
PartidaEnJuego
€€: H
.
€€H I
JugadoresPartida
€€I Y
.
€€Y Z
Count
€€Z _
==
€€` b
$num
€€c d
)
€€d e
{
€€f g
bt_Abandonar
‹‹ 
.
‹‹ 
	IsEnabled
‹‹ 
=
‹‹  
true
‹‹! %
;
‹‹% &
}
›› 
}
ﬁﬁ 
public
ÊÊ 

void
ÊÊ  
EnviarMensajeBonus
ÊÊ "
(
ÊÊ" #
String
ÊÊ# )
nombreUsuario
ÊÊ* 7
)
ÊÊ7 8
{
ÊÊ9 :
tb_Mensajes
ÁÁ 
.
ÁÁ 
Text
ÁÁ 
=
ÁÁ 
tb_Mensajes
ÁÁ $
.
ÁÁ$ %
Text
ÁÁ% )
+
ÁÁ* +
$str
ÁÁ, /
+
ÁÁ0 1
nombreUsuario
ÁÁ2 ?
+
ÁÁ@ A

Properties
ÁÁB L
.
ÁÁL M
	Resources
ÁÁM V
.
ÁÁV W
ms_Bonus
ÁÁW _
+
ÁÁ` a
$str
ÁÁb h
;
ÁÁh i
}
ËË 
public
ÛÛ 

void
ÛÛ  
MoverFichaAbandono
ÛÛ "
(
ÛÛ" #
String
ÛÛ# )
nombreUsuario
ÛÛ* 7
,
ÛÛ7 8

Dictionary
ÛÛ9 C
<
ÛÛC D
object
ÛÛD J
,
ÛÛJ K
Jugador
ÛÛL S
>
ÛÛS T
jugadoresPartida
ÛÛU e
)
ÛÛe f
{
ÛÛg h
for
ÙÙ 	
(
ÙÙ
 
int
ÙÙ 
i
ÙÙ 
=
ÙÙ 
$num
ÙÙ 
;
ÙÙ 
i
ÙÙ 
<
ÙÙ 
jugadoresPartida
ÙÙ *
.
ÙÙ* +
Count
ÙÙ+ 0
;
ÙÙ0 1
i
ÙÙ2 3
++
ÙÙ3 5
)
ÙÙ5 6
{
ÙÙ7 8
if
ıı 

(
ıı 
jugadoresPartida
ıı 
.
ıı 
	ElementAt
ıı &
(
ıı& '
i
ıı' (
)
ıı( )
.
ıı) *
Value
ıı* /
.
ıı/ 0
NombreUsuario
ıı0 =
.
ıı= >
Equals
ıı> D
(
ııD E
nombreUsuario
ııE R
)
ııR S
)
ııS T
{
ııU V
jugadoresPartida
ˆˆ
 
.
ˆˆ 
	ElementAt
ˆˆ $
(
ˆˆ$ %
i
ˆˆ% &
)
ˆˆ& '
.
ˆˆ' (
Value
ˆˆ( -
.
ˆˆ- .
Turno
ˆˆ. 3
.
ˆˆ3 4
Casilla
ˆˆ4 ;
=
ˆˆ< =
new
ˆˆ> A
Casilla
ˆˆB I
{
ˆˆJ K
Numero
˜˜ 
=
˜˜ 
$num
˜˜ 
,
˜˜ 
	PosicionX
¯¯ 
=
¯¯ 
-
¯¯ 
$num
¯¯ 
,
¯¯ 
	PosicionY
˘˘ 
=
˘˘ 
-
˘˘ 
$num
˘˘ 
,
˘˘ 

Movimiento
˙˙ 
=
˙˙ 
$num
˙˙ 
,
˙˙ 
Bonus
˚˚ 
=
˚˚ 
false
˚˚ 
,
˚˚ 
}
¸¸
 
;
¸¸ 

MoverFicha
˝˝
 
(
˝˝ 
jugadoresPartida
˝˝ %
.
˝˝% &
	ElementAt
˝˝& /
(
˝˝/ 0
i
˝˝0 1
)
˝˝1 2
.
˝˝2 3
Value
˝˝3 8
)
˝˝8 9
;
˝˝9 :
break
˛˛
 
;
˛˛ 
}
ˇˇ 	
}
ÄÄ 
}
ÅÅ 
private
ÜÜ 
void
ÜÜ  
EnviarMensajeError
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
{
ÜÜ& ' 
MessageBoxTemporal
áá 
.
áá 
Show
áá 
(
áá 

Properties
áá (
.
áá( )
	Resources
áá) 2
.
áá2 3"
mb_ConexionServidor3
áá3 G
,
ááG H

Properties
ááI S
.
ááS T
	Resources
ááT ]
.
áá] ^
	mb_Alerta
áá^ g
,
áág h
$num
áái j
,
ááj k
false
áál q
)
ááq r
;
áár s
cerrar
àà 
=
àà 
false
àà 
;
àà 
this
ââ 

.
ââ
 
Close
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 
}
ãã 
}åå Ç®
õC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MenuPrincipal.xaml.cs
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
ÄÄ 
(
ÄÄ	 

cerrar
ÄÄ
 
)
ÄÄ 
{
ÄÄ 
try
ÅÅ 
{
ÅÅ 
if
ÇÇ
 
(
ÇÇ 
clienteJugador
ÇÇ 
.
ÇÇ #
ModificarEstadisticas
ÇÇ 2
(
ÇÇ2 3
jugador
ÇÇ3 :
.
ÇÇ: ;
NombreUsuario
ÇÇ; H
,
ÇÇH I
jugador
ÇÇJ Q
.
ÇÇQ R
Estadisticas
ÇÇR ^
.
ÇÇ^ _
Puntos
ÇÇ_ e
,
ÇÇe f
jugador
ÇÇg n
.
ÇÇn o
Estadisticas
ÇÇo {
.
ÇÇ{ |
	VictoriasÇÇ| Ö
)ÇÇÖ Ü
)ÇÇÜ á
{ÇÇà â
clienteJugador
ÉÉ 
.
ÉÉ 
SalirDelJuego
ÉÉ (
(
ÉÉ( )
jugador
ÉÉ) 0
)
ÉÉ0 1
;
ÉÉ1 2

MainWindow
ÑÑ 

mainWindow
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '

MainWindow
ÑÑ( 2
(
ÑÑ2 3
)
ÑÑ3 4
;
ÑÑ4 5

mainWindow
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ "
validarConectadoMenu
ÜÜ  
.
ÜÜ  !
Stop
ÜÜ! %
(
ÜÜ% &
)
ÜÜ& '
;
ÜÜ' (
}
áá
 
else
áá 
{
áá 
e
àà 
.
àà 
Cancel
àà 
=
àà 
true
àà 
;
àà 

MessageBox
ââ 
.
ââ 
Show
ââ 
(
ââ 

Properties
ââ &
.
ââ& '
	Resources
ââ' 0
.
ââ0 1
mb_ConexionBD2
ââ1 ?
,
ââ? @

Properties
ââA K
.
ââK L
	Resources
ââL U
.
ââU V
	mb_Alerta
ââV _
)
ââ_ `
;
ââ` a
}
ää
 
}
ãã 	
catch
ãã
 
(
ãã $
CommunicationException
ãã '
)
ãã' (
{
ãã) *
e
åå
 
.
åå 
Cancel
åå 
=
åå 
true
åå 
;
åå 

MessageBox
çç
 
.
çç 
Show
çç 
(
çç 

Properties
çç $
.
çç$ %
	Resources
çç% .
.
çç. /"
mb_ConexionServidor2
çç/ C
,
ççC D

Properties
ççE O
.
ççO P
	Resources
ççP Y
.
ççY Z
	mb_Alerta
ççZ c
)
ççc d
;
ççd e
}
éé 	
}
èè 
}
êê 
public
òò 

void
òò 
UnirseAPartida
òò 
(
òò 

ServiceSYE
òò )
.
òò) *
Partida
òò* 1
partida
òò2 9
)
òò9 :
{
òò; <
Espera
ôô 
espera
ôô 
=
ôô 
new
ôô 
Espera
ôô  
(
ôô  !
jugador
ôô! (
,
ôô( )
partida
ôô* 1
)
ôô1 2
;
ôô2 3
espera
öö 
.
öö 
Show
öö 
(
öö 
)
öö 
;
öö 
cerrar
õõ 
=
õõ 
false
õõ 
;
õõ 
this
úú 

.
úú
 
Close
úú 
(
úú 
)
úú 
;
úú 
}
ùù 
}
ûû 
public
§§ 
partial
§§	 
class
§§ 
Partidas
§§ 
:
§§  !

ServiceSYE
§§" ,
.
§§, -
IPartidaCallback
§§- =
{
§§> ?
public
®® 

UnirsePartida
®® 
UnirsePartida
®® &
{
®®' (
get
®®) ,
;
®®, -
set
®®. 1
;
®®1 2
}
®®3 4
public
¨¨ 

Partida
¨¨ 
Partida
¨¨ 
{
¨¨ 
get
¨¨  
;
¨¨  !
set
¨¨" %
;
¨¨% &
}
¨¨' (
public
¥¥ 

void
¥¥  
ActualizarPartidas
¥¥ "
(
¥¥" #

ServiceSYE
¥¥# -
.
¥¥- .
Partida
¥¥. 5
[
¥¥5 6
]
¥¥6 7
partidas
¥¥8 @
)
¥¥@ A
{
¥¥B C
UnirsePartida
µµ 
.
µµ 
dg_Partidas
µµ 
.
µµ  
ItemsSource
µµ  +
=
µµ, -
partidas
µµ. 6
;
µµ6 7
}
∂∂ 
public
ªª 

void
ªª 
Tirar
ªª 
(
ªª 
)
ªª 
{
ªª 
Partida
ºº 
.
ºº 
ActivarDado
ºº 
(
ºº 
)
ºº 
;
ºº 
}
ΩΩ 
}
ææ 
public
ƒƒ 
partial
ƒƒ	 
class
ƒƒ 
Mensajes
ƒƒ 
:
ƒƒ  !

ServiceSYE
ƒƒ" ,
.
ƒƒ, -
IChatCallback
ƒƒ- :
{
ƒƒ; <
public
»» 

Espera
»» 
Espera
»» 
{
»» 
get
»» 
;
»» 
set
»»  #
;
»»# $
}
»»% &
public
ÃÃ 

Partida
ÃÃ 
Partida
ÃÃ 
{
ÃÃ 
get
ÃÃ  
;
ÃÃ  !
set
ÃÃ" %
;
ÃÃ% &
}
ÃÃ' (
public
⁄⁄ 

void
⁄⁄ 
RecibeMensaje
⁄⁄ 
(
⁄⁄ 
string
⁄⁄ $
nombreUsuario
⁄⁄% 2
,
⁄⁄2 3
string
⁄⁄4 :
mensaje
⁄⁄; B
,
⁄⁄B C
int
⁄⁄D G
numeroJugadores
⁄⁄H W
)
⁄⁄W X
{
⁄⁄Y Z
if
€€ 
(
€€	 

string
€€
 
.
€€ 
IsNullOrEmpty
€€ 
(
€€ 
mensaje
€€ &
)
€€& '
)
€€' (
{
€€) *
Espera
‹‹ 
.
‹‹ 
tb_Mensajes
‹‹ 
.
‹‹ 
Text
‹‹ 
=
‹‹  !
Espera
‹‹" (
.
‹‹( )
tb_Mensajes
‹‹) 4
.
‹‹4 5
Text
‹‹5 9
+
‹‹: ;
nombreUsuario
‹‹< I
+
‹‹J K

Properties
‹‹L V
.
‹‹V W
	Resources
‹‹W `
.
‹‹` a
	ms_Unirse
‹‹a j
+
‹‹k l
$str
‹‹m s
;
‹‹s t
Espera
›› 
.
›› 
lb_Esperando
›› 
.
›› 
Content
›› #
=
››$ %

Properties
››& 0
.
››0 1
	Resources
››1 :
.
››: ;
lb_Esperando
››; G
+
››H I
(
››J K
$num
››K L
-
››M N
numeroJugadores
››O ^
)
››^ _
.
››_ `
ToString
››` h
(
››h i
)
››i j
;
››j k
}
ﬁﬁ 
else
ﬁﬁ 
{
ﬁﬁ 
if
ﬂﬂ 

(
ﬂﬂ 
mensaje
ﬂﬂ 
.
ﬂﬂ 
Equals
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ 
)
ﬂﬂ 
)
ﬂﬂ  
{
ﬂﬂ! "
Espera
‡‡
 
.
‡‡ 
tb_Mensajes
‡‡ 
.
‡‡ 
Text
‡‡ !
=
‡‡" #
Espera
‡‡$ *
.
‡‡* +
tb_Mensajes
‡‡+ 6
.
‡‡6 7
Text
‡‡7 ;
+
‡‡< =
nombreUsuario
‡‡> K
+
‡‡L M

Properties
‡‡N X
.
‡‡X Y
	Resources
‡‡Y b
.
‡‡b c
ms_Salir
‡‡c k
+
‡‡l m
$str
‡‡n t
;
‡‡t u
Espera
··
 
.
·· 
lb_Esperando
·· 
.
·· 
Content
·· %
=
··& '

Properties
··( 2
.
··2 3
	Resources
··3 <
.
··< =
lb_Esperando
··= I
+
··J K
(
··L M
$num
··M N
-
··O P
numeroJugadores
··Q `
)
··` a
.
··a b
ToString
··b j
(
··j k
)
··k l
;
··l m
}
‚‚ 	
else
‚‚
 
{
‚‚ 
Espera
„„
 
.
„„ 
tb_Mensajes
„„ 
.
„„ 
Text
„„ !
=
„„" #
Espera
„„$ *
.
„„* +
tb_Mensajes
„„+ 6
.
„„6 7
Text
„„7 ;
+
„„< =
nombreUsuario
„„> K
+
„„L M
$str
„„N S
+
„„T U
mensaje
„„V ]
+
„„^ _
$str
„„` f
;
„„f g
}
‰‰ 	
}
ÂÂ 
Espera
ÊÊ 
.
ÊÊ 
tb_Mensajes
ÊÊ 
.
ÊÊ 
ScrollToEnd
ÊÊ $
(
ÊÊ$ %
)
ÊÊ% &
;
ÊÊ& '
if
ÁÁ 
(
ÁÁ	 

numeroJugadores
ÁÁ
 
==
ÁÁ 
$num
ÁÁ 
)
ÁÁ 
{
ÁÁ  !
Partida
ËË 
ventanaPartida
ËË 
=
ËË  
new
ËË! $
Partida
ËË% ,
(
ËË, -
Espera
ËË- 3
.
ËË3 4
Jugador
ËË4 ;
,
ËË; <
Espera
ËË= C
.
ËËC D
Partida
ËËD K
,
ËËK L
Espera
ËËM S
.
ËËS T
ClientePartida
ËËT b
,
ËËb c
Espera
ËËd j
.
ËËj k
ClienteChat
ËËk v
,
ËËv w
Espera
ËËx ~
.
ËË~ 
PartidasËË á
,ËËá à
EsperaËËâ è
.ËËè ê
MensajesËËê ò
)ËËò ô
;ËËô ö
ventanaPartida
ÈÈ 
.
ÈÈ 
Show
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
Espera
ÍÍ 
.
ÍÍ 
Cerrar
ÍÍ 
=
ÍÍ 
false
ÍÍ 
;
ÍÍ 
Espera
ÎÎ 
.
ÎÎ 
Close
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 
}
ÌÌ 
public
ÅÅ 

void
ÅÅ "
RecibeMensajePartida
ÅÅ $
(
ÅÅ$ %
string
ÅÅ% +
nombreUsuario
ÅÅ, 9
,
ÅÅ9 :
string
ÅÅ; A
mensaje
ÅÅB I
,
ÅÅI J
int
ÅÅK N
tipoMensaje
ÅÅO Z
)
ÅÅZ [
{
ÅÅ\ ]
switch
ÇÇ 
(
ÇÇ 
tipoMensaje
ÇÇ 
)
ÇÇ 
{
ÇÇ 
case
ÉÉ 
$num
ÉÉ 
:
ÉÉ 
Partida
ÑÑ
 
.
ÑÑ 
tb_Mensajes
ÑÑ 
.
ÑÑ 
Text
ÑÑ "
=
ÑÑ# $
Partida
ÑÑ% ,
.
ÑÑ, -
tb_Mensajes
ÑÑ- 8
.
ÑÑ8 9
Text
ÑÑ9 =
+
ÑÑ> ?
nombreUsuario
ÑÑ@ M
+
ÑÑN O
$str
ÑÑP U
+
ÑÑV W
mensaje
ÑÑX _
+
ÑÑ` a
$str
ÑÑb h
;
ÑÑh i
break
ÖÖ
 
;
ÖÖ 
case
ÜÜ 
$num
ÜÜ 
:
ÜÜ 
Partida
áá
 
.
áá 
ActivarAbandonar
áá "
(
áá" #
nombreUsuario
áá# 0
)
áá0 1
;
áá1 2
Partida
àà
 
.
àà 
tb_Mensajes
àà 
.
àà 
Text
àà "
=
àà# $
Partida
àà% ,
.
àà, -
tb_Mensajes
àà- 8
.
àà8 9
Text
àà9 =
+
àà> ?
$str
àà@ C
+
ààD E

Properties
ààF P
.
ààP Q
	Resources
ààQ Z
.
ààZ [
ms_Turno
àà[ c
+
ààd e
nombreUsuario
ààf s
+
ààt u
$str
ààv }
;
àà} ~
break
ââ
 
;
ââ 
case
ää 
$num
ää 
:
ää 
Partida
ãã
 
.
ãã  
EnviarMensajeBonus
ãã $
(
ãã$ %
nombreUsuario
ãã% 2
)
ãã2 3
;
ãã3 4
break
åå
 
;
åå 
case
çç 
$num
çç 
:
çç 
Partida
éé
 
.
éé 
bt_Abandonar
éé 
.
éé 
	IsEnabled
éé (
=
éé) *
false
éé+ 0
;
éé0 1
Partida
èè
 
.
èè 
tb_Mensajes
èè 
.
èè 
Text
èè "
=
èè# $
Partida
èè% ,
.
èè, -
tb_Mensajes
èè- 8
.
èè8 9
Text
èè9 =
+
èè> ?
$str
èè@ C
+
èèD E
nombreUsuario
èèF S
+
èèT U

Properties
èèV `
.
èè` a
	Resources
èèa j
.
èèj k
	ms_Numero
èèk t
+
èèu v
mensaje
èèw ~
+èè Ä
$strèèÅ à
;èèà â
Partida
êê
 
.
êê "
DeterminarMovimiento
êê &
(
êê& '
nombreUsuario
êê' 4
,
êê4 5
mensaje
êê6 =
)
êê= >
;
êê> ?
break
ëë
 
;
ëë 
case
íí 
$num
íí 
:
íí 
Partida
ìì
 
.
ìì 
bt_Abandonar
ìì 
.
ìì 
	IsEnabled
ìì (
=
ìì) *
false
ìì+ 0
;
ìì0 1
Partida
îî
 
.
îî 
tb_Mensajes
îî 
.
îî 
Text
îî "
=
îî# $
Partida
îî% ,
.
îî, -
tb_Mensajes
îî- 8
.
îî8 9
Text
îî9 =
+
îî> ?
$str
îî@ C
+
îîD E
nombreUsuario
îîF S
+
îîT U

Properties
îîV `
.
îî` a
	Resources
îîa j
.
îîj k
ms_TurnoPerdido
îîk z
+
îî{ |
$strîî} Ñ
;îîÑ Ö
Partida
ïï
 
.
ïï 
CambiarTurno
ïï 
(
ïï 
nombreUsuario
ïï ,
)
ïï, -
;
ïï- .
break
ññ
 
;
ññ 
case
óó 
$num
óó 
:
óó 
Partida
òò
 
.
òò  
MoverFichaAbandono
òò $
(
òò$ %
nombreUsuario
òò% 2
,
òò2 3
Partida
òò4 ;
.
òò; <
PartidaEnJuego
òò< J
.
òòJ K
JugadoresPartida
òòK [
)
òò[ \
;
òò\ ]
Partida
ôô
 
.
ôô 
tb_Mensajes
ôô 
.
ôô 
Text
ôô "
=
ôô# $
Partida
ôô% ,
.
ôô, -
tb_Mensajes
ôô- 8
.
ôô8 9
Text
ôô9 =
+
ôô> ?
nombreUsuario
ôô@ M
+
ôôN O

Properties
ôôP Z
.
ôôZ [
	Resources
ôô[ d
.
ôôd e
ms_Salir
ôôe m
+
ôôn o
$str
ôôp v
;
ôôv w
break
öö
 
;
öö 
}
õõ 
Partida
úú 
.
úú 
tb_Mensajes
úú 
.
úú 
ScrollToEnd
úú %
(
úú% &
)
úú& '
;
úú' (
}
ùù 
}
ûû 
}üü Ÿ∆
ôC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Registrarse.xaml.cs
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

Properties	ccx Ç
.
ccÇ É
	Resources
ccÉ å
.
ccå ç

ms_Mensaje
ccç ó
)
ccó ò
)
ccò ô
{
ccö õ
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
pb_ConfirmarContrasenia	}}k Ç
.
}}Ç É
Password
}}É ã
)
}}ã å
)
}}å ç
{
}}é è
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
ÄÄ 
(
ÄÄ $
ValidarDatosPersonales
ÄÄ &
(
ÄÄ& '
)
ÄÄ' (
)
ÄÄ( )
{
ÄÄ* +
validar
ÅÅ 
=
ÅÅ )
ValidarTerminosYCondiciones
ÅÅ 3
(
ÅÅ3 4
)
ÅÅ4 5
;
ÅÅ5 6
}
ÇÇ 
}
ÉÉ
 
else
ÉÉ 
{
ÉÉ %
pb_ConfirmarContrasenia
ÑÑ #
.
ÑÑ# $
Password
ÑÑ$ ,
=
ÑÑ- .
$str
ÑÑ/ 1
;
ÑÑ1 2

MessageBox
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ 

Properties
ÖÖ &
.
ÖÖ& '
	Resources
ÖÖ' 0
.
ÖÖ0 1&
mb_ContraseniaNoCoincide
ÖÖ1 I
,
ÖÖI J

Properties
ÖÖK U
.
ÖÖU V
	Resources
ÖÖV _
.
ÖÖ_ `
	mb_Alerta
ÖÖ` i
)
ÖÖi j
;
ÖÖj k
}
ÜÜ
 
}
áá 	
else
áá
 
{
áá 
pb_Contrasenia
àà
 
.
àà 
Password
àà !
=
àà" #
$str
àà$ &
;
àà& '%
pb_ConfirmarContrasenia
ââ
 !
.
ââ! "
Password
ââ" *
=
ââ+ ,
$str
ââ- /
;
ââ/ 0

MessageBox
ää
 
.
ää 
Show
ää 
(
ää 

Properties
ää $
.
ää$ %
	Resources
ää% .
.
ää. /$
mb_ContraseniaInvalida
ää/ E
,
ääE F

Properties
ääG Q
.
ääQ R
	Resources
ääR [
.
ää[ \
	mb_Alerta
ää\ e
)
ääe f
;
ääf g
}
ãã 	
}
åå 
else
åå 
{
åå 

MessageBox
çç 
.
çç 
Show
çç 
(
çç 

Properties
çç "
.
çç" #
	Resources
çç# ,
.
çç, -
mb_DatosVacios
çç- ;
,
çç; <

Properties
çç= G
.
ççG H
	Resources
ççH Q
.
ççQ R
	mb_Alerta
ççR [
)
çç[ \
;
çç\ ]
}
éé 
return
èè 
validar
èè 
;
èè 
}
êê 
public
§§ 

Boolean
§§ #
ValidarDatosCompletos
§§ (
(
§§( )
string
§§) /
nombre
§§0 6
,
§§6 7
string
§§8 >
correo
§§? E
,
§§E F
string
§§G M
contrasenia
§§N Y
,
§§Y Z
string
§§[ a"
confirmarcontrasenia
§§b v
)
§§v w
{
§§x y
Boolean
•• 
validar
•• 
=
•• 
false
•• 
;
•• 
if
¶¶ 
(
¶¶	 

(
¶¶
 
nombre
¶¶ 
!=
¶¶ 
null
¶¶ 
&&
¶¶ 
nombre
¶¶ #
.
¶¶# $
Length
¶¶$ *
>
¶¶+ ,
$num
¶¶- .
)
¶¶. /
&&
¶¶0 2
(
ßß	 

correo
ßß
 
!=
ßß 
null
ßß 
&&
ßß 
correo
ßß "
.
ßß" #
Length
ßß# )
>
ßß* +
$num
ßß, -
)
ßß- .
&&
ßß/ 1
(
®®	 

contrasenia
®®
 
!=
®® 
null
®® 
&&
®®  
contrasenia
®®! ,
.
®®, -
Length
®®- 3
>
®®4 5
$num
®®6 7
)
®®7 8
&&
®®9 ;
(
©©	 
"
confirmarcontrasenia
©©
 
!=
©© !
null
©©" &
&&
©©' )"
confirmarcontrasenia
©©* >
.
©©> ?
Length
©©? E
>
©©F G
$num
©©H I
)
©©I J
)
©©J K
{
©©L M
validar
™™ 
=
™™ 
true
™™ 
;
™™ 
}
´´ 
return
¨¨ 
validar
¨¨ 
;
¨¨ 
}
≠≠ 
public
∂∂ 

Boolean
∂∂  
ValidarContrasenia
∂∂ %
(
∂∂% &
String
∂∂& ,
contrasenia
∂∂- 8
)
∂∂8 9
{
∂∂: ;
Boolean
∑∑ 
validar
∑∑ 
=
∑∑ 
true
∑∑ 
,
∑∑ 
letra
∑∑ #
=
∑∑$ %
false
∑∑& +
,
∑∑+ ,
numero
∑∑- 3
=
∑∑4 5
false
∑∑6 ;
;
∑∑; <
if
∏∏ 
(
∏∏	 

contrasenia
∏∏
 
.
∏∏ 
Length
∏∏ 
<
∏∏ 
$num
∏∏  
)
∏∏  !
{
∏∏" #
validar
ππ 
=
ππ 
false
ππ 
;
ππ 
}
∫∫ 
if
ªª 
(
ªª	 

validar
ªª
 
)
ªª 
{
ªª 
validar
ºº 
=
ºº 
false
ºº 
;
ºº 
for
ΩΩ 
(
ΩΩ 
int
ΩΩ 
i
ΩΩ 
=
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
i
ΩΩ 
<
ΩΩ 
contrasenia
ΩΩ '
.
ΩΩ' (
Length
ΩΩ( .
;
ΩΩ. /
i
ΩΩ0 1
++
ΩΩ1 3
)
ΩΩ3 4
{
ΩΩ5 6
letra
ææ
 
=
ææ '
ValidarLetraEnContrasenia
ææ +
(
ææ+ ,
letra
ææ, 1
,
ææ1 2
contrasenia
ææ3 >
,
ææ> ?
i
ææ@ A
)
ææA B
;
ææB C
if
øø
 
(
øø 
!
øø 
numero
øø 
&&
øø 
contrasenia
øø $
[
øø$ %
i
øø% &
]
øø& '
>=
øø( *
$num
øø+ -
&&
øø. 0
contrasenia
øø1 <
[
øø< =
i
øø= >
]
øø> ?
<=
øø@ B
$num
øøC E
)
øøE F
{
øøG H
numero
¿¿ 
=
¿¿ 
true
¿¿ 
;
¿¿ 
}
¡¡
 
}
¬¬ 	
}
√√ 
if
ƒƒ 
(
ƒƒ	 

letra
ƒƒ
 
&&
ƒƒ 
numero
ƒƒ 
)
ƒƒ 
{
ƒƒ 
validar
≈≈ 
=
≈≈ 
true
≈≈ 
;
≈≈ 
}
∆∆ 
return
«« 
validar
«« 
;
«« 
}
»» 
public
ŸŸ 

Boolean
ŸŸ '
ValidarLetraEnContrasenia
ŸŸ ,
(
ŸŸ, -
Boolean
ŸŸ- 4
letra
ŸŸ5 :
,
ŸŸ: ;
String
ŸŸ< B
contrasenia
ŸŸC N
,
ŸŸN O
int
ŸŸP S
i
ŸŸT U
)
ŸŸU V
{
ŸŸW X
Boolean
⁄⁄ 
validar
⁄⁄ 
=
⁄⁄ 
letra
⁄⁄ 
;
⁄⁄ 
if
€€ 
(
€€	 

!
€€
 
letra
€€ 
&&
€€ 
(
€€ 
(
€€ 
contrasenia
€€ !
[
€€! "
i
€€" #
]
€€# $
>=
€€% '
$num
€€( *
&&
€€+ -
contrasenia
€€. 9
[
€€9 :
i
€€: ;
]
€€; <
<=
€€= ?
$num
€€@ B
)
€€B C
||
€€D F
(
‹‹
 
contrasenia
‹‹ 
[
‹‹ 
i
‹‹ 
]
‹‹ 
>=
‹‹ 
$num
‹‹ 
&&
‹‹  "
contrasenia
‹‹# .
[
‹‹. /
i
‹‹/ 0
]
‹‹0 1
<=
‹‹2 4
$num
‹‹5 8
)
‹‹8 9
||
‹‹: <
contrasenia
››
 
[
›› 
i
›› 
]
›› 
.
›› 
Equals
›› 
(
››  
$char
››  #
)
››# $
||
››% '
contrasenia
››( 3
[
››3 4
i
››4 5
]
››5 6
.
››6 7
Equals
››7 =
(
››= >
$char
››> A
)
››A B
||
››C E
contrasenia
››F Q
[
››Q R
i
››R S
]
››S T
.
››T U
Equals
››U [
(
››[ \
$char
››\ _
)
››_ `
||
››a c
contrasenia
ﬁﬁ
 
[
ﬁﬁ 
i
ﬁﬁ 
]
ﬁﬁ 
.
ﬁﬁ 
Equals
ﬁﬁ 
(
ﬁﬁ  
$char
ﬁﬁ  #
)
ﬁﬁ# $
||
ﬁﬁ% '
contrasenia
ﬁﬁ( 3
[
ﬁﬁ3 4
i
ﬁﬁ4 5
]
ﬁﬁ5 6
.
ﬁﬁ6 7
Equals
ﬁﬁ7 =
(
ﬁﬁ= >
$char
ﬁﬁ> A
)
ﬁﬁA B
||
ﬁﬁC E
contrasenia
ﬁﬁF Q
[
ﬁﬁQ R
i
ﬁﬁR S
]
ﬁﬁS T
.
ﬁﬁT U
Equals
ﬁﬁU [
(
ﬁﬁ[ \
$char
ﬁﬁ\ _
)
ﬁﬁ_ `
||
ﬁﬁa c
contrasenia
ﬂﬂ
 
[
ﬂﬂ 
i
ﬂﬂ 
]
ﬂﬂ 
.
ﬂﬂ 
Equals
ﬂﬂ 
(
ﬂﬂ  
$char
ﬂﬂ  #
)
ﬂﬂ# $
||
ﬂﬂ% '
contrasenia
ﬂﬂ( 3
[
ﬂﬂ3 4
i
ﬂﬂ4 5
]
ﬂﬂ5 6
.
ﬂﬂ6 7
Equals
ﬂﬂ7 =
(
ﬂﬂ= >
$char
ﬂﬂ> A
)
ﬂﬂA B
||
ﬂﬂC E
contrasenia
ﬂﬂF Q
[
ﬂﬂQ R
i
ﬂﬂR S
]
ﬂﬂS T
.
ﬂﬂT U
Equals
ﬂﬂU [
(
ﬂﬂ[ \
$char
ﬂﬂ\ _
)
ﬂﬂ_ `
||
ﬂﬂa c
contrasenia
‡‡
 
[
‡‡ 
i
‡‡ 
]
‡‡ 
.
‡‡ 
Equals
‡‡ 
(
‡‡  
$char
‡‡  #
)
‡‡# $
||
‡‡% '
contrasenia
‡‡( 3
[
‡‡3 4
i
‡‡4 5
]
‡‡5 6
.
‡‡6 7
Equals
‡‡7 =
(
‡‡= >
$char
‡‡> A
)
‡‡A B
||
‡‡C E
contrasenia
‡‡F Q
[
‡‡Q R
i
‡‡R S
]
‡‡S T
.
‡‡T U
Equals
‡‡U [
(
‡‡[ \
$char
‡‡\ _
)
‡‡_ `
)
‡‡` a
)
‡‡a b
{
‡‡c d
validar
·· 
=
·· 
true
·· 
;
·· 
}
‚‚ 
return
„„ 
validar
„„ 
;
„„ 
}
‰‰ 
public
ÚÚ 

Boolean
ÚÚ "
VerificarContrasenia
ÚÚ '
(
ÚÚ' (
string
ÚÚ( .
contrasenia
ÚÚ/ :
,
ÚÚ: ;
string
ÚÚ< B!
confirmaContrasenia
ÚÚC V
)
ÚÚV W
{
ÚÚX Y
Boolean
ÛÛ 
	verificar
ÛÛ 
=
ÛÛ 
false
ÛÛ 
;
ÛÛ  
if
ÙÙ 
(
ÙÙ	 

contrasenia
ÙÙ
 
.
ÙÙ 
Equals
ÙÙ 
(
ÙÙ !
confirmaContrasenia
ÙÙ 0
)
ÙÙ0 1
)
ÙÙ1 2
{
ÙÙ3 4
	verificar
ıı 
=
ıı 
true
ıı 
;
ıı 
}
ˆˆ 
return
˜˜ 
	verificar
˜˜ 
;
˜˜ 
}
¯¯ 
private
ÄÄ 
Boolean
ÄÄ $
ValidarDatosPersonales
ÄÄ *
(
ÄÄ* +
)
ÄÄ+ ,
{
ÄÄ- .
Boolean
ÅÅ 
validar
ÅÅ 
=
ÅÅ 
false
ÅÅ 
;
ÅÅ 
if
ÇÇ 
(
ÇÇ	 
"
ValidarNombreUsuario
ÇÇ
 
(
ÇÇ 
tb_NombreUsuario
ÇÇ /
.
ÇÇ/ 0
Text
ÇÇ0 4
)
ÇÇ4 5
)
ÇÇ5 6
{
ÇÇ7 8
if
ÉÉ 

(
ÉÉ &
ValidarCorreoElectronico
ÉÉ $
(
ÉÉ$ %"
tb_CorreoElectronico
ÉÉ% 9
.
ÉÉ9 :
Text
ÉÉ: >
)
ÉÉ> ?
)
ÉÉ? @
{
ÉÉA B
int
ÑÑ
 
verificarNombre
ÑÑ 
=
ÑÑ $
VerificarNombreUsuario
ÑÑ  6
(
ÑÑ6 7
tb_NombreUsuario
ÑÑ7 G
.
ÑÑG H
Text
ÑÑH L
)
ÑÑL M
;
ÑÑM N
if
ÖÖ
 
(
ÖÖ 
verificarNombre
ÖÖ 
==
ÖÖ  
$num
ÖÖ! "
)
ÖÖ" #
{
ÖÖ$ %
int
ÜÜ 
verificarCorreo
ÜÜ 
=
ÜÜ  !(
VerificarCorreoElectronico
ÜÜ" <
(
ÜÜ< ="
tb_CorreoElectronico
ÜÜ= Q
.
ÜÜQ R
Text
ÜÜR V
)
ÜÜV W
;
ÜÜW X
if
áá 
(
áá 
verificarCorreo
áá 
==
áá  "
$num
áá# $
)
áá$ %
{
áá& '
validar
àà 
=
àà 
true
àà 
;
àà 
}
ââ 
else
ââ 
{
ââ !
MandarMensajesError
ää !
(
ää! "
verificarCorreo
ää" 1
,
ää1 2
false
ää3 8
)
ää8 9
;
ää9 :
}
ãã 
}
åå
 
else
åå 
{
åå !
MandarMensajesError
çç 
(
çç  
verificarNombre
çç  /
,
çç/ 0
true
çç1 5
)
çç5 6
;
çç6 7
}
éé
 
}
èè 	
else
èè
 
{
èè 

MessageBox
êê
 
.
êê 
Show
êê 
(
êê 

Properties
êê $
.
êê$ %
	Resources
êê% .
.
êê. /
mb_CorreoInvalido
êê/ @
,
êê@ A

Properties
êêB L
.
êêL M
	Resources
êêM V
.
êêV W
	mb_Alerta
êêW `
)
êê` a
;
êêa b
}
ëë 	
}
íí 
else
íí 
{
íí 
tb_NombreUsuario
ìì 
.
ìì 
Text
ìì 
=
ìì 
$str
ìì  "
;
ìì" #

MessageBox
îî 
.
îî 
Show
îî 
(
îî 

Properties
îî "
.
îî" #
	Resources
îî# ,
.
îî, -$
mb_CaracteresInvalidos
îî- C
,
îîC D

Properties
îîE O
.
îîO P
	Resources
îîP Y
.
îîY Z
	mb_Alerta
îîZ c
)
îîc d
;
îîd e
}
ïï 
return
ññ 
validar
ññ 
;
ññ 
}
óó 
public
££ 

Boolean
££ "
ValidarNombreUsuario
££ '
(
££' (
string
££( .
nombre
££/ 5
)
££5 6
{
££7 8
Boolean
§§ 
validar
§§ 
=
§§ 
true
§§ 
;
§§ 
for
•• 	
(
••
 
int
•• 
i
•• 
=
•• 
$num
•• 
;
•• 
i
•• 
<
•• 
nombre
••  
.
••  !
Length
••! '
;
••' (
i
••) *
++
••* ,
)
••, -
{
••. /
if
¶¶ 

(
¶¶ 
!
¶¶ 
(
¶¶ 
(
¶¶ 
nombre
¶¶ 
[
¶¶ 
i
¶¶ 
]
¶¶ 
>=
¶¶ 
$num
¶¶ 
&&
¶¶ !
nombre
¶¶" (
[
¶¶( )
i
¶¶) *
]
¶¶* +
<=
¶¶, .
$num
¶¶/ 1
)
¶¶1 2
||
¶¶3 5
(
ßß
 
nombre
ßß 
[
ßß 
i
ßß 
]
ßß 
>=
ßß 
$num
ßß 
&&
ßß 
nombre
ßß $
[
ßß$ %
i
ßß% &
]
ßß& '
<=
ßß( *
$num
ßß+ .
)
ßß. /
||
ßß0 2
(
®®
 
nombre
®® 
[
®® 
i
®® 
]
®® 
>=
®® 
$num
®® 
&&
®® 
nombre
®® $
[
®®$ %
i
®®% &
]
®®& '
<=
®®( *
$num
®®+ -
)
®®- .
||
®®/ 1
nombre
©©
 
[
©© 
i
©© 
]
©© 
.
©© 
Equals
©© 
(
©© 
$char
©© 
)
©© 
||
©©  "
nombre
©©# )
[
©©) *
i
©©* +
]
©©+ ,
.
©©, -
Equals
©©- 3
(
©©3 4
$char
©©4 7
)
©©7 8
||
©©9 ;
nombre
©©< B
[
©©B C
i
©©C D
]
©©D E
.
©©E F
Equals
©©F L
(
©©L M
$char
©©M P
)
©©P Q
||
©©R T
nombre
™™
 
[
™™ 
i
™™ 
]
™™ 
.
™™ 
Equals
™™ 
(
™™ 
$char
™™ 
)
™™ 
||
™™  "
nombre
™™# )
[
™™) *
i
™™* +
]
™™+ ,
.
™™, -
Equals
™™- 3
(
™™3 4
$char
™™4 7
)
™™7 8
||
™™9 ;
nombre
™™< B
[
™™B C
i
™™C D
]
™™D E
.
™™E F
Equals
™™F L
(
™™L M
$char
™™M P
)
™™P Q
||
™™R T
nombre
´´
 
[
´´ 
i
´´ 
]
´´ 
.
´´ 
Equals
´´ 
(
´´ 
$char
´´ 
)
´´ 
||
´´  "
nombre
´´# )
[
´´) *
i
´´* +
]
´´+ ,
.
´´, -
Equals
´´- 3
(
´´3 4
$char
´´4 7
)
´´7 8
||
´´9 ;
nombre
´´< B
[
´´B C
i
´´C D
]
´´D E
.
´´E F
Equals
´´F L
(
´´L M
$char
´´M P
)
´´P Q
||
´´R T
nombre
¨¨
 
[
¨¨ 
i
¨¨ 
]
¨¨ 
.
¨¨ 
Equals
¨¨ 
(
¨¨ 
$char
¨¨ 
)
¨¨ 
||
¨¨  "
nombre
¨¨# )
[
¨¨) *
i
¨¨* +
]
¨¨+ ,
.
¨¨, -
Equals
¨¨- 3
(
¨¨3 4
$char
¨¨4 7
)
¨¨7 8
||
¨¨9 ;
nombre
¨¨< B
[
¨¨B C
i
¨¨C D
]
¨¨D E
.
¨¨E F
Equals
¨¨F L
(
¨¨L M
$char
¨¨M P
)
¨¨P Q
||
¨¨R T
nombre
≠≠
 
[
≠≠ 
i
≠≠ 
]
≠≠ 
.
≠≠ 
Equals
≠≠ 
(
≠≠ 
$char
≠≠ 
)
≠≠ 
)
≠≠  
)
≠≠  !
{
≠≠" #
validar
ÆÆ
 
=
ÆÆ 
false
ÆÆ 
;
ÆÆ 
break
ØØ
 
;
ØØ 
}
∞∞ 	
}
±± 
return
≤≤ 
validar
≤≤ 
;
≤≤ 
}
≥≥ 
public
øø 

Boolean
øø &
ValidarCorreoElectronico
øø +
(
øø+ ,
string
øø, 2
correo
øø3 9
)
øø9 :
{
øø; <
Boolean
¿¿ 
validar
¿¿ 
=
¿¿ 
false
¿¿ 
;
¿¿ 
int
¡¡ 	
posicionArroba
¡¡
 
=
¡¡ 
$num
¡¡ 
;
¡¡ 
for
¬¬ 	
(
¬¬
 
int
¬¬ 
i
¬¬ 
=
¬¬ 
$num
¬¬ 
;
¬¬ 
i
¬¬ 
<
¬¬ 
correo
¬¬  
.
¬¬  !
Length
¬¬! '
;
¬¬' (
i
¬¬) *
++
¬¬* ,
)
¬¬, -
{
¬¬. /
if
√√ 

(
√√ 
correo
√√ 
[
√√ 
i
√√ 
]
√√ 
.
√√ 
Equals
√√ 
(
√√ 
$char
√√  
)
√√  !
)
√√! "
{
√√# $
validar
ƒƒ
 
=
ƒƒ 
false
ƒƒ 
;
ƒƒ 
break
≈≈
 
;
≈≈ 
}
∆∆ 	
if
«« 

(
«« 
correo
«« 
[
«« 
i
«« 
]
«« 
.
«« 
Equals
«« 
(
«« 
$char
««  
)
««  !
&&
««" $
i
««% &
>
««' (
$num
««) *
)
««* +
{
««, -
if
»»
 
(
»» 
posicionArroba
»» 
>
»» 
$num
»»  
||
»»! #
correo
»»$ *
[
»»* +
i
»»+ ,
-
»»- .
$num
»»/ 0
]
»»0 1
.
»»1 2
Equals
»»2 8
(
»»8 9
$char
»»9 <
)
»»< =
)
»»= >
{
»»? @
validar
…… 
=
…… 
false
…… 
;
…… 
break
   
;
   
}
ÀÀ
 
else
ÀÀ 
{
ÀÀ 
posicionArroba
ÃÃ 
=
ÃÃ 
i
ÃÃ 
;
ÃÃ 
}
ÕÕ
 
}
ŒŒ 	
validar
œœ 
=
œœ "
ValidarPuntoEnCorreo
œœ &
(
œœ& '
validar
œœ' .
,
œœ. /
correo
œœ0 6
,
œœ6 7
posicionArroba
œœ8 F
,
œœF G
i
œœH I
)
œœI J
;
œœJ K
}
–– 
return
—— 
validar
—— 
;
—— 
}
““ 
public
ÊÊ 

Boolean
ÊÊ "
ValidarPuntoEnCorreo
ÊÊ '
(
ÊÊ' (
Boolean
ÊÊ( /
validar
ÊÊ0 7
,
ÊÊ7 8
String
ÊÊ9 ?
correo
ÊÊ@ F
,
ÊÊF G
int
ÊÊH K
posicionArroba
ÊÊL Z
,
ÊÊZ [
int
ÊÊ\ _
i
ÊÊ` a
)
ÊÊa b
{
ÊÊc d
if
ÁÁ 
(
ÁÁ	 

correo
ÁÁ
 
[
ÁÁ 
i
ÁÁ 
]
ÁÁ 
.
ÁÁ 
Equals
ÁÁ 
(
ÁÁ 
$char
ÁÁ 
)
ÁÁ 
&&
ÁÁ  "
posicionArroba
ÁÁ# 1
>
ÁÁ2 3
$num
ÁÁ4 5
&&
ÁÁ6 8
i
ÁÁ9 :
>
ÁÁ; <
posicionArroba
ÁÁ= K
+
ÁÁL M
$num
ÁÁN O
)
ÁÁO P
{
ÁÁQ R
if
ËË 

(
ËË 
i
ËË 
<
ËË 
correo
ËË 
.
ËË 
Length
ËË 
-
ËË 
$num
ËË  !
)
ËË! "
{
ËË# $
validar
ÈÈ
 
=
ÈÈ 
true
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
else
ÍÍ
 
{
ÍÍ 
validar
ÎÎ
 
=
ÎÎ 
false
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
}
ÌÌ 
return
ÓÓ 
validar
ÓÓ 
;
ÓÓ 
}
ÔÔ 
public
˙˙ 

int
˙˙ $
VerificarNombreUsuario
˙˙ %
(
˙˙% &
string
˙˙& ,
nombre
˙˙- 3
)
˙˙3 4
{
˙˙5 6
int
˚˚ 	
	verificar
˚˚
 
=
˚˚ 
$num
˚˚ 
;
˚˚ 
try
¸¸ 	
{
¸¸
 

ServiceSYE
˝˝ 
.
˝˝ 
Jugador
˝˝ 
jugador
˝˝ "
=
˝˝# $
cliente
˝˝% ,
.
˝˝, -%
ObtenerJugadorPorNombre
˝˝- D
(
˝˝D E
nombre
˝˝E K
)
˝˝K L
;
˝˝L M
if
˛˛ 

(
˛˛ 
jugador
˛˛ 
.
˛˛ 
NombreUsuario
˛˛ !
.
˛˛! "
Equals
˛˛" (
(
˛˛( )
$str
˛˛) +
)
˛˛+ ,
)
˛˛, -
{
˛˛. /
	verificar
ˇˇ
 
=
ˇˇ 
$num
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
if
ÅÅ 

(
ÅÅ 
jugador
ÅÅ 
.
ÅÅ 
NombreUsuario
ÅÅ !
.
ÅÅ! "
Equals
ÅÅ" (
(
ÅÅ( )
$str
ÅÅ) ,
)
ÅÅ, -
)
ÅÅ- .
{
ÅÅ/ 0
	verificar
ÇÇ
 
=
ÇÇ 
$num
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ %
)
ÑÑ% &
{
ÑÑ' (
	verificar
ÖÖ 
=
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
}
ÜÜ 
return
áá 
	verificar
áá 
;
áá 
}
àà 
public
ìì 

int
ìì (
VerificarCorreoElectronico
ìì )
(
ìì) *
string
ìì* 0
correo
ìì1 7
)
ìì7 8
{
ìì9 :
int
îî 	
	verificar
îî
 
=
îî 
$num
îî 
;
îî 
try
ïï 	
{
ïï
 

ServiceSYE
ññ 
.
ññ 
Jugador
ññ 
jugador
ññ "
=
ññ# $
cliente
ññ% ,
.
ññ, -%
ObtenerJugadorPorCorreo
ññ- D
(
ññD E
correo
ññE K
)
ññK L
;
ññL M
if
óó 

(
óó 
jugador
óó 
.
óó 
CorreoElectronico
óó %
.
óó% &
Equals
óó& ,
(
óó, -
$str
óó- /
)
óó/ 0
)
óó0 1
{
óó2 3
	verificar
òò
 
=
òò 
$num
òò 
;
òò 
}
ôô 	
if
öö 

(
öö 
jugador
öö 
.
öö 
NombreUsuario
öö !
.
öö! "
Equals
öö" (
(
öö( )
$str
öö) ,
)
öö, -
)
öö- .
{
öö/ 0
	verificar
õõ
 
=
õõ 
$num
õõ 
;
õõ 
}
úú 	
}
ùù 
catch
ùù 
(
ùù $
CommunicationException
ùù %
)
ùù% &
{
ùù' (
	verificar
ûû 
=
ûû 
$num
ûû 
;
ûû 
}
üü 
return
†† 
	verificar
†† 
;
†† 
}
°° 
private
©© 
Boolean
©© )
ValidarTerminosYCondiciones
©© /
(
©©/ 0
)
©©0 1
{
©©2 3
Boolean
™™ 
validar
™™ 
=
™™ 
false
™™ 
;
™™ 
if
´´ 
(
´´	 

cb_Terminos
´´
 
.
´´ 
	IsChecked
´´ 
==
´´  "
true
´´# '
)
´´' (
{
´´) *
validar
¨¨ 
=
¨¨ 
true
¨¨ 
;
¨¨ 
}
≠≠ 
else
≠≠ 
{
≠≠ 

MessageBox
ÆÆ 
.
ÆÆ 
Show
ÆÆ 
(
ÆÆ 

Properties
ÆÆ "
.
ÆÆ" #
	Resources
ÆÆ# ,
.
ÆÆ, - 
ms_AceptarTerminos
ÆÆ- ?
,
ÆÆ? @

Properties
ÆÆA K
.
ÆÆK L
	Resources
ÆÆL U
.
ÆÆU V
	mb_Alerta
ÆÆV _
)
ÆÆ_ `
;
ÆÆ` a
}
ØØ 
return
∞∞ 
validar
∞∞ 
;
∞∞ 
}
±± 
public
∑∑ 

String
∑∑ 
GenerarCodigo
∑∑ 
(
∑∑  
)
∑∑  !
{
∑∑" #
String
∏∏ 
codigo
∏∏ 
=
∏∏ 
$str
∏∏ 
;
∏∏ 
while
ππ 
(
ππ 
string
ππ 
.
ππ 
IsNullOrEmpty
ππ !
(
ππ! "
codigo
ππ" (
)
ππ( )
)
ππ) *
{
ππ+ ,
Random
∫∫ 
random
∫∫ 
=
∫∫ 
new
∫∫ 
Random
∫∫ "
(
∫∫" #
)
∫∫# $
;
∫∫$ %
StringBuilder
ªª 
codigoGenerado
ªª $
=
ªª% &
new
ªª' *
StringBuilder
ªª+ 8
(
ªª8 9
)
ªª9 :
;
ªª: ;
for
ºº 
(
ºº 
int
ºº 
i
ºº 
=
ºº 
$num
ºº 
;
ºº 
i
ºº 
<
ºº 
$num
ºº 
;
ºº 
i
ºº  
++
ºº  "
)
ºº" #
{
ºº$ %
codigoGenerado
ΩΩ
 
.
ΩΩ 
Append
ΩΩ 
(
ΩΩ  
random
ΩΩ  &
.
ΩΩ& '
Next
ΩΩ' +
(
ΩΩ+ ,
$num
ΩΩ, .
)
ΩΩ. /
)
ΩΩ/ 0
;
ΩΩ0 1
}
ææ 	
codigo
øø 
=
øø 
codigoGenerado
øø 
.
øø  
ToString
øø  (
(
øø( )
)
øø) *
;
øø* +
try
¿¿ 
{
¿¿ 
int
¡¡
 
validarCodigo
¡¡ 
=
¡¡ 
cliente
¡¡ %
.
¡¡% &
ValidarCodigo
¡¡& 3
(
¡¡3 4
codigo
¡¡4 :
)
¡¡: ;
;
¡¡; <
if
¬¬
 
(
¬¬ 
validarCodigo
¬¬ 
!=
¬¬ 
$num
¬¬  
)
¬¬  !
{
¬¬" #
if
√√ 
(
√√ 
validarCodigo
√√ 
==
√√  
$num
√√! "
||
√√# %
codigo
√√& ,
.
√√, -
Equals
√√- 3
(
√√3 4
$str
√√4 ;
)
√√; <
)
√√< =
{
√√> ?
codigo
ƒƒ 
=
ƒƒ 
$str
ƒƒ 
;
ƒƒ 
}
≈≈ 
}
∆∆
 
else
∆∆ 
{
∆∆ 
codigo
«« 
=
«« 
$str
«« 
;
«« 
}
»»
 
}
…… 	
catch
……
 
(
…… $
CommunicationException
…… '
)
……' (
{
……) *
codigo
  
 
=
   
$str
   
;
   
}
ÀÀ 	
}
ÃÃ 
return
ÕÕ 
codigo
ÕÕ 
;
ÕÕ 
}
ŒŒ 
private
ŸŸ 
void
ŸŸ !
MandarMensajesError
ŸŸ $
(
ŸŸ$ %
int
ŸŸ% (
	verificar
ŸŸ) 2
,
ŸŸ2 3
Boolean
ŸŸ4 ;
nombre
ŸŸ< B
)
ŸŸB C
{
ŸŸD E
if
⁄⁄ 
(
⁄⁄	 

	verificar
⁄⁄
 
==
⁄⁄ 
$num
⁄⁄ 
)
⁄⁄ 
{
⁄⁄ 
if
€€ 

(
€€ 
nombre
€€ 
)
€€ 
{
€€ 
tb_NombreUsuario
‹‹
 
.
‹‹ 
Text
‹‹ 
=
‹‹  !
$str
‹‹" $
;
‹‹$ %

MessageBox
››
 
.
›› 
Show
›› 
(
›› 

Properties
›› $
.
››$ %
	Resources
››% .
.
››. /
mb_NombreOcupado
››/ ?
,
››? @

Properties
››A K
.
››K L
	Resources
››L U
.
››U V
	mb_Alerta
››V _
)
››_ `
;
››` a
}
ﬁﬁ 	
else
ﬁﬁ
 
{
ﬁﬁ "
tb_CorreoElectronico
ﬂﬂ
 
.
ﬂﬂ 
Text
ﬂﬂ #
=
ﬂﬂ$ %
$str
ﬂﬂ& (
;
ﬂﬂ( )

MessageBox
‡‡
 
.
‡‡ 
Show
‡‡ 
(
‡‡ 

Properties
‡‡ $
.
‡‡$ %
	Resources
‡‡% .
.
‡‡. /
mb_CorreoOcupado
‡‡/ ?
,
‡‡? @

Properties
‡‡A K
.
‡‡K L
	Resources
‡‡L U
.
‡‡U V
	mb_Alerta
‡‡V _
)
‡‡_ `
;
‡‡` a
}
·· 	
}
‚‚ 
else
‚‚ 
{
‚‚ 
if
„„ 

(
„„ 
	verificar
„„ 
==
„„ 
$num
„„ 
)
„„ 
{
„„ 

MessageBox
‰‰
 
.
‰‰ 
Show
‰‰ 
(
‰‰ 

Properties
‰‰ $
.
‰‰$ %
	Resources
‰‰% .
.
‰‰. /
mb_ConexionBD
‰‰/ <
,
‰‰< =

Properties
‰‰> H
.
‰‰H I
	Resources
‰‰I R
.
‰‰R S
	mb_Alerta
‰‰S \
)
‰‰\ ]
;
‰‰] ^
}
ÂÂ 	
else
ÂÂ
 
{
ÂÂ 

MessageBox
ÊÊ
 
.
ÊÊ 
Show
ÊÊ 
(
ÊÊ 

Properties
ÊÊ $
.
ÊÊ$ %
	Resources
ÊÊ% .
.
ÊÊ. /!
mb_ConexionServidor
ÊÊ/ B
,
ÊÊB C

Properties
ÊÊD N
.
ÊÊN O
	Resources
ÊÊO X
.
ÊÊX Y
	mb_Alerta
ÊÊY b
)
ÊÊb c
;
ÊÊc d
}
ÁÁ 	
}
ËË 
}
ÈÈ 
private
ıı 
string
ıı 
ComputeSha256Hash
ıı $
(
ıı$ %
string
ıı% +
rawData
ıı, 3
)
ıı3 4
{
ıı5 6
using
ˆˆ 
(
ˆˆ 
SHA256
ˆˆ 

sha256Hash
ˆˆ 
=
ˆˆ  
SHA256
ˆˆ! '
.
ˆˆ' (
Create
ˆˆ( .
(
ˆˆ. /
)
ˆˆ/ 0
)
ˆˆ0 1
{
ˆˆ2 3
byte
˜˜ 
[
˜˜ 
]
˜˜ 
bytes
˜˜ 
=
˜˜ 

sha256Hash
˜˜ !
.
˜˜! "
ComputeHash
˜˜" -
(
˜˜- .
Encoding
˜˜. 6
.
˜˜6 7
UTF8
˜˜7 ;
.
˜˜; <
GetBytes
˜˜< D
(
˜˜D E
rawData
˜˜E L
)
˜˜L M
)
˜˜M N
;
˜˜N O
StringBuilder
¯¯ 
builder
¯¯ 
=
¯¯ 
new
¯¯  #
StringBuilder
¯¯$ 1
(
¯¯1 2
)
¯¯2 3
;
¯¯3 4
for
˘˘ 
(
˘˘ 
int
˘˘ 
i
˘˘ 
=
˘˘ 
$num
˘˘ 
;
˘˘ 
i
˘˘ 
<
˘˘ 
bytes
˘˘ !
.
˘˘! "
Length
˘˘" (
;
˘˘( )
i
˘˘* +
++
˘˘+ -
)
˘˘- .
{
˘˘/ 0
builder
˙˙
 
.
˙˙ 
Append
˙˙ 
(
˙˙ 
bytes
˙˙ 
[
˙˙ 
i
˙˙  
]
˙˙  !
.
˙˙! "
ToString
˙˙" *
(
˙˙* +
$str
˙˙+ /
)
˙˙/ 0
)
˙˙0 1
;
˙˙1 2
}
˚˚ 	
return
¸¸ 
builder
¸¸ 
.
¸¸ 
ToString
¸¸ 
(
¸¸  
)
¸¸  !
;
¸¸! "
}
˝˝ 
}
˛˛ 
}
ˇˇ 
}ÄÄ ˘
òC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Resultados.xaml.cs
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
}.. À\
ùC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\TablaPosiciones.xaml.cs
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
ÄÄ 
return
ÅÅ 
exito
ÅÅ 
;
ÅÅ 
}
ÇÇ 
}
ÉÉ 
}ÑÑ Í6
õC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\UnirsePartida.xaml.cs
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
}^^ ÆØ
õC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\ValidarCuenta.xaml.cs
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
ÄÄ 	
}
ÅÅ 
else
ÅÅ 
{
ÅÅ #
tb_CodigoVerificacion
ÇÇ 
.
ÇÇ 
Text
ÇÇ "
=
ÇÇ# $
$str
ÇÇ% '
;
ÇÇ' (

MessageBox
ÉÉ 
.
ÉÉ 
Show
ÉÉ 
(
ÉÉ 

Properties
ÉÉ "
.
ÉÉ" #
	Resources
ÉÉ# ,
.
ÉÉ, -!
mb_CodigoIncorrecto
ÉÉ- @
,
ÉÉ@ A

Properties
ÉÉB L
.
ÉÉL M
	Resources
ÉÉM V
.
ÉÉV W
	mb_Alerta
ÉÉW `
)
ÉÉ` a
;
ÉÉa b
}
ÑÑ 
}
ÖÖ 
private
çç 
Boolean
çç 
ValidarDatos
çç  
(
çç  !
)
çç! "
{
çç# $
Boolean
éé 
validar
éé 
=
éé 
false
éé 
;
éé 
if
èè 
(
èè	 

tb_NombreUsuario
èè
 
.
èè 
Text
èè 
!=
èè  "
null
èè# '
&&
èè( *
tb_NombreUsuario
èè+ ;
.
èè; <
Text
èè< @
.
èè@ A
Length
èèA G
>
èèH I
$num
èèJ K
)
èèK L
{
èèM N
if
êê 

(
êê "
ValidarNombreUsuario
êê  
(
êê  !
tb_NombreUsuario
êê! 1
.
êê1 2
Text
êê2 6
)
êê6 7
)
êê7 8
{
êê9 :
validar
ëë
 
=
ëë 
true
ëë 
;
ëë 
}
íí 	
else
íí
 
{
íí 

MessageBox
ìì
 
.
ìì 
Show
ìì 
(
ìì 

Properties
ìì $
.
ìì$ %
	Resources
ìì% .
.
ìì. /$
mb_CaracteresInvalidos
ìì/ E
,
ììE F

Properties
ììG Q
.
ììQ R
	Resources
ììR [
.
ìì[ \
	mb_Alerta
ìì\ e
)
ììe f
;
ììf g
}
îî 	
}
ïï 
else
ïï 
{
ïï 

MessageBox
ññ 
.
ññ 
Show
ññ 
(
ññ 

Properties
ññ "
.
ññ" #
	Resources
ññ# ,
.
ññ, -
mb_IngreseJugador
ññ- >
,
ññ> ?

Properties
ññ@ J
.
ññJ K
	Resources
ññK T
.
ññT U
	mb_Alerta
ññU ^
)
ññ^ _
;
ññ_ `
}
óó 
return
òò 
validar
òò 
;
òò 
}
ôô 
public
•• 

Boolean
•• "
ValidarNombreUsuario
•• '
(
••' (
String
••( .
nombreUsuario
••/ <
)
••< =
{
••> ?
Boolean
¶¶ 
validar
¶¶ 
=
¶¶ 
true
¶¶ 
;
¶¶ 
for
ßß 	
(
ßß
 
int
ßß 
i
ßß 
=
ßß 
$num
ßß 
;
ßß 
i
ßß 
<
ßß 
nombreUsuario
ßß '
.
ßß' (
Length
ßß( .
;
ßß. /
i
ßß0 1
++
ßß1 3
)
ßß3 4
{
ßß5 6
if
®® 

(
®® 
!
®® 
(
®® 
(
®® 
nombreUsuario
®® 
[
®® 
i
®® 
]
®® 
>=
®®  "
$num
®®# %
&&
®®& (
nombreUsuario
®®) 6
[
®®6 7
i
®®7 8
]
®®8 9
<=
®®: <
$num
®®= ?
)
®®? @
||
®®A C
(
©©
 
nombreUsuario
©© 
[
©© 
i
©© 
]
©© 
>=
©© 
$num
©© !
&&
©©" $
nombreUsuario
©©% 2
[
©©2 3
i
©©3 4
]
©©4 5
<=
©©6 8
$num
©©9 <
)
©©< =
||
©©> @
(
™™
 
nombreUsuario
™™ 
[
™™ 
i
™™ 
]
™™ 
>=
™™ 
$num
™™ !
&&
™™" $
nombreUsuario
™™% 2
[
™™2 3
i
™™3 4
]
™™4 5
<=
™™6 8
$num
™™9 ;
)
™™; <
||
™™= ?
nombreUsuario
´´
 
[
´´ 
i
´´ 
]
´´ 
.
´´ 
Equals
´´ !
(
´´! "
$char
´´" %
)
´´% &
||
´´' )
nombreUsuario
´´* 7
[
´´7 8
i
´´8 9
]
´´9 :
.
´´: ;
Equals
´´; A
(
´´A B
$char
´´B E
)
´´E F
||
´´G I
nombreUsuario
¨¨
 
[
¨¨ 
i
¨¨ 
]
¨¨ 
.
¨¨ 
Equals
¨¨ !
(
¨¨! "
$char
¨¨" %
)
¨¨% &
||
¨¨' )
nombreUsuario
¨¨* 7
[
¨¨7 8
i
¨¨8 9
]
¨¨9 :
.
¨¨: ;
Equals
¨¨; A
(
¨¨A B
$char
¨¨B E
)
¨¨E F
||
¨¨G I
nombreUsuario
≠≠
 
[
≠≠ 
i
≠≠ 
]
≠≠ 
.
≠≠ 
Equals
≠≠ !
(
≠≠! "
$char
≠≠" %
)
≠≠% &
||
≠≠' )
nombreUsuario
≠≠* 7
[
≠≠7 8
i
≠≠8 9
]
≠≠9 :
.
≠≠: ;
Equals
≠≠; A
(
≠≠A B
$char
≠≠B E
)
≠≠E F
||
≠≠G I
nombreUsuario
ÆÆ
 
[
ÆÆ 
i
ÆÆ 
]
ÆÆ 
.
ÆÆ 
Equals
ÆÆ !
(
ÆÆ! "
$char
ÆÆ" %
)
ÆÆ% &
||
ÆÆ' )
nombreUsuario
ÆÆ* 7
[
ÆÆ7 8
i
ÆÆ8 9
]
ÆÆ9 :
.
ÆÆ: ;
Equals
ÆÆ; A
(
ÆÆA B
$char
ÆÆB E
)
ÆÆE F
||
ÆÆG I
nombreUsuario
ØØ
 
[
ØØ 
i
ØØ 
]
ØØ 
.
ØØ 
Equals
ØØ !
(
ØØ! "
$char
ØØ" %
)
ØØ% &
||
ØØ' )
nombreUsuario
ØØ* 7
[
ØØ7 8
i
ØØ8 9
]
ØØ9 :
.
ØØ: ;
Equals
ØØ; A
(
ØØA B
$char
ØØB E
)
ØØE F
||
ØØG I
nombreUsuario
∞∞
 
[
∞∞ 
i
∞∞ 
]
∞∞ 
.
∞∞ 
Equals
∞∞ !
(
∞∞! "
$char
∞∞" %
)
∞∞% &
||
∞∞' )
nombreUsuario
∞∞* 7
[
∞∞7 8
i
∞∞8 9
]
∞∞9 :
.
∞∞: ;
Equals
∞∞; A
(
∞∞A B
$char
∞∞B E
)
∞∞E F
||
∞∞G I
nombreUsuario
±±
 
[
±± 
i
±± 
]
±± 
.
±± 
Equals
±± !
(
±±! "
$char
±±" %
)
±±% &
)
±±& '
)
±±' (
{
±±) *
validar
≤≤
 
=
≤≤ 
false
≤≤ 
;
≤≤ 
break
≥≥
 
;
≥≥ 
}
¥¥ 	
}
µµ 
return
∂∂ 
validar
∂∂ 
;
∂∂ 
}
∑∑ 
private
¿¿ 
Boolean
¿¿ 
ValidarJugador
¿¿ "
(
¿¿" #

ServiceSYE
¿¿# -
.
¿¿- .
Jugador
¿¿. 5
jugador
¿¿6 =
)
¿¿= >
{
¿¿? @
Boolean
¡¡ 
validar
¡¡ 
=
¡¡ 
false
¡¡ 
;
¡¡ 
if
¬¬ 
(
¬¬	 

!
¬¬
 
jugador
¬¬ 
.
¬¬ 
NombreUsuario
¬¬  
.
¬¬  !
Equals
¬¬! '
(
¬¬' (
$str
¬¬( +
)
¬¬+ ,
)
¬¬, -
{
¬¬. /
if
√√ 

(
√√ 
!
√√ 
jugador
√√ 
.
√√ 
NombreUsuario
√√ "
.
√√" #
Equals
√√# )
(
√√) *
$str
√√* ,
)
√√, -
)
√√- .
{
√√/ 0
validar
ƒƒ
 
=
ƒƒ 
true
ƒƒ 
;
ƒƒ 
}
≈≈ 	
else
≈≈
 
{
≈≈ 

MessageBox
∆∆
 
.
∆∆ 
Show
∆∆ 
(
∆∆ 

Properties
∆∆ $
.
∆∆$ %
	Resources
∆∆% .
.
∆∆. /#
mb_JugadorInexistente
∆∆/ D
,
∆∆D E

Properties
∆∆F P
.
∆∆P Q
	Resources
∆∆Q Z
.
∆∆Z [
	mb_Alerta
∆∆[ d
)
∆∆d e
;
∆∆e f
}
«« 	
}
»» 
else
»» 
{
»» 

MessageBox
…… 
.
…… 
Show
…… 
(
…… 

Properties
…… "
.
……" #
	Resources
……# ,
.
……, -
mb_ConexionBD
……- :
,
……: ;

Properties
……< F
.
……F G
	Resources
……G P
.
……P Q
	mb_Alerta
……Q Z
)
……Z [
;
……[ \
}
   
return
ÀÀ 
validar
ÀÀ 
;
ÀÀ 
}
ÃÃ 
private
◊◊ 
void
◊◊ 
EnviarNuevoCodigo
◊◊ "
(
◊◊" #

ServiceSYE
◊◊# -
.
◊◊- .
Jugador
◊◊. 5
jugador
◊◊6 =
,
◊◊= >
String
◊◊? E
codigo
◊◊F L
)
◊◊L M
{
◊◊N O
if
ÿÿ 
(
ÿÿ	 

cliente
ÿÿ
 
.
ÿÿ 
ModificarCodigo
ÿÿ !
(
ÿÿ! "
jugador
ÿÿ" )
.
ÿÿ) *
Codigo
ÿÿ* 0
,
ÿÿ0 1
codigo
ÿÿ2 8
)
ÿÿ8 9
)
ÿÿ9 :
{
ÿÿ; <
jugador
ŸŸ 
.
ŸŸ 
Codigo
ŸŸ 
=
ŸŸ 
codigo
ŸŸ 
;
ŸŸ  
if
⁄⁄ 

(
⁄⁄ 
cliente
⁄⁄ 
.
⁄⁄ !
EnviarCodigoACorreo
⁄⁄ '
(
⁄⁄' (
jugador
⁄⁄( /
,
⁄⁄/ 0

Properties
⁄⁄1 ;
.
⁄⁄; <
	Resources
⁄⁄< E
.
⁄⁄E F
	ms_Asunto
⁄⁄F O
,
⁄⁄O P

Properties
⁄⁄Q [
.
⁄⁄[ \
	Resources
⁄⁄\ e
.
⁄⁄e f
ms_IngresaCodigo
⁄⁄f v
,
⁄⁄v w

Properties⁄⁄x Ç
.⁄⁄Ç É
	Resources⁄⁄É å
.⁄⁄å ç

ms_Mensaje⁄⁄ç ó
)⁄⁄ó ò
)⁄⁄ò ô
{⁄⁄ö õ

MessageBox
€€
 
.
€€ 
Show
€€ 
(
€€ 

Properties
€€ $
.
€€$ %
	Resources
€€% .
.
€€. /
mb_CodigoEnviado
€€/ ?
+
€€@ A
jugador
€€B I
.
€€I J
CorreoElectronico
€€J [
+
€€\ ]

Properties
€€^ h
.
€€h i
	Resources
€€i r
.
€€r s
mb_IngreseCodigo€€s É
,€€É Ñ

Properties€€Ö è
.€€è ê
	Resources€€ê ô
.€€ô ö
	mb_Alerta€€ö £
)€€£ §
;€€§ •
}
‹‹ 	
else
‹‹
 
{
‹‹ 

MessageBox
››
 
.
›› 
Show
›› 
(
›› 

Properties
›› $
.
››$ %
	Resources
››% .
.
››. /
mb_EnvioFallido
››/ >
,
››> ?

Properties
››@ J
.
››J K
	Resources
››K T
.
››T U
	mb_Alerta
››U ^
)
››^ _
;
››_ `
}
ﬁﬁ 	
}
ﬂﬂ 
else
ﬂﬂ 
{
ﬂﬂ 

MessageBox
‡‡ 
.
‡‡ 
Show
‡‡ 
(
‡‡ 

Properties
‡‡ "
.
‡‡" #
	Resources
‡‡# ,
.
‡‡, -
mb_ConexionBD
‡‡- :
,
‡‡: ;

Properties
‡‡< F
.
‡‡F G
	Resources
‡‡G P
.
‡‡P Q
	mb_Alerta
‡‡Q Z
)
‡‡Z [
;
‡‡[ \
}
·· 
}
‚‚ 
private
ÍÍ 
void
ÍÍ &
MandarMensajeErrorCodigo
ÍÍ )
(
ÍÍ) *
String
ÍÍ* 0
codigo
ÍÍ1 7
)
ÍÍ7 8
{
ÍÍ9 :
if
ÎÎ 
(
ÎÎ	 

codigo
ÎÎ
 
.
ÎÎ 
Equals
ÎÎ 
(
ÎÎ 
$str
ÎÎ 
)
ÎÎ 
)
ÎÎ 
{
ÎÎ 

MessageBox
ÏÏ 
.
ÏÏ 
Show
ÏÏ 
(
ÏÏ 

Properties
ÏÏ "
.
ÏÏ" #
	Resources
ÏÏ# ,
.
ÏÏ, -
mb_ConexionBD
ÏÏ- :
,
ÏÏ: ;

Properties
ÏÏ< F
.
ÏÏF G
	Resources
ÏÏG P
.
ÏÏP Q
	mb_Alerta
ÏÏQ Z
)
ÏÏZ [
;
ÏÏ[ \
}
ÌÌ 
else
ÌÌ 
{
ÌÌ 

MessageBox
ÓÓ 
.
ÓÓ 
Show
ÓÓ 
(
ÓÓ 

Properties
ÓÓ "
.
ÓÓ" #
	Resources
ÓÓ# ,
.
ÓÓ, -!
mb_ConexionServidor
ÓÓ- @
,
ÓÓ@ A

Properties
ÓÓB L
.
ÓÓL M
	Resources
ÓÓM V
.
ÓÓV W
	mb_Alerta
ÓÓW `
)
ÓÓ` a
;
ÓÓa b
}
ÔÔ 
}
 
}
ÒÒ 
}ÚÚ Ù
ëC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\App.xaml.cs
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
} ﬁõ
òC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\MainWindow.xaml.cs
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
;	++ Ä
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
Mi_Espa√±ol_ClickVV !
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
ÄÄ 	
else
ÄÄ
 
{
ÄÄ 

MessageBox
ÅÅ
 
.
ÅÅ 
Show
ÅÅ 
(
ÅÅ 

Properties
ÅÅ $
.
ÅÅ$ %
	Resources
ÅÅ% .
.
ÅÅ. /$
mb_CaracteresInvalidos
ÅÅ/ E
,
ÅÅE F

Properties
ÅÅG Q
.
ÅÅQ R
	Resources
ÅÅR [
.
ÅÅ[ \
	mb_Alerta
ÅÅ\ e
)
ÅÅe f
;
ÅÅf g
}
ÇÇ 	
}
ÉÉ 
else
ÉÉ 
{
ÉÉ 

MessageBox
ÑÑ 
.
ÑÑ 
Show
ÑÑ 
(
ÑÑ 

Properties
ÑÑ "
.
ÑÑ" #
	Resources
ÑÑ# ,
.
ÑÑ, -0
"mb_NombreUsuarioOContraseniaVacios
ÑÑ- O
,
ÑÑO P

Properties
ÑÑQ [
.
ÑÑ[ \
	Resources
ÑÑ\ e
.
ÑÑe f
	mb_Alerta
ÑÑf o
)
ÑÑo p
;
ÑÑp q
}
ÖÖ 
return
ÜÜ 
validar
ÜÜ 
;
ÜÜ 
}
áá 
private
ëë 
void
ëë 
Ingresar
ëë 
(
ëë 

ServiceSYE
ëë $
.
ëë$ %
Jugador
ëë% ,
jugador
ëë- 4
)
ëë4 5
{
ëë6 7
if
íí 
(
íí	 

jugador
íí
 
.
íí 
Codigo
íí 
.
íí 
Equals
íí 
(
íí  
$str
íí  '
)
íí' (
)
íí( )
{
íí* +
if
ìì 

(
ìì 
cliente
ìì 
.
ìì 
ValidarConectado
ìì $
(
ìì$ %
jugador
ìì% ,
)
ìì, -
)
ìì- .
{
ìì/ 0
cliente
îî
 
.
îî 
UnirseAlJuego
îî 
(
îî  
jugador
îî  '
)
îî' (
;
îî( )
MenuPrincipal
ïï
 
menuPrincipal
ïï %
=
ïï& '
new
ïï( +
MenuPrincipal
ïï, 9
(
ïï9 :
jugador
ïï: A
)
ïïA B
;
ïïB C
menuPrincipal
ññ
 
.
ññ 
Show
ññ 
(
ññ 
)
ññ 
;
ññ 
this
óó
 
.
óó 
Close
óó 
(
óó 
)
óó 
;
óó 
}
òò 	
else
òò
 
{
òò 

MessageBox
ôô
 
.
ôô 
Show
ôô 
(
ôô 

Properties
ôô $
.
ôô$ %
	Resources
ôô% .
.
ôô. /!
ms_JugadorConectado
ôô/ B
,
ôôB C

Properties
ôôD N
.
ôôN O
	Resources
ôôO X
.
ôôX Y
	mb_Alerta
ôôY b
)
ôôb c
;
ôôc d
}
öö 	
}
õõ 
else
õõ 
{
õõ 

MessageBox
úú 
.
úú 
Show
úú 
(
úú 

Properties
úú "
.
úú" #
	Resources
úú# ,
.
úú, -!
mb_CuentaNoValidada
úú- @
,
úú@ A

Properties
úúB L
.
úúL M
	Resources
úúM V
.
úúV W
	mb_Alerta
úúW `
)
úú` a
;
úúa b
}
ùù 
}
ûû 
public
¶¶ 

Boolean
¶¶ #
ValidarDatosCompletos
¶¶ (
(
¶¶( )
string
¶¶) /
nombre
¶¶0 6
,
¶¶6 7
string
¶¶8 >
contrasenia
¶¶? J
)
¶¶J K
{
¶¶L M
Boolean
ßß 
validar
ßß 
=
ßß 
false
ßß 
;
ßß 
if
®® 
(
®®	 

(
®®
 
nombre
®® 
!=
®® 
null
®® 
&&
®® 
nombre
®® #
.
®®# $
Length
®®$ *
>
®®+ ,
$num
®®- .
)
®®. /
&&
®®0 2
(
©© 	
contrasenia
©©	 
!=
©© 
null
©© 
&&
©© 
contrasenia
©©  +
.
©©+ ,
Length
©©, 2
>
©©3 4
$num
©©5 6
)
©©6 7
)
©©7 8
{
©©9 :
validar
™™ 
=
™™ 
true
™™ 
;
™™ 
}
´´ 
return
¨¨ 
validar
¨¨ 
;
¨¨ 
}
≠≠ 
public
ππ 

Boolean
ππ "
ValidarNombreUsuario
ππ '
(
ππ' (
string
ππ( .
nombre
ππ/ 5
)
ππ5 6
{
ππ7 8
Boolean
∫∫ 
validar
∫∫ 
=
∫∫ 
true
∫∫ 
;
∫∫ 
for
ªª 	
(
ªª
 
int
ªª 
i
ªª 
=
ªª 
$num
ªª 
;
ªª 
i
ªª 
<
ªª 
nombre
ªª  
.
ªª  !
Length
ªª! '
;
ªª' (
i
ªª) *
++
ªª* ,
)
ªª, -
{
ªª. /
if
ºº 

(
ºº 
!
ºº 
(
ºº 
(
ºº 
nombre
ºº 
[
ºº 
i
ºº 
]
ºº 
>=
ºº 
$num
ºº 
&&
ºº !
nombre
ºº" (
[
ºº( )
i
ºº) *
]
ºº* +
<=
ºº, .
$num
ºº/ 1
)
ºº1 2
||
ºº3 5
(
ΩΩ
 
nombre
ΩΩ 
[
ΩΩ 
i
ΩΩ 
]
ΩΩ 
>=
ΩΩ 
$num
ΩΩ 
&&
ΩΩ 
nombre
ΩΩ $
[
ΩΩ$ %
i
ΩΩ% &
]
ΩΩ& '
<=
ΩΩ( *
$num
ΩΩ+ .
)
ΩΩ. /
||
ΩΩ0 2
(
ææ
 
nombre
ææ 
[
ææ 
i
ææ 
]
ææ 
>=
ææ 
$num
ææ 
&&
ææ 
nombre
ææ $
[
ææ$ %
i
ææ% &
]
ææ& '
<=
ææ( *
$num
ææ+ -
)
ææ- .
||
ææ/ 1
nombre
øø
 
[
øø 
i
øø 
]
øø 
.
øø 
Equals
øø 
(
øø 
$char
øø 
)
øø 
||
øø  "
nombre
øø# )
[
øø) *
i
øø* +
]
øø+ ,
.
øø, -
Equals
øø- 3
(
øø3 4
$char
øø4 7
)
øø7 8
||
øø9 ;
nombre
¿¿
 
[
¿¿ 
i
¿¿ 
]
¿¿ 
.
¿¿ 
Equals
¿¿ 
(
¿¿ 
$char
¿¿ 
)
¿¿ 
||
¿¿  "
nombre
¿¿# )
[
¿¿) *
i
¿¿* +
]
¿¿+ ,
.
¿¿, -
Equals
¿¿- 3
(
¿¿3 4
$char
¿¿4 7
)
¿¿7 8
||
¿¿9 ;
nombre
¡¡
 
[
¡¡ 
i
¡¡ 
]
¡¡ 
.
¡¡ 
Equals
¡¡ 
(
¡¡ 
$char
¡¡ 
)
¡¡ 
||
¡¡  "
nombre
¡¡# )
[
¡¡) *
i
¡¡* +
]
¡¡+ ,
.
¡¡, -
Equals
¡¡- 3
(
¡¡3 4
$char
¡¡4 7
)
¡¡7 8
||
¡¡9 ;
nombre
¬¬
 
[
¬¬ 
i
¬¬ 
]
¬¬ 
.
¬¬ 
Equals
¬¬ 
(
¬¬ 
$char
¬¬ 
)
¬¬ 
||
¬¬  "
nombre
¬¬# )
[
¬¬) *
i
¬¬* +
]
¬¬+ ,
.
¬¬, -
Equals
¬¬- 3
(
¬¬3 4
$char
¬¬4 7
)
¬¬7 8
||
¬¬9 ;
nombre
√√
 
[
√√ 
i
√√ 
]
√√ 
.
√√ 
Equals
√√ 
(
√√ 
$char
√√ 
)
√√ 
||
√√  "
nombre
√√# )
[
√√) *
i
√√* +
]
√√+ ,
.
√√, -
Equals
√√- 3
(
√√3 4
$char
√√4 7
)
√√7 8
||
√√9 ;
nombre
ƒƒ
 
[
ƒƒ 
i
ƒƒ 
]
ƒƒ 
.
ƒƒ 
Equals
ƒƒ 
(
ƒƒ 
$char
ƒƒ 
)
ƒƒ 
||
ƒƒ  "
nombre
ƒƒ# )
[
ƒƒ) *
i
ƒƒ* +
]
ƒƒ+ ,
.
ƒƒ, -
Equals
ƒƒ- 3
(
ƒƒ3 4
$char
ƒƒ4 7
)
ƒƒ7 8
||
ƒƒ9 ;
nombre
≈≈
 
[
≈≈ 
i
≈≈ 
]
≈≈ 
.
≈≈ 
Equals
≈≈ 
(
≈≈ 
$char
≈≈ 
)
≈≈ 
)
≈≈  
)
≈≈  !
{
≈≈" #
validar
∆∆
 
=
∆∆ 
false
∆∆ 
;
∆∆ 
break
««
 
;
«« 
}
»» 	
}
…… 
return
   
validar
   
;
   
}
ÀÀ 
public
◊◊ 

string
◊◊ 
ComputeSha256Hash
◊◊ #
(
◊◊# $
string
◊◊$ *
rawData
◊◊+ 2
)
◊◊2 3
{
◊◊4 5
using
ÿÿ 
(
ÿÿ 
SHA256
ÿÿ 

sha256Hash
ÿÿ 
=
ÿÿ  
SHA256
ÿÿ! '
.
ÿÿ' (
Create
ÿÿ( .
(
ÿÿ. /
)
ÿÿ/ 0
)
ÿÿ0 1
{
ÿÿ2 3
byte
ŸŸ 
[
ŸŸ 
]
ŸŸ 
bytes
ŸŸ 
=
ŸŸ 

sha256Hash
ŸŸ !
.
ŸŸ! "
ComputeHash
ŸŸ" -
(
ŸŸ- .
Encoding
ŸŸ. 6
.
ŸŸ6 7
UTF8
ŸŸ7 ;
.
ŸŸ; <
GetBytes
ŸŸ< D
(
ŸŸD E
rawData
ŸŸE L
)
ŸŸL M
)
ŸŸM N
;
ŸŸN O
StringBuilder
⁄⁄ 
builder
⁄⁄ 
=
⁄⁄ 
new
⁄⁄  #
StringBuilder
⁄⁄$ 1
(
⁄⁄1 2
)
⁄⁄2 3
;
⁄⁄3 4
for
€€ 
(
€€ 
int
€€ 
i
€€ 
=
€€ 
$num
€€ 
;
€€ 
i
€€ 
<
€€ 
bytes
€€ !
.
€€! "
Length
€€" (
;
€€( )
i
€€* +
++
€€+ -
)
€€- .
{
€€/ 0
builder
‹‹
 
.
‹‹ 
Append
‹‹ 
(
‹‹ 
bytes
‹‹ 
[
‹‹ 
i
‹‹  
]
‹‹  !
.
‹‹! "
ToString
‹‹" *
(
‹‹* +
$str
‹‹+ /
)
‹‹/ 0
)
‹‹0 1
;
‹‹1 2
}
›› 	
return
ﬁﬁ 
builder
ﬁﬁ 
.
ﬁﬁ 
ToString
ﬁﬁ 
(
ﬁﬁ  
)
ﬁﬁ  !
;
ﬁﬁ! "
}
ﬂﬂ 
}
‡‡ 
}
·· 
}‚‚ Ë
†C:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\SerpientesYEscaleras\SerpientesYEscaleras\Properties\AssemblyInfo.cs
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