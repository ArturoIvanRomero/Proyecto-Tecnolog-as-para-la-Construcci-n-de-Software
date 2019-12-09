�
zC:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\IChat.cs
	namespace 	

ServiceSYE
 
{ 
[ 
ServiceContract 
( 
CallbackContract #
=$ %
typeof& ,
(, -
IClienteChat- 9
)9 :
): ;
]; <
	interface 
IChat 
{ 
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void 

UnirseChat	 
( 
String 
nombreUsuario (
,( )
String* 0
nombrePartida1 >
)> ?
;? @
[

 
OperationContract

 
(

 
IsOneWay

 
=

  !
true

" &
)

& '
]

' (
void 
EnviarMensaje	 
( 
String 
mensaje %
,% &
String' -
nombrePartida. ;
); <
;< =
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void  
EnviarMensajePartida	 
( 
String $
mensaje% ,
,, -
String. 4
nombrePartida5 B
,B C
intD G
tipoMensajeH S
)S T
;T U
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void 
	SalirChat	 
( 
String 
nombrePartida '
)' (
;( )
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void 
SalirChatPartida	 
( 
String  
nombrePartida! .
). /
;/ 0
} 
} �	
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\IClienteChat.cs
	namespace 	

ServiceSYE
 
{ 
[ 
ServiceContract 
] 
public 
	interface	 
IClienteChat 
{  !
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void 
RecibeMensaje	 
( 
String 
nombreUsuario +
,+ ,
String- 3
mensaje4 ;
,; <
int= @
numeroJugadoresA P
)P Q
;Q R
[

 
OperationContract

 
(

 
IsOneWay

 
=

  !
true

" &
)

& '
]

' (
void  
RecibeMensajePartida	 
( 
String $
nombreUsuario% 2
,2 3
String4 :
mensaje; B
,B C
intD G
tipoMensajeH S
)S T
;T U
} 
} �
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\IClientePartida.cs
	namespace 	

ServiceSYE
 
{ 
[ 
ServiceContract 
] 
public 
	interface	 
IClientePartida "
{# $
[ 
OperationContract 
( 
IsOneWay 
=  !
true" &
)& '
]' (
void 
ActualizarPartidas	 
( 
List  
<  !
Partida! (
>( )
partidas* 2
)2 3
;3 4
[

 
OperationContract

 
(

 
IsOneWay

 
=

  !
true

" &
)

& '
]

' (
void 
Tirar	 
( 
) 
; 
} 
} �1
}C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\IPartida.cs
	namespace 	

ServiceSYE
 
{ 
[ 
ServiceContract 
( 
CallbackContract #
=$ %
typeof& ,
(, -
IClientePartida- <
)< =
)= >
]> ?
public 
	interface	 
IPartida 
{ 
[		 
OperationContract		 
]		 
void

 
CrearPartida

	 
(

 
Partida

 
partida

 %
)

% &
;

& '
[ 
OperationContract 
] 
List 
< 	
Partida	 
> 
ObtenerPartidas !
(! "
)" #
;# $
[ 
OperationContract 
] 
Boolean  
ValidarNombrePartida  
(  !
String! '
nombrePartida( 5
)5 6
;6 7
[ 
OperationContract 
] 
void 
VerPartidas	 
( 
String 
nombreUsuario )
)) *
;* +
[ 
OperationContract 
] 
void 
SalirVerPartidas	 
( 
) 
; 
[ 
OperationContract 
] 
void 
UnirsePartida	 
( 
Jugador 
jugador &
,& '
String( .
nombrePartida/ <
)< =
;= >
[ 
OperationContract 
] 
void 
SalirPartida	 
( 
Jugador 
jugador %
,% &
String' -
nombrePartida. ;
); <
;< =
[ 
OperationContract 
] 
void 
SalirPartidaEnJuego	 
( 
Jugador $
jugador% ,
,, -
String. 4
nombrePartida5 B
)B C
;C D
[!! 
OperationContract!! 
]!! 
Partida"" 
ObtenerPartida"" 
("" 
String"" !
nombrePartida""" /
)""/ 0
;""0 1
[$$ 
OperationContract$$ 
]$$ 
void%% 
CambiarTurno%%	 
(%% 
String%% 
nombrePartida%% *
,%%* +
int%%, /
casilla%%0 7
,%%7 8
int%%9 <
turno%%= B
)%%B C
;%%C D
['' 
OperationContract'' 
]'' 
void(( 
MovimientoEspecial((	 
((( 
String(( "
nombrePartida((# 0
,((0 1
int((2 5
casilla((6 =
)((= >
;((> ?
[** 
OperationContract** 
]** 
void++  
CambiarPosicionBonus++	 
(++ 
String++ $
nombrePartida++% 2
)++2 3
;++3 4
},, 
[.. 
DataContract.. 
].. 
public// 
class//	 
Partida// 
{// 
[00 

DataMember00 
]00 
public11 

string11 
Nombre11 
{11 
get11 
;11 
set11  #
;11# $
}11% &
[22 

DataMember22 
]22 
public33 

string33 

Dificultad33 
{33 
get33 "
;33" #
set33$ '
;33' (
}33) *
[44 

DataMember44 
]44 
public55 

int55 
Turno55 
{55 
get55 
;55 
set55 
;55  
}55! "
[66 

DataMember66 
]66 
public77 

Tablero77 
Tablero77 
{77 
get77  
;77  !
set77" %
;77% &
}77' (
[88 

DataMember88 
]88 
public99 


Dictionary99 
<99 
IClientePartida99 %
,99% &
Jugador99' .
>99. /
JugadoresPartida990 @
{99A B
get99C F
;99F G
set99H K
;99K L
}99M N
[:: 

DataMember:: 
]:: 
public;; 


Dictionary;; 
<;; 
IClienteChat;; "
,;;" #
string;;$ *
>;;* +
JugadoresChat;;, 9
{;;: ;
get;;< ?
;;;? @
set;;A D
;;;D E
};;F G
}<< 
[>> 
DataContract>> 
]>> 
public?? 
class??	 
Tablero?? 
{?? 
[@@ 

DataMember@@ 
]@@ 
publicAA 

CasillaAA 
[AA 
]AA 
CasillasAA 
{AA 
getAA  #
;AA# $
setAA% (
;AA( )
}AA* +
}BB 
[DD 
DataContractDD 
]DD 
publicEE 
classEE	 
CasillaEE 
{EE 
[FF 

DataMemberFF 
]FF 
publicGG 

intGG 
NumeroGG 
{GG 
getGG 
;GG 
setGG  
;GG  !
}GG" #
[HH 

DataMemberHH 
]HH 
publicII 

intII 
	PosicionXII 
{II 
getII 
;II 
setII  #
;II# $
}II% &
[JJ 

DataMemberJJ 
]JJ 
publicKK 

intKK 
	PosicionYKK 
{KK 
getKK 
;KK 
setKK  #
;KK# $
}KK% &
[LL 

DataMemberLL 
]LL 
publicMM 

intMM 

MovimientoMM 
{MM 
getMM 
;MM  
setMM! $
;MM$ %
}MM& '
[NN 

DataMemberNN 
]NN 
publicOO 

boolOO 
BonusOO 
{OO 
getOO 
;OO 
setOO  
;OO  !
}OO" #
}PP 
}QQ �4
}C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\IJugador.cs
	namespace 	

ServiceSYE
 
{ 
[ 
ServiceContract 
] 
public 
	interface	 
IJugador 
{ 
[		 
OperationContract		 
]		 
Boolean

 
RegistrarJugador

 
(

 
Jugador

 $
jugador

% ,
)

, -
;

- .
[ 
OperationContract 
] 
Jugador 
IniciarSesion 
( 
String  
nombreUsuario! .
,. /
String0 6
contrasenia7 B
)B C
;C D
[ 
OperationContract 
] 
void 
UnirseAlJuego	 
( 
Jugador 
jugador &
)& '
;' (
[ 
OperationContract 
] 
void 
SalirDelJuego	 
( 
Jugador 
jugador &
)& '
;' (
[ 
OperationContract 
] 
Boolean 
ValidarConectado 
( 
Jugador $
jugador% ,
), -
;- .
[ 
OperationContract 
] 
List 
< 	
Jugador	 
> "
ObtenerJugadoresPuntos (
(( )
)) *
;* +
[ 
OperationContract 
] 
List 
< 	
Jugador	 
> %
ObtenerJugadoresVictorias +
(+ ,
), -
;- .
[ 
OperationContract 
] 
Boolean 
EnviarCodigoACorreo 
(  
Jugador  '
jugador( /
,/ 0
String1 7
asunto8 >
,> ?
String@ F
mensajeIngresarG V
,V W
StringX ^
mensajeFinal_ k
)k l
;l m
[!! 
OperationContract!! 
]!! 
Jugador"" #
ObtenerJugadorPorCodigo"" #
(""# $
String""$ *
codigoVerificacion""+ =
)""= >
;""> ?
[$$ 
OperationContract$$ 
]$$ 
Jugador%% #
ObtenerJugadorPorNombre%% #
(%%# $
String%%$ *
nombreUsuario%%+ 8
)%%8 9
;%%9 :
['' 
OperationContract'' 
]'' 
Jugador(( #
ObtenerJugadorPorCorreo(( #
(((# $
String(($ *
correoElectronico((+ <
)((< =
;((= >
[** 
OperationContract** 
]** 
Boolean++  
ValidarCuentaJugador++  
(++  !
String++! '
correoElectronico++( 9
)++9 :
;++: ;
[-- 
OperationContract-- 
]-- 
int.. 
ValidarCodigo.. 
(.. 
String.. 
codigoVerificacion.. /
)../ 0
;..0 1
[00 
OperationContract00 
]00 
Boolean11 
ModificarCodigo11 
(11 
String11 "
codigoVerificacion11# 5
,115 6
String117 =#
nuevoCodigoVerificacion11> U
)11U V
;11V W
[33 
OperationContract33 
]33 
Boolean44 !
ModificarEstadisticas44 !
(44! "
String44" (
nombreUsuario44) 6
,446 7
Int16448 =
puntos44> D
,44D E
Int1644F K
	victorias44L U
)44U V
;44V W
[66 
OperationContract66 
]66 
Jugador77 
CrearJugador77 
(77 
List77 
<77 

DataAccess77 (
.77( )
Jugador77) 0
>770 1
jugador772 9
)779 :
;77: ;
}88 
[:: 
DataContract:: 
]:: 
public;; 	
class;;
 
Jugador;; 
{;; 
[<< 

DataMember<< 
]<< 
public== 

string== 
NombreUsuario== 
{==  !
get==" %
;==% &
set==' *
;==* +
}==, -
[>> 

DataMember>> 
]>> 
public?? 

string?? 
Contrasenia?? 
{?? 
get??  #
;??# $
set??% (
;??( )
}??* +
[@@ 

DataMember@@ 
]@@ 
publicAA 

stringAA 
CorreoElectronicoAA #
{AA$ %
getAA& )
;AA) *
setAA+ .
;AA. /
}AA0 1
[BB 

DataMemberBB 
]BB 
publicCC 

stringCC 
CodigoCC 
{CC 
getCC 
;CC 
setCC  #
;CC# $
}CC% &
[DD 

DataMemberDD 
]DD 
publicEE 

EstadisticasEE 
EstadisticasEE $
{EE% &
getEE' *
;EE* +
setEE, /
;EE/ 0
}EE1 2
[FF 

DataMemberFF 
]FF 
publicGG 

TurnoGG 
TurnoGG 
{GG 
getGG 
;GG 
setGG !
;GG! "
}GG# $
}HH 
[JJ 
DataContractJJ 
]JJ 
publicKK 
classKK	 
EstadisticasKK 
{KK 
[LL 

DataMemberLL 
]LL 
publicMM 

Int16MM 
PuntosMM 
{MM 
getMM 
;MM 
setMM "
;MM" #
}MM$ %
[NN 

DataMemberNN 
]NN 
publicOO 

Int16OO 
	VictoriasOO 
{OO 
getOO  
;OO  !
setOO" %
;OO% &
}OO' (
}PP 
[RR 
DataContractRR 
]RR 
publicSS 
classSS	 
TurnoSS 
{SS 
[TT 

DataMemberTT 
]TT 
publicUU 

intUU 
NumeroTurnoUU 
{UU 
getUU  
;UU  !
setUU" %
;UU% &
}UU' (
[VV 

DataMemberVV 
]VV 
publicWW 

CasillaWW 
CasillaWW 
{WW 
getWW  
;WW  !
setWW" %
;WW% &
}WW' (
}XX 
}YY �
�C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 ,
)

, -
]

- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *��
|C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\ServiceSYE\Service.cs
	namespace		 	

ServiceSYE		
 
{		 
[ 
ServiceBehavior 
( 
ConcurrencyMode "
=# $
ConcurrencyMode% 4
.4 5
Single5 ;
,; <
InstanceContextMode= P
=Q R
InstanceContextModeS f
.f g
Singleg m
)m n
]n o
public 
partial	 
class 
Service 
:  
IJugador! )
{* +
public 

List 
< 
string 
> 
	Jugadores !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5
List6 :
<: ;
String; A
>A B
(B C
)C D
;D E
public 

Service 
( 
) 
{ 
} 
public&& 

Boolean&& 
RegistrarJugador&& #
(&&# $
Jugador&&$ +
jugador&&, 3
)&&3 4
{&&5 6
Boolean'' 
exito'' 
='' 
true'' 
;'' 
DataBaseContainer(( 
	baseDatos(( !
=((" #
new(($ '
DataBaseContainer((( 9
(((9 :
)((: ;
;((; <
	baseDatos)) 
.)) 

JugadorSet)) 
.)) 
Add)) 
()) 
new)) "

DataAccess))# -
.))- .
Jugador)). 5
{))6 7
nombreUsuario**
 
=** 
jugador** !
.**! "
NombreUsuario**" /
,**/ 0
contrasenia++
 
=++ 
jugador++ 
.++  
Contrasenia++  +
,+++ ,
correoElectronico,,
 
=,, 
jugador,, %
.,,% &
CorreoElectronico,,& 7
,,,7 8
codigo--
 
=-- 
jugador-- 
.-- 
Codigo-- !
,--! "
Estadisticas..
 
=.. 
new.. 

DataAccess.. '
...' (
Estadisticas..( 4
{..5 6
puntos// 
=// 
jugador// 
.// 
Estadisticas// )
.//) *
Puntos//* 0
,//0 1
	victorias00 
=00 
jugador00 
.00  
Estadisticas00  ,
.00, -
	Victorias00- 6
,006 7
}11
 
,11 
}22 	
)22	 

;22
 
try33 	
{33
 
	baseDatos44 
.44 
SaveChanges44 
(44 
)44 
;44  
}55 
catch55 
(55 
EntityException55 
)55 
{55  !
exito66 
=66 
false66 
;66 
}77 
return88 
exito88 
;88 
}99 
publicII 

JugadorII 
IniciarSesionII  
(II  !
StringII! '
nombreUsuarioII( 5
,II5 6
StringII7 =
contraseniaII> I
)III J
{IIK L
JugadorJJ 
jugadorEncontradoJJ 
;JJ  
tryKK 	
{KK
 
usingLL 
(LL 
varLL 
	baseDatosLL 
=LL 
newLL "
DataBaseContainerLL# 4
(LL4 5
)LL5 6
)LL6 7
{LL8 9
varMM
 
jugadorMM 
=MM 
(MM 
fromMM 
jugadorBaseDatosMM .
inMM/ 1
	baseDatosMM2 ;
.MM; <

JugadorSetMM< F
whereMMG L
jugadorBaseDatosMMM ]
.MM] ^
nombreUsuarioMM^ k
==MMl n
nombreUsuarioMMo |
whereNN 
jugadorBaseDatosNN /
.NN/ 0
contraseniaNN0 ;
==NN< >
contraseniaNN? J
selectNNK Q
jugadorBaseDatosNNR b
)NNb c
.NNc d
ToListNNd j
(NNj k
)NNk l
;NNl m
jugadorEncontradoOO
 
=OO 
CrearJugadorOO *
(OO* +
jugadorOO+ 2
)OO2 3
;OO3 4
}PP 	
}QQ 
catchQQ 
(QQ 
EntityExceptionQQ 
)QQ 
{QQ  !
jugadorEncontradoRR 
=RR 
newRR 
JugadorRR  '
{RR( )
NombreUsuarioSS
 
=SS 
$strSS 
,SS 
}TT 	
;TT	 

}UU 
returnVV 
jugadorEncontradoVV 
;VV 
}WW 
public__ 

void__ 
UnirseAlJuego__ 
(__ 
Jugador__ %
jugador__& -
)__- .
{__/ 0
Boolean`` 
	verificar`` 
=`` 
true`` 
;`` 
foraa 	
(aa
 
intaa 
iaa 
=aa 
$numaa 
;aa 
iaa 
<aa 
	Jugadoresaa #
.aa# $
Countaa$ )
;aa) *
iaa+ ,
++aa, .
)aa. /
{aa0 1
ifbb 

(bb 
jugadorbb 
.bb 
NombreUsuariobb !
.bb! "
Equalsbb" (
(bb( )
	Jugadoresbb) 2
.bb2 3
	ElementAtbb3 <
(bb< =
ibb= >
)bb> ?
)bb? @
)bb@ A
{bbB C
	verificarcc
 
=cc 
falsecc 
;cc 
}dd 	
}ee 
ifff 
(ff	 

	verificarff
 
)ff 
{ff 
	Jugadoresgg 
.gg 
Addgg 
(gg 
jugadorgg 
.gg 
NombreUsuariogg +
)gg+ ,
;gg, -
}hh 
}ii 
publicqq 

voidqq 
SalirDelJuegoqq 
(qq 
Jugadorqq %
jugadorqq& -
)qq- .
{qq/ 0
forrr 	
(rr
 
intrr 
irr 
=rr 
$numrr 
;rr 
irr 
<rr 
	Jugadoresrr #
.rr# $
Countrr$ )
;rr) *
irr+ ,
++rr, .
)rr. /
{rr0 1
ifss 

(ss 
	Jugadoresss 
.ss 
	ElementAtss 
(ss  
iss  !
)ss! "
.ss" #
Equalsss# )
(ss) *
jugadorss* 1
.ss1 2
NombreUsuarioss2 ?
)ss? @
)ss@ A
{ssB C
	Jugadorestt
 
.tt 
RemoveAttt 
(tt 
itt 
)tt 
;tt  
breakuu
 
;uu 
}vv 	
}ww 
}xx 
public
�� 

Boolean
�� 
ValidarConectado
�� #
(
��# $
Jugador
��$ +
jugador
��, 3
)
��3 4
{
��5 6
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
�� 
	Jugadores
�� #
.
��# $
Count
��$ )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
��0 1
if
�� 

(
�� 
	Jugadores
�� 
.
�� 
	ElementAt
�� 
(
��  
i
��  !
)
��! "
.
��" #
Equals
��# )
(
��) *
jugador
��* 1
.
��1 2
NombreUsuario
��2 ?
)
��? @
)
��@ A
{
��B C
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

List
�� 
<
�� 
Jugador
�� 
>
�� $
ObtenerJugadoresPuntos
�� /
(
��/ 0
)
��0 1
{
��2 3
List
�� 

<
��
 
Jugador
�� 
>
�� 
listaJugadores
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Jugador
��. 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugadoresPuntos
�� 
=
�� 
(
��  !
from
��! %
jugadorBaseDatos
��& 6
in
��7 9
	baseDatos
��: C
.
��C D

JugadorSet
��D N
orderby
��O V
jugadorBaseDatos
��W g
.
��g h
Estadisticas
��h t
.
��t u
puntos
��u {

descending��| �
select��� � 
jugadorBaseDatos��� �
)��� �
.��� �
Take��� �
(��� �
$num��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
foreach
��
 
(
�� 
var
�� 
jugador
�� 
in
�� !
jugadoresPuntos
��" 1
)
��1 2
{
��3 4
listaJugadores
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
Jugador
��# *
{
��+ ,
NombreUsuario
�� 
=
�� 
jugador
�� %
.
��% &
nombreUsuario
��& 3
,
��3 4
Contrasenia
�� 
=
�� 
jugador
�� #
.
��# $
contrasenia
��$ /
,
��/ 0
CorreoElectronico
�� 
=
��  !
jugador
��" )
.
��) *
correoElectronico
��* ;
,
��; <
Codigo
�� 
=
�� 
jugador
�� 
.
�� 
codigo
�� %
,
��% &
Estadisticas
�� 
=
�� 
new
��  
Estadisticas
��! -
{
��. /
Puntos
�� 
=
�� 
jugador
��  
.
��  !
Estadisticas
��! -
.
��- .
puntos
��. 4
,
��4 5
	Victorias
�� 
=
�� 
jugador
�� #
.
��# $
Estadisticas
��$ 0
.
��0 1
	victorias
��1 :
,
��: ;
}
�� 
}
�� 
)
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
listaJugadores
�� 
=
�� 
new
�� 
List
�� !
<
��! "
Jugador
��" )
>
��) *
(
��* +
)
��+ ,
;
��, -
}
�� 
return
�� 
listaJugadores
�� 
;
�� 
}
�� 
public
�� 

List
�� 
<
�� 
Jugador
�� 
>
�� '
ObtenerJugadoresVictorias
�� 2
(
��2 3
)
��3 4
{
��5 6
List
�� 

<
��
 
Jugador
�� 
>
�� 
listaJugadores
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Jugador
��. 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
  
jugadoresVictorias
��  
=
��! "
(
��# $
from
��$ (
jugadorBaseDatos
��) 9
in
��: <
	baseDatos
��= F
.
��F G

JugadorSet
��G Q
orderby
��R Y
jugadorBaseDatos
��Z j
.
��j k
Estadisticas
��k w
.
��w x
	victorias��x �

descending��� �
select��� � 
jugadorBaseDatos��� �
)��� �
.��� �
Take��� �
(��� �
$num��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
foreach
��
 
(
�� 
var
�� 
jugador
�� 
in
�� ! 
jugadoresVictorias
��" 4
)
��4 5
{
��6 7
listaJugadores
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
Jugador
��# *
{
��+ ,
NombreUsuario
�� 
=
�� 
jugador
�� %
.
��% &
nombreUsuario
��& 3
,
��3 4
Contrasenia
�� 
=
�� 
jugador
�� #
.
��# $
contrasenia
��$ /
,
��/ 0
CorreoElectronico
�� 
=
��  !
jugador
��" )
.
��) *
correoElectronico
��* ;
,
��; <
Codigo
�� 
=
�� 
jugador
�� 
.
�� 
codigo
�� %
,
��% &
Estadisticas
�� 
=
�� 
new
��  
Estadisticas
��! -
{
��. /
Puntos
�� 
=
�� 
jugador
��  
.
��  !
Estadisticas
��! -
.
��- .
puntos
��. 4
,
��4 5
	Victorias
�� 
=
�� 
jugador
�� #
.
��# $
Estadisticas
��$ 0
.
��0 1
	victorias
��1 :
,
��: ;
}
�� 
}
�� 
)
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
listaJugadores
�� 
=
�� 
new
�� 
List
�� !
<
��! "
Jugador
��" )
>
��) *
(
��* +
)
��+ ,
;
��, -
}
�� 
return
�� 
listaJugadores
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� !
EnviarCodigoACorreo
�� &
(
��& '
Jugador
��' .
jugador
��/ 6
,
��6 7
String
��8 >
asunto
��? E
,
��E F
String
��G M
mensajeIngresar
��N ]
,
��] ^
String
��_ e
mensajeFinal
��f r
)
��r s
{
��t u
Boolean
�� 
correcto
�� 
=
�� 
true
�� 
;
�� 
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 
MailMessage
�� !
mensaje
��" )
=
��* +
new
��, /
System
��0 6
.
��6 7
Net
��7 :
.
��: ;
Mail
��; ?
.
��? @
MailMessage
��@ K
(
��K L
)
��L M
;
��M N
mensaje
�� 
.
�� 
To
�� 
.
�� 
Add
�� 
(
�� 
jugador
�� 
.
�� 
CorreoElectronico
�� .
)
��. /
;
��/ 0
mensaje
�� 
.
�� 
Subject
�� 
=
�� 
asunto
�� 
;
�� 
mensaje
�� 
.
�� 
SubjectEncoding
�� 
=
�� 
System
��  &
.
��& '
Text
��' +
.
��+ ,
Encoding
��, 4
.
��4 5
UTF8
��5 9
;
��9 :
String
�� 
mensajeCorreo
�� 
=
�� 
mensajeIngresar
�� ,
+
��- .
jugador
��/ 6
.
��6 7
Codigo
��7 =
+
��> ?
mensajeFinal
��@ L
;
��L M
mensaje
�� 
.
�� 
Body
�� 
=
�� 
mensajeCorreo
�� "
;
��" #
mensaje
�� 
.
�� 

IsBodyHtml
�� 
=
�� 
true
�� 
;
��  
mensaje
�� 
.
�� 
BodyEncoding
�� 
=
�� 
System
�� #
.
��# $
Text
��$ (
.
��( )
Encoding
��) 1
.
��1 2
UTF8
��2 6
;
��6 7
mensaje
�� 
.
�� 

IsBodyHtml
�� 
=
�� 
true
�� 
;
��  
mensaje
�� 
.
�� 
From
�� 
=
�� 
new
�� 
System
�� 
.
��  
Net
��  #
.
��# $
Mail
��$ (
.
��( )
MailAddress
��) 4
(
��4 5
DesEncriptar
��5 A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W
correo
��W ]
)
��] ^
)
��^ _
;
��_ `
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 

SmtpClient
��  
cliente
��! (
=
��) *
new
��+ .
System
��/ 5
.
��5 6
Net
��6 9
.
��9 :
Mail
��: >
.
��> ?

SmtpClient
��? I
(
��I J
)
��J K
;
��K L
cliente
�� 
.
�� 
Credentials
�� 
=
�� 
new
�� 
System
��  &
.
��& '
Net
��' *
.
��* +
NetworkCredential
��+ <
(
��< =
DesEncriptar
��= I
(
��I J

Properties
��J T
.
��T U
	Resources
��U ^
.
��^ _
correo
��_ e
)
��e f
,
��f g
DesEncriptar
��h t
(
��t u

Properties
��u 
.�� �
	Resources��� �
.��� �
contrasenia��� �
)��� �
)��� �
;��� �
cliente
�� 
.
�� 
Port
�� 
=
�� 
$num
�� 
;
�� 
cliente
�� 
.
�� 
	EnableSsl
�� 
=
�� 
true
�� 
;
�� 
cliente
�� 
.
�� 
Host
�� 
=
�� 
$str
�� %
;
��% &
try
�� 	
{
��
 
cliente
�� 
.
�� 
Send
�� 
(
�� 
mensaje
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
SmtpException
�� 
)
�� 
{
�� 
correcto
�� 
=
�� 
false
�� 
;
�� 
}
�� 
return
�� 
correcto
�� 
;
�� 
}
�� 
public
�� 

Jugador
�� %
ObtenerJugadorPorCodigo
�� *
(
��* +
String
��+ 1 
codigoVerificacion
��2 D
)
��D E
{
��F G
Jugador
�� 
jugadorEncontrado
�� 
;
��  
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
codigo
��^ d
==
��e g 
codigoVerificacion
��h z
select��{ � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugadorEncontrado
��
 
=
�� 
CrearJugador
�� *
(
��* +
jugador
��+ 2
)
��2 3
;
��3 4
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
jugadorEncontrado
�� 
=
�� 
new
�� 
Jugador
��  '
{
��( )
NombreUsuario
��
 
=
�� 
$str
�� 
,
�� 
}
�� 	
;
��	 

}
�� 
return
�� 
jugadorEncontrado
�� 
;
�� 
}
�� 
public
�� 

Jugador
�� %
ObtenerJugadorPorNombre
�� *
(
��* +
String
��+ 1
nombreUsuario
��2 ?
)
��? @
{
��A B
Jugador
�� 
jugadorEncontrado
�� 
;
��  
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
nombreUsuario
��^ k
==
��l n
nombreUsuario
��o |
select��} � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugadorEncontrado
��
 
=
�� 
CrearJugador
�� *
(
��* +
jugador
��+ 2
)
��2 3
;
��3 4
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
jugadorEncontrado
�� 
=
�� 
new
�� 
Jugador
��  '
{
��( )
NombreUsuario
��
 
=
�� 
$str
�� 
,
�� 
}
�� 	
;
��	 

}
�� 
return
�� 
jugadorEncontrado
�� 
;
�� 
}
�� 
public
�� 

Jugador
�� %
ObtenerJugadorPorCorreo
�� *
(
��* +
String
��+ 1
correoElectronico
��2 C
)
��C D
{
��E F
Jugador
�� 
jugadorEncontrado
�� 
;
��  
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
correoElectronico
��^ o
==
��p r 
correoElectronico��s �
select��� � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugadorEncontrado
��
 
=
�� 
CrearJugador
�� *
(
��* +
jugador
��+ 2
)
��2 3
;
��3 4
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
jugadorEncontrado
�� 
=
�� 
new
�� 
Jugador
��  '
{
��( )
NombreUsuario
��
 
=
�� 
$str
�� 
,
�� 
}
�� 	
;
��	 

}
�� 
return
�� 
jugadorEncontrado
�� 
;
�� 
}
�� 
public
�� 

Jugador
�� 
CrearJugador
�� 
(
��  
List
��  $
<
��$ %

DataAccess
��% /
.
��/ 0
Jugador
��0 7
>
��7 8
jugador
��9 @
)
��@ A
{
��B C
Jugador
�� 
jugadorEncontrado
�� 
;
��  
if
�� 
(
��	 

jugador
��
 
.
�� 
Count
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
jugadorEncontrado
�� 
=
�� 
new
�� 
Jugador
��  '
{
��( )
NombreUsuario
��
 
=
�� 
jugador
�� !
.
��! "
	ElementAt
��" +
(
��+ ,
$num
��, -
)
��- .
.
��. /
nombreUsuario
��/ <
,
��< =
Contrasenia
��
 
=
�� 
jugador
�� 
.
��  
	ElementAt
��  )
(
��) *
$num
��* +
)
��+ ,
.
��, -
contrasenia
��- 8
,
��8 9
CorreoElectronico
��
 
=
�� 
jugador
�� %
.
��% &
	ElementAt
��& /
(
��/ 0
$num
��0 1
)
��1 2
.
��2 3
correoElectronico
��3 D
,
��D E
Codigo
��
 
=
�� 
jugador
�� 
.
�� 
	ElementAt
�� $
(
��$ %
$num
��% &
)
��& '
.
��' (
codigo
��( .
,
��. /
Estadisticas
��
 
=
�� 
new
�� 
Estadisticas
�� )
{
��* +
Puntos
�� 
=
�� 
jugador
�� 
.
�� 
	ElementAt
�� &
(
��& '
$num
��' (
)
��( )
.
��) *
Estadisticas
��* 6
.
��6 7
puntos
��7 =
,
��= >
	Victorias
�� 
=
�� 
jugador
�� 
.
��  
	ElementAt
��  )
(
��) *
$num
��* +
)
��+ ,
.
��, -
Estadisticas
��- 9
.
��9 :
	victorias
��: C
,
��C D
}
��
 
}
�� 	
;
��	 

}
�� 
else
�� 
{
�� 
jugadorEncontrado
�� 
=
�� 
new
�� 
Jugador
��  '
{
��( )
NombreUsuario
��
 
=
�� 
$str
�� 
,
�� 
Contrasenia
��
 
=
�� 
$str
�� 
,
�� 
CorreoElectronico
��
 
=
�� 
$str
��  
,
��  !
Codigo
��
 
=
�� 
$str
�� 
,
�� 
Estadisticas
��
 
=
�� 
new
�� 
Estadisticas
�� )
(
��) *
)
��* +
,
��+ ,
}
�� 	
;
��	 

}
�� 
return
�� 
jugadorEncontrado
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarCuentaJugador
�� '
(
��' (
String
��( . 
codigoVerificacion
��/ A
)
��A B
{
��C D
Boolean
�� 
exito
�� 
=
�� 
true
�� 
;
�� 
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
codigo
��^ d
==
��e g 
codigoVerificacion
��h z
select��{ � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugador
��
 
.
�� 
	ElementAt
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
codigo
�� %
=
��& '
$str
��( /
;
��/ 0
	baseDatos
��
 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
exito
�� 
=
�� 
false
�� 
;
�� 
}
�� 
return
�� 
exito
�� 
;
�� 
}
�� 
public
�� 

int
�� 
ValidarCodigo
�� 
(
�� 
String
�� # 
codigoVerificacion
��$ 6
)
��6 7
{
��8 9
int
�� 	
validar
��
 
=
�� 
$num
�� 
;
�� 
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
codigo
��^ d
==
��e g 
codigoVerificacion
��h z
select��{ � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
if
��
 
(
�� 
jugador
�� 
.
�� 
Count
�� 
==
�� 
$num
��  
)
��  !
{
��" #
validar
�� 
=
�� 
$num
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
validar
�� 
=
�� 
$num
�� 
;
�� 
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

Boolean
�� 
ModificarCodigo
�� "
(
��" #
String
��# ) 
codigoVerificacion
��* <
,
��< =
String
��> D%
nuevoCodigoVerificacion
��E \
)
��\ ]
{
��^ _
Boolean
�� 
exito
�� 
=
�� 
true
�� 
;
�� 
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
codigo
��^ d
==
��e g 
codigoVerificacion
��h z
select��{ � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugador
��
 
.
�� 
	ElementAt
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
codigo
�� %
=
��& '%
nuevoCodigoVerificacion
��( ?
;
��? @
	baseDatos
��
 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
exito
�� 
=
�� 
false
�� 
;
�� 
}
�� 
return
�� 
exito
�� 
;
�� 
}
�� 
public
�� 

Boolean
�� #
ModificarEstadisticas
�� (
(
��( )
String
��) /
nombreUsuario
��0 =
,
��= >
Int16
��? D
puntos
��E K
,
��K L
Int16
��M R
	victorias
��S \
)
��\ ]
{
��^ _
Boolean
�� 
exito
�� 
=
�� 
true
�� 
;
�� 
try
�� 	
{
��
 
using
�� 
(
�� 
var
�� 
	baseDatos
�� 
=
�� 
new
�� "
DataBaseContainer
��# 4
(
��4 5
)
��5 6
)
��6 7
{
��8 9
var
��
 
jugador
�� 
=
�� 
(
�� 
from
�� 
jugadorBaseDatos
�� .
in
��/ 1
	baseDatos
��2 ;
.
��; <

JugadorSet
��< F
where
��G L
jugadorBaseDatos
��M ]
.
��] ^
nombreUsuario
��^ k
==
��l n
nombreUsuario
��o |
select��} � 
jugadorBaseDatos��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
jugador
��
 
.
�� 
	ElementAt
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
Estadisticas
�� +
.
��+ ,
puntos
��, 2
=
��3 4
puntos
��5 ;
;
��; <
jugador
��
 
.
�� 
	ElementAt
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
Estadisticas
�� +
.
��+ ,
	victorias
��, 5
=
��6 7
	victorias
��8 A
;
��A B
	baseDatos
��
 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
}
�� 	
}
�� 
catch
�� 
(
�� 
EntityException
�� 
)
�� 
{
��  !
exito
�� 
=
�� 
false
�� 
;
�� 
}
�� 
return
�� 
exito
�� 
;
�� 
}
�� 
private
�� 
static
�� 
string
�� 
DesEncriptar
�� &
(
��& '
string
��' -!
CadenaADesencriptar
��. A
)
��A B
{
��C D
string
�� 
	resultado
�� 
=
�� 
string
�� 
.
��  
Empty
��  %
;
��% &
byte
�� 

[
��
 
]
�� 
desencriptado
�� 
=
�� 
Convert
�� $
.
��$ %
FromBase64String
��% 5
(
��5 6!
CadenaADesencriptar
��6 I
)
��I J
;
��J K
	resultado
�� 
=
�� 
System
�� 
.
�� 
Text
�� 
.
�� 
Encoding
�� &
.
��& '
Unicode
��' .
.
��. /
	GetString
��/ 8
(
��8 9
desencriptado
��9 F
)
��F G
;
��G H
return
�� 
	resultado
�� 
;
�� 
}
�� 
}
�� 
public
�� 
partial
��	 
class
�� 
Service
�� 
:
��  
IPartida
��! )
{
��* +
private
�� 
Random
�� 
random
�� 
=
�� 
new
�� 
Random
��  &
(
��& '
)
��' (
;
��( )
private
�� 
Func
�� 
<
�� 
IClientePartida
��  
>
��  !
conexionIPartida
��" 2
;
��2 3
public
�� 


Dictionary
�� 
<
�� 
IClientePartida
�� %
,
��% &
string
��' -
>
��- .
JugadoresPartidas
��/ @
{
��A B
get
��C F
;
��F G
set
��H K
;
��K L
}
��M N
=
��O P
new
��Q T

Dictionary
��U _
<
��_ `
IClientePartida
��` o
,
��o p
String
��q w
>
��w x
(
��x y
)
��y z
;
��z {
public
�� 


Dictionary
�� 
<
�� 
string
�� 
,
�� 
Partida
�� %
>
��% &
Partidas
��' /
{
��0 1
get
��2 5
;
��5 6
set
��7 :
;
��: ;
}
��< =
=
��> ?
new
��@ C

Dictionary
��D N
<
��N O
String
��O U
,
��U V
Partida
��W ^
>
��^ _
(
��_ `
)
��` a
;
��a b
public
�� 


Dictionary
�� 
<
�� 
string
�� 
,
�� 
Partida
�� %
>
��% &
PartidasEnJuego
��' 6
{
��7 8
get
��9 <
;
��< =
set
��> A
;
��A B
}
��C D
=
��E F
new
��G J

Dictionary
��K U
<
��U V
String
��V \
,
��\ ]
Partida
��^ e
>
��e f
(
��f g
)
��g h
;
��h i
public
�� 

Service
�� 
(
�� 
Func
�� 
<
�� 
IClientePartida
�� '
>
��' (
callback
��) 1
)
��1 2
{
��3 4
this
�� 

.
��
 
conexionIPartida
�� 
=
�� 
callback
�� &
??
��' )
throw
��* /
new
��0 3#
ArgumentNullException
��4 I
(
��I J
$str
��J m
)
��m n
;
��n o
}
�� 
public
�� 

void
�� 
CrearPartida
�� 
(
�� 
Partida
�� $
partida
��% ,
)
��, -
{
��. /
Partidas
�� 
[
�� 
partida
�� 
.
�� 
Nombre
�� 
]
�� 
=
�� 
partida
��  '
;
��' (
List
�� 

<
��
 
Partida
�� 
>
�� "
partidasActualizadas
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
Partida
��4 ;
>
��; <
(
��< =
)
��= >
;
��> ?
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
�� 
Partidas
�� "
.
��" #
Count
��# (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0"
partidasActualizadas
�� 
.
�� 
Add
��  
(
��  !
Partidas
��! )
.
��) *
	ElementAt
��* 3
(
��3 4
i
��4 5
)
��5 6
.
��6 7
Value
��7 <
)
��< =
;
��= >
}
�� 
foreach
�� 
(
�� 
var
�� 
cliente
�� 
in
�� 
JugadoresPartidas
�� /
.
��/ 0
Keys
��0 4
)
��4 5
{
��6 7
cliente
�� 
.
��  
ActualizarPartidas
�� "
(
��" #"
partidasActualizadas
��# 7
)
��7 8
;
��8 9
}
�� 
}
�� 
public
�� 

Boolean
�� "
ValidarNombrePartida
�� '
(
��' (
String
��( .
nombrePartida
��/ <
)
��< =
{
��> ?
Boolean
�� 
validar
�� 
=
�� 
true
�� 
;
�� 
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
�� 
Partidas
�� "
.
��" #
Count
��# (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0
if
�� 

(
�� 
Partidas
�� 
.
�� 
	ElementAt
�� 
(
�� 
i
��  
)
��  !
.
��! "
Value
��" '
.
��' (
Nombre
��( .
.
��. /
Equals
��/ 5
(
��5 6
nombrePartida
��6 C
)
��C D
)
��D E
{
��F G
validar
��
 
=
�� 
false
�� 
;
�� 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
validar
�� 
;
�� 
}
�� 
public
�� 

List
�� 
<
�� 
Partida
�� 
>
�� 
ObtenerPartidas
�� (
(
��( )
)
��) *
{
��+ ,
List
�� 

<
��
 
Partida
�� 
>
�� 
partidasCreadas
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
Partida
��/ 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
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
�� 
Partidas
�� "
.
��" #
Count
��# (
;
��( )
i
��* +
++
��+ -
)
��- .
{
��/ 0
partidasCreadas
�� 
.
�� 
Add
�� 
(
�� 
Partidas
�� $
.
��$ %
	ElementAt
��% .
(
��. /
i
��/ 0
)
��0 1
.
��1 2
Value
��2 7
)
��7 8
;
��8 9
}
�� 
return
�� 
partidasCreadas
�� 
;
�� 
}
�� 
public
�� 

void
�� 
VerPartidas
�� 
(
�� 
String
�� "
nombreUsuario
��# 0
)
��0 1
{
��2 3
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
JugadoresPartidas
�� 
[
�� 
conexionIPartida
�� (
(
��( )
)
��) *
]
��* +
=
��, -
nombreUsuario
��. ;
;
��; <
}
�� 
public
�� 

void
�� 
SalirVerPartidas
��  
(
��  !
)
��! "
{
��# $
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
JugadoresPartidas
�� 
.
�� 
Remove
�� 
(
�� 
conexionIPartida
�� /
(
��/ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 
public
�� 

void
�� 
UnirsePartida
�� 
(
�� 
Jugador
�� %
jugador
��& -
,
��- .
String
��/ 5
nombrePartida
��6 C
)
��C D
{
��E F
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
try
�� 	
{
��
 

Dictionary
�� 
<
�� 
IClientePartida
�� "
,
��" #
Jugador
��$ +
>
��+ ,
jugadoresPartida
��- =
=
��> ?
Partidas
��@ H
[
��H I
nombrePartida
��I V
]
��V W
.
��W X
JugadoresPartida
��X h
;
��h i
jugadoresPartida
�� 
[
�� 
conexionIPartida
�� )
(
��) *
)
��* +
]
��+ ,
=
��- .
jugador
��/ 6
;
��6 7
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
��  
JugadoresPartida
��  0
=
��1 2
jugadoresPartida
��3 C
;
��C D
}
�� 
catch
�� 
(
�� $
NullReferenceException
�� %
)
��% &
{
��' (

Dictionary
�� 
<
�� 
IClientePartida
�� "
,
��" #
Jugador
��$ +
>
��+ ,
jugadoresPartida
��- =
=
��> ?
new
��@ C

Dictionary
��D N
<
��N O
IClientePartida
��O ^
,
��^ _
Jugador
��` g
>
��g h
(
��h i
)
��i j
;
��j k
jugadoresPartida
�� 
[
�� 
conexionIPartida
�� )
(
��) *
)
��* +
]
��+ ,
=
��- .
jugador
��/ 6
;
��6 7
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
��  
JugadoresPartida
��  0
=
��1 2
jugadoresPartida
��3 C
;
��C D
}
�� 
}
�� 
public
�� 

void
�� 
SalirPartida
�� 
(
�� 
Jugador
�� $
jugador
��% ,
,
��, -
String
��. 4
nombrePartida
��5 B
)
��B C
{
��D E
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
�� 
JugadoresPartida
�� .
.
��. /
Remove
��/ 5
(
��5 6
conexionIPartida
��6 F
(
��F G
)
��G H
)
��H I
;
��I J
}
�� 
public
�� 

void
�� !
SalirPartidaEnJuego
�� #
(
��# $
Jugador
��$ +
jugador
��, 3
,
��3 4
String
��5 ;
nombrePartida
��< I
)
��I J
{
��K L
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� #
]
��# $
.
��$ %
JugadoresPartida
��% 5
.
��5 6
Remove
��6 <
(
��< =
conexionIPartida
��= M
(
��M N
)
��N O
)
��O P
;
��P Q
}
�� 
public
�� 

Partida
�� 
ObtenerPartida
�� !
(
��! "
String
��" (
nombrePartida
��) 6
)
��6 7
{
��8 9
return
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� *
]
��* +
;
��+ ,
}
�� 
public
�� 

void
�� 
CambiarTurno
�� 
(
�� 
String
�� #
nombrePartida
��$ 1
,
��1 2
int
��3 6
casilla
��7 >
,
��> ?
int
��@ C
turno
��D I
)
��I J
{
��K L
if
�� 
(
��	 

casilla
��
 
!=
�� 
$num
�� 
)
�� 
{
�� 
if
�� 

(
�� 
conexionIPartida
�� 
==
�� 
null
��  $
)
��$ %
{
��& '
conexionIPartida
��
 
=
�� 
(
�� 
)
�� 
=>
��  "
OperationContext
��# 3
.
��3 4
Current
��4 ;
.
��; < 
GetCallbackChannel
��< N
<
��N O
IClientePartida
��O ^
>
��^ _
(
��_ `
)
��` a
;
��a b
}
�� 	
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
.
��& '
JugadoresPartida
��' 7
[
��7 8
conexionIPartida
��8 H
(
��H I
)
��I J
]
��J K
.
��K L
Turno
��L Q
.
��Q R
Casilla
��R Y
=
��Z [
PartidasEnJuego
��\ k
[
��k l
nombrePartida
��l y
]
��y z
.
��z {
Tablero��{ �
.��� �
Casillas��� �
[��� �
casilla��� �
-��� �
$num��� �
]��� �
;��� �
}
�� 
Boolean
�� 
verificarTurno
�� 
=
�� 
false
�� $
;
��$ %
while
�� 
(
�� 
!
�� 
verificarTurno
�� 
)
�� 
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
PartidasEnJuego
�� +
[
��+ ,
nombrePartida
��, 9
]
��9 :
.
��: ;
JugadoresPartida
��; K
.
��K L
Count
��L Q
;
��Q R
i
��S T
++
��T V
)
��V W
{
��X Y
if
��
 
(
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� +
]
��+ ,
.
��, -
JugadoresPartida
��- =
.
��= >
	ElementAt
��> G
(
��G H
i
��H I
)
��I J
.
��J K
Value
��K P
.
��P Q
Turno
��Q V
.
��V W
NumeroTurno
��W b
.
��b c
Equals
��c i
(
��i j
turno
��j o
)
��o p
)
��p q
{
��r s
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� )
]
��) *
.
��* +
Turno
��+ 0
=
��1 2
turno
��3 8
;
��8 9
verificarTurno
�� 
=
�� 
true
�� !
;
��! "
break
�� 
;
�� 
}
��
 
}
�� 	
if
�� 

(
�� 
!
�� 
verificarTurno
�� 
)
�� 
{
�� 
if
��
 
(
�� 
turno
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
turno
�� 
=
�� 
$num
�� 
;
�� 
}
��
 
else
�� 
{
�� 
turno
�� 
=
�� 
turno
�� 
+
�� 
$num
�� 
;
�� 
}
��
 
}
�� 	
}
�� 
}
�� 
public
�� 

void
��  
MovimientoEspecial
�� "
(
��" #
String
��# )
nombrePartida
��* 7
,
��7 8
int
��9 <
casilla
��= D
)
��D E
{
��F G
if
�� 
(
��	 

conexionIPartida
��
 
==
�� 
null
�� "
)
��" #
{
��$ %
conexionIPartida
�� 
=
�� 
(
�� 
)
�� 
=>
��  
OperationContext
��! 1
.
��1 2
Current
��2 9
.
��9 : 
GetCallbackChannel
��: L
<
��L M
IClientePartida
��M \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� #
]
��# $
.
��$ %
JugadoresPartida
��% 5
[
��5 6
conexionIPartida
��6 F
(
��F G
)
��G H
]
��H I
.
��I J
Turno
��J O
.
��O P
Casilla
��P W
=
��X Y
PartidasEnJuego
��Z i
[
��i j
nombrePartida
��j w
]
��w x
.
��x y
Tablero��y �
.��� �
Casillas��� �
[��� �
casilla��� �
-��� �
$num��� �
]��� �
;��� �
}
�� 
public
�� 

void
�� "
CambiarPosicionBonus
�� $
(
��$ %
String
��% +
nombrePartida
��, 9
)
��9 :
{
��; <
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
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
.
��& '
Tablero
��' .
.
��. /
Casillas
��/ 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;
Bonus
��; @
=
��A B
false
��C H
;
��H I
}
�� 
int
�� 	
posicionMinima
��
 
=
�� 
$num
�� 
;
�� 
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
�� 
$num
�� 
;
�� 
i
�� 
++
��  
)
��  !
{
��" #
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
.
��& '
Tablero
��' .
.
��. /
Casillas
��/ 7
[
��7 8%
DeterminarPosicionBonus
��8 O
(
��O P
PartidasEnJuego
��P _
[
��_ `
nombrePartida
��` m
]
��m n
.
��n o
Tablero
��o v
.
��v w
Casillas
��w 
,�� �
posicionMinima��� �
)��� �
]��� �
.��� �
Bonus��� �
=��� �
true��� �
;��� �
posicionMinima
�� 
=
�� 
posicionMinima
�� '
+
��( )
$num
��* ,
;
��, -
}
�� 
}
�� 
public
�� 

void
�� 
CrearTurnos
�� 
(
�� 
String
�� "
nombrePartida
��# 0
)
��0 1
{
��2 3
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
�� 
$num
�� 
;
�� 
i
�� 
++
��  
)
��  !
{
��" #
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
��  
JugadoresPartida
��  0
.
��0 1
	ElementAt
��1 :
(
��: ;
i
��; <
)
��< =
.
��= >
Value
��> C
.
��C D
Turno
��D I
=
��J K
new
��L O
Turno
��P U
{
��V W
NumeroTurno
��
 
=
�� 
i
�� 
+
�� 
$num
�� 
,
�� 
Casilla
��
 
=
�� 
new
�� 
Casilla
�� 
{
��  !
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
,
�� 
}
�� 	
;
��	 

}
�� 
}
�� 
private
�� 
void
�� 
CrearTablero
�� 
(
�� 
String
�� $
nombrePartida
��% 2
)
��2 3
{
��4 5
int
�� 	
	posicionX
��
 
=
�� 
$num
�� 
,
�� 
	posicionY
�� "
=
��# $
$num
��% '
;
��' (
Boolean
�� 
avanzar
�� 
=
�� 
true
�� 
;
�� 
Casilla
�� 
[
�� 
]
�� 
casillas
�� 
=
�� 
new
�� 
Casilla
�� &
[
��& '
$num
��' *
]
��* +
;
��+ ,
casillas
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CrearCasilla
��  
(
��  !
$num
��! "
,
��" #
	posicionX
��$ -
,
��- .
	posicionY
��/ 8
)
��8 9
;
��9 :
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
�� 
$num
�� 
;
�� 
i
��  
++
��  "
)
��" #
{
��$ %
if
�� 

(
�� 
i
�� 
%
�� 
$num
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
casillas
��
 
[
�� 
i
�� 
]
�� 
=
�� 
CrearCasilla
�� $
(
��$ %
i
��% &
+
��' (
$num
��) *
,
��* +
	posicionX
��, 5
,
��5 6
	posicionY
��7 @
+
��A B
$num
��C E
)
��E F
;
��F G
	posicionY
��
 
=
�� 
	posicionY
�� 
+
��  !
$num
��" $
;
��$ %
avanzar
��
 
=
�� 
!
�� 
avanzar
�� 
;
�� 
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
�� 
avanzar
�� 
)
�� 
{
�� 
casillas
�� 
[
�� 
i
�� 
]
�� 
=
�� 
CrearCasilla
�� &
(
��& '
i
��' (
+
��) *
$num
��+ ,
,
��, -
	posicionX
��. 7
+
��8 9
$num
��: <
,
��< =
	posicionY
��> G
)
��G H
;
��H I
	posicionX
�� 
=
�� 
	posicionX
�� !
+
��" #
$num
��$ &
;
��& '
}
��
 
else
�� 
{
�� 
casillas
�� 
[
�� 
i
�� 
]
�� 
=
�� 
CrearCasilla
�� &
(
��& '
i
��' (
+
��) *
$num
��+ ,
,
��, -
	posicionX
��. 7
-
��8 9
$num
��: <
,
��< =
	posicionY
��> G
)
��G H
;
��H I
	posicionX
�� 
=
�� 
	posicionX
�� !
-
��" #
$num
��$ &
;
��& '
}
��
 
}
�� 	
}
�� 
casillas
�� 
=
�� '
CrearSerpientesYEscaleras
�� *
(
��* +
nombrePartida
��+ 8
,
��8 9
casillas
��: B
)
��B C
;
��C D
casillas
�� 
=
�� 

CrearBonus
�� 
(
�� 
casillas
�� $
)
��$ %
;
��% &
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
�� 
Tablero
�� %
=
��& '
new
��( +
Tablero
��, 3
{
��4 5
Casillas
�� 
=
�� 
casillas
�� 
,
�� 
}
�� 
;
�� 
}
�� 
public
�� 

Casilla
�� 
CrearCasilla
�� 
(
��  
int
��  #
indice
��$ *
,
��* +
int
��, /
	posicionX
��0 9
,
��9 :
int
��; >
	posicionY
��? H
)
��H I
{
��J K
return
�� 
new
�� 
Casilla
�� 
{
�� 
Numero
�� 
=
�� 
indice
�� 
,
�� 
	PosicionX
�� 
=
�� 
	posicionX
�� 
,
�� 
	PosicionY
�� 
=
�� 
	posicionY
�� 
,
�� 

Movimiento
�� 
=
�� 
$num
�� 
,
�� 
Bonus
�� 
=
�� 
false
�� 
,
�� 
}
�� 
;
�� 
}
�� 
public
�� 

Casilla
�� 
[
�� 
]
�� '
CrearSerpientesYEscaleras
�� .
(
��. /
String
��/ 5
nombrePartida
��6 C
,
��C D
Casilla
��E L
[
��L M
]
��M N
casillas
��O W
)
��W X
{
��Y Z
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
$num
��  "
;
��" #
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
$num
��  "
;
��" #
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
-
��  !
$num
��! #
;
��# $
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
$num
��  "
;
��" #
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
-
��  !
$num
��! #
;
��# $
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
�� 
-
��  !
$num
��! #
;
��# $
if
�� 
(
��	 

Partidas
��
 
[
�� 
nombrePartida
��  
]
��  !
.
��! "

Dificultad
��" ,
.
��, -
Equals
��- 3
(
��3 4
$str
��4 <
)
��< =
)
��= >
{
��? @
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
��  !
-
��" #
$num
��# %
;
��% &
casillas
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� 
=
��  !
$num
��" $
;
��$ %
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 
Partidas
�� 
[
�� 
nombrePartida
�� "
]
��" #
.
��# $

Dificultad
��$ .
.
��. /
Equals
��/ 5
(
��5 6
$str
��6 =
)
��= >
||
��? A
Partidas
��B J
[
��J K
nombrePartida
��K X
]
��X Y
.
��Y Z

Dificultad
��Z d
.
��d e
Equals
��e k
(
��k l
$str
��l r
)
��r s
)
��s t
{
��u v
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
��  
=
��! "
$num
��# %
;
��% &
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� !
=
��" #
$num
��$ &
;
��& '
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� !
=
��" #
$num
��$ &
;
��& '
}
�� 	
else
��
 
{
�� 
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� !
=
��" #
-
��$ %
$num
��% '
;
��' (
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� !
=
��" #
-
��$ %
$num
��% '
;
��' (
casillas
��
 
[
�� 
$num
�� 
]
�� 
.
�� 

Movimiento
�� !
=
��" #
-
��$ %
$num
��% '
;
��' (
}
�� 	
}
�� 
return
�� 
casillas
�� 
;
�� 
}
�� 
private
�� 
Casilla
�� 
[
�� 
]
�� 

CrearBonus
��  
(
��  !
Casilla
��! (
[
��( )
]
��) *
casillas
��+ 3
)
��3 4
{
��5 6
int
�� 	
posicionMinima
��
 
=
�� 
$num
�� 
;
�� 
for
�� 	
(
��
 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
�� 
++
��  
)
��  !
{
��" #
casillas
�� 
[
�� %
DeterminarPosicionBonus
�� (
(
��( )
casillas
��) 1
,
��1 2
posicionMinima
��3 A
)
��A B
]
��B C
.
��C D
Bonus
��D I
=
��J K
true
��L P
;
��P Q
posicionMinima
�� 
=
�� 
posicionMinima
�� '
+
��( )
$num
��* ,
;
��, -
}
�� 
return
�� 
casillas
�� 
;
�� 
}
�� 
private
�� 
int
�� %
DeterminarPosicionBonus
�� '
(
��' (
Casilla
��( /
[
��/ 0
]
��0 1
casillas
��2 :
,
��: ;
int
��< ?
posicionMinima
��@ N
)
��N O
{
��P Q
int
�� 	
posicion
��
 
=
�� 
random
�� 
.
�� 
Next
��  
(
��  !
posicionMinima
��! /
,
��/ 0
posicionMinima
��1 ?
+
��@ A
$num
��B D
)
��D E
;
��E F
while
�� 
(
�� 
casillas
�� 
[
�� 
posicion
�� 
]
�� 
.
��  

Movimiento
��  *
!=
��+ -
$num
��. /
)
��/ 0
{
��1 2
posicion
�� 
=
�� 
random
�� 
.
�� 
Next
�� 
(
�� 
posicionMinima
�� -
,
��- .
posicionMinima
��/ =
+
��> ?
$num
��@ B
)
��B C
;
��C D
}
�� 
return
�� 
posicion
�� 
;
�� 
}
�� 
}
�� 
public
�� 
partial
��	 
class
�� 
Service
�� 
:
��  
IChat
��! &
{
��' (
private
�� 
Func
�� 
<
�� 
IClienteChat
�� 
>
�� 
conexionIChat
�� ,
;
��, -
public
�� 

Service
�� 
(
�� 
Func
�� 
<
�� 
IClienteChat
�� $
>
��$ %
callback
��& .
)
��. /
{
��0 1
this
�� 

.
��
 
conexionIChat
�� 
=
�� 
callback
�� #
??
��$ &
throw
��' ,
new
��- 0#
ArgumentNullException
��1 F
(
��F G
$str
��G j
)
��j k
;
��k l
}
�� 
public
�� 

void
�� 

UnirseChat
�� 
(
�� 
String
�� !
nombreUsuario
��" /
,
��/ 0
String
��1 7
nombrePartida
��8 E
)
��E F
{
��G H
if
�� 
(
��	 

conexionIChat
��
 
==
�� 
null
�� 
)
��  
{
��! "
conexionIChat
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
OperationContext
�� .
.
��. /
Current
��/ 6
.
��6 7 
GetCallbackChannel
��7 I
<
��I J
IClienteChat
��J V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
try
�� 	
{
��
 

Dictionary
�� 
<
�� 
IClienteChat
�� 
,
��  
String
��! '
>
��' (
jugadoresChat
��) 6
=
��7 8
Partidas
��9 A
[
��A B
nombrePartida
��B O
]
��O P
.
��P Q
JugadoresChat
��Q ^
;
��^ _
jugadoresChat
�� 
[
�� 
conexionIChat
�� #
(
��# $
)
��$ %
]
��% &
=
��' (
nombreUsuario
��) 6
;
��6 7
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
��  
JugadoresChat
��  -
=
��. /
jugadoresChat
��0 =
;
��= >
}
�� 
catch
�� 
(
�� $
NullReferenceException
�� %
)
��% &
{
��' (

Dictionary
�� 
<
�� 
IClienteChat
�� 
,
��  
String
��! '
>
��' (
jugadoresChat
��) 6
=
��7 8
new
��9 <

Dictionary
��= G
<
��G H
IClienteChat
��H T
,
��T U
String
��V \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
jugadoresChat
�� 
[
�� 
conexionIChat
�� #
(
��# $
)
��$ %
]
��% &
=
��' (
nombreUsuario
��) 6
;
��6 7
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
��  
JugadoresChat
��  -
=
��. /
jugadoresChat
��0 =
;
��= >
}
�� 
if
�� 
(
��	 

Partidas
��
 
[
�� 
nombrePartida
��  
]
��  !
.
��! "
JugadoresPartida
��" 2
.
��2 3
Count
��3 8
==
��9 ;
$num
��< =
)
��= >
{
��? @
CrearTurnos
�� 
(
�� 
nombrePartida
�� !
)
��! "
;
��" #
CrearTablero
�� 
(
�� 
nombrePartida
�� "
)
��" #
;
��# $
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
=
��' (
Partidas
��) 1
[
��1 2
nombrePartida
��2 ?
]
��? @
;
��@ A
}
�� 
}
�� 
public
�� 

void
�� 
EnviarMensaje
�� 
(
�� 
String
�� $
mensaje
��% ,
,
��, -
String
��. 4
nombrePartida
��5 B
)
��B C
{
��D E
if
�� 
(
��	 

conexionIChat
��
 
==
�� 
null
�� 
)
��  
{
��! "
conexionIChat
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
OperationContext
�� .
.
��. /
Current
��/ 6
.
��6 7 
GetCallbackChannel
��7 I
<
��I J
IClienteChat
��J V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
String
�� 
nombreUsuario
�� 
;
�� 
if
�� 

(
�� 
Partidas
�� 
[
�� 
nombrePartida
�� "
]
��" #
.
��# $
JugadoresChat
��$ 1
.
��1 2
TryGetValue
��2 =
(
��= >
conexionIChat
��> K
(
��K L
)
��L M
,
��M N
out
��O R
nombreUsuario
��S `
)
��` a
)
��a b
{
��c d
foreach
��
 
(
�� 
var
�� 
cliente
�� 
in
�� !
Partidas
��" *
[
��* +
nombrePartida
��+ 8
]
��8 9
.
��9 :
JugadoresChat
��: G
.
��G H
Keys
��H L
)
��L M
{
��N O
cliente
�� 
.
�� 
RecibeMensaje
�� !
(
��! "
nombreUsuario
��" /
,
��/ 0
mensaje
��1 8
,
��8 9
Partidas
��: B
[
��B C
nombrePartida
��C P
]
��P Q
.
��Q R
JugadoresPartida
��R b
.
��b c
Count
��c h
)
��h i
;
��i j
}
��
 
}
�� 	
if
�� 
(
��	 

Partidas
��
 
[
�� 
nombrePartida
��  
]
��  !
.
��! "
JugadoresPartida
��" 2
.
��2 3
Count
��3 8
==
��9 ;
$num
��< =
)
��= >
{
��? @
Partidas
�� 
.
�� 
Remove
�� 
(
�� 
Partidas
��  
[
��  !
nombrePartida
��! .
]
��. /
.
��/ 0
Nombre
��0 6
)
��6 7
;
��7 8
List
�� 
<
�� 
Partida
�� 
>
�� "
partidasActualizadas
�� *
=
��+ ,
new
��- 0
List
��1 5
<
��5 6
Partida
��6 =
>
��= >
(
��> ?
)
��? @
;
��@ A
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
Partidas
�� $
.
��$ %
Count
��% *
;
��* +
i
��, -
++
��- /
)
��/ 0
{
��1 2"
partidasActualizadas
��
 
.
�� 
Add
�� "
(
��" #
Partidas
��# +
.
��+ ,
	ElementAt
��, 5
(
��5 6
i
��6 7
)
��7 8
.
��8 9
Value
��9 >
)
��> ?
;
��? @
}
�� 	
foreach
�� 
(
�� 
var
�� 
cliente
�� 
in
�� 
JugadoresPartidas
��  1
.
��1 2
Keys
��2 6
)
��6 7
{
��8 9
cliente
��
 
.
��  
ActualizarPartidas
�� $
(
��$ %"
partidasActualizadas
��% 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}
�� 
public
�� 

void
�� "
EnviarMensajePartida
�� $
(
��$ %
String
��% +
mensaje
��, 3
,
��3 4
String
��5 ;
nombrePartida
��< I
,
��I J
int
��K N
tipoMensaje
��O Z
)
��Z [
{
��\ ]
if
�� 
(
��	 

conexionIChat
��
 
==
�� 
null
�� 
)
��  
{
��! "
conexionIChat
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
OperationContext
�� .
.
��. /
Current
��/ 6
.
��6 7 
GetCallbackChannel
��7 I
<
��I J
IClienteChat
��J V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
String
�� 
nombreUsuario
�� 
;
�� 
if
�� 
(
��	 

PartidasEnJuego
��
 
[
�� 
nombrePartida
�� '
]
��' (
.
��( )
JugadoresChat
��) 6
.
��6 7
TryGetValue
��7 B
(
��B C
conexionIChat
��C P
(
��P Q
)
��Q R
,
��R S
out
��T W
nombreUsuario
��X e
)
��e f
)
��f g
{
��h i
foreach
�� 
(
�� 
var
�� 
cliente
�� 
in
�� 
PartidasEnJuego
��  /
[
��/ 0
nombrePartida
��0 =
]
��= >
.
��> ?
JugadoresChat
��? L
.
��L M
Keys
��M Q
)
��Q R
{
��S T
cliente
��
 
.
�� "
RecibeMensajePartida
�� &
(
��& '
nombreUsuario
��' 4
,
��4 5
mensaje
��6 =
,
��= >
tipoMensaje
��? J
)
��J K
;
��K L
}
�� 	
}
�� 
int
�� 	
indice
��
 
;
�� 
for
�� 	
(
��
 
indice
�� 
=
�� 
$num
�� 
;
�� 
indice
�� 
<
�� 
PartidasEnJuego
��  /
[
��/ 0
nombrePartida
��0 =
]
��= >
.
��> ?
JugadoresPartida
��? O
.
��O P
Count
��P U
;
��U V
indice
��W ]
++
��] _
)
��_ `
{
��a b
if
�� 

(
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� )
]
��) *
.
��* +
JugadoresChat
��+ 8
[
��8 9
conexionIChat
��9 F
(
��F G
)
��G H
]
��H I
.
��I J
Equals
��J P
(
��P Q
PartidasEnJuego
��Q `
[
��` a
nombrePartida
��a n
]
��n o
.
��o p
JugadoresPartida��p �
.��� �
	ElementAt��� �
(��� �
indice��� �
)��� �
.��� �
Value��� �
.��� �
NombreUsuario��� �
)��� �
)��� �
{��� �
break
��
 
;
�� 
}
�� 	
}
�� 
if
�� 
(
��	 

tipoMensaje
��
 
==
�� 
$num
�� 
)
�� 
{
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
.
��& '
JugadoresPartida
��' 7
.
��7 8
	ElementAt
��8 A
(
��A B
indice
��B H
)
��H I
.
��I J
Key
��J M
.
��M N
Tirar
��N S
(
��S T
)
��T U
;
��U V
}
�� 
if
�� 
(
��	 

tipoMensaje
��
 
==
�� 
$num
�� 
)
�� 
{
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� %
]
��% &
.
��& '
JugadoresPartida
��' 7
.
��7 8
	ElementAt
��8 A
(
��A B
indice
��B H
)
��H I
.
��I J
Key
��J M
.
��M N
Tirar
��N S
(
��S T
)
��T U
;
��U V
}
�� 
}
�� 
public
�� 

void
�� 
	SalirChat
�� 
(
�� 
String
��  
nombrePartida
��! .
)
��. /
{
��0 1
if
�� 
(
��	 

conexionIChat
��
 
==
�� 
null
�� 
)
��  
{
��! "
conexionIChat
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
OperationContext
�� .
.
��. /
Current
��/ 6
.
��6 7 
GetCallbackChannel
��7 I
<
��I J
IClienteChat
��J V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
Partidas
�� 
[
�� 
nombrePartida
�� 
]
�� 
.
�� 
JugadoresChat
�� +
.
��+ ,
Remove
��, 2
(
��2 3
conexionIChat
��3 @
(
��@ A
)
��A B
)
��B C
;
��C D
if
�� 
(
��	 

Partidas
��
 
[
�� 
nombrePartida
��  
]
��  !
.
��! "
JugadoresPartida
��" 2
.
��2 3
Count
��3 8
==
��9 ;
$num
��< =
)
��= >
{
��? @
Partidas
�� 
.
�� 
Remove
�� 
(
�� 
Partidas
��  
[
��  !
nombrePartida
��! .
]
��. /
.
��/ 0
Nombre
��0 6
)
��6 7
;
��7 8
List
�� 
<
�� 
Partida
�� 
>
�� "
partidasActualizadas
�� *
=
��+ ,
new
��- 0
List
��1 5
<
��5 6
Partida
��6 =
>
��= >
(
��> ?
)
��? @
;
��@ A
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
Partidas
�� $
.
��$ %
Count
��% *
;
��* +
i
��, -
++
��- /
)
��/ 0
{
��1 2"
partidasActualizadas
��
 
.
�� 
Add
�� "
(
��" #
Partidas
��# +
.
��+ ,
	ElementAt
��, 5
(
��5 6
i
��6 7
)
��7 8
.
��8 9
Value
��9 >
)
��> ?
;
��? @
}
�� 	
foreach
�� 
(
�� 
var
�� 
cliente
�� 
in
�� 
JugadoresPartidas
��  1
.
��1 2
Keys
��2 6
)
��6 7
{
��8 9
cliente
��
 
.
��  
ActualizarPartidas
�� $
(
��$ %"
partidasActualizadas
��% 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}
�� 
public
�� 

void
�� 
SalirChatPartida
��  
(
��  !
String
��! '
nombrePartida
��( 5
)
��5 6
{
��7 8
if
�� 
(
��	 

conexionIChat
��
 
==
�� 
null
�� 
)
��  
{
��! "
conexionIChat
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
OperationContext
�� .
.
��. /
Current
��/ 6
.
��6 7 
GetCallbackChannel
��7 I
<
��I J
IClienteChat
��J V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
PartidasEnJuego
�� 
[
�� 
nombrePartida
�� #
]
��# $
.
��$ %
JugadoresChat
��% 2
.
��2 3
Remove
��3 9
(
��9 :
conexionIChat
��: G
(
��G H
)
��H I
)
��I J
;
��J K
if
�� 
(
��	 

PartidasEnJuego
��
 
[
�� 
nombrePartida
�� '
]
��' (
.
��( )
JugadoresChat
��) 6
.
��6 7
Count
��7 <
==
��= ?
$num
��@ A
)
��A B
{
��C D
PartidasEnJuego
�� 
.
�� 
Remove
�� 
(
�� 
nombrePartida
�� ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
}�� 