–
zC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\IChat.cs
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
} é	
ÅC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\IClienteChat.cs
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
} °
ÑC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\IClientePartida.cs
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
} „1
}C:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\IPartida.cs
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
}QQ Ø4
}C:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\IJugador.cs
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
}YY ∏
åC:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\Properties\AssemblyInfo.cs
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
]##) *≠ç
|C:\Users\Arturo\Documents\Semestre5\Tecnolog√≠as para la Construcci√≥n de Software\Proyecto\ServiceSYE\ServiceSYE\Service.cs
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
ÉÉ 

Boolean
ÉÉ 
ValidarConectado
ÉÉ #
(
ÉÉ# $
Jugador
ÉÉ$ +
jugador
ÉÉ, 3
)
ÉÉ3 4
{
ÉÉ5 6
Boolean
ÑÑ 
validar
ÑÑ 
=
ÑÑ 
true
ÑÑ 
;
ÑÑ 
for
ÖÖ 	
(
ÖÖ
 
int
ÖÖ 
i
ÖÖ 
=
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
i
ÖÖ 
<
ÖÖ 
	Jugadores
ÖÖ #
.
ÖÖ# $
Count
ÖÖ$ )
;
ÖÖ) *
i
ÖÖ+ ,
++
ÖÖ, .
)
ÖÖ. /
{
ÖÖ0 1
if
ÜÜ 

(
ÜÜ 
	Jugadores
ÜÜ 
.
ÜÜ 
	ElementAt
ÜÜ 
(
ÜÜ  
i
ÜÜ  !
)
ÜÜ! "
.
ÜÜ" #
Equals
ÜÜ# )
(
ÜÜ) *
jugador
ÜÜ* 1
.
ÜÜ1 2
NombreUsuario
ÜÜ2 ?
)
ÜÜ? @
)
ÜÜ@ A
{
ÜÜB C
validar
áá
 
=
áá 
false
áá 
;
áá 
break
àà
 
;
àà 
}
ââ 	
}
ää 
return
ãã 
validar
ãã 
;
ãã 
}
åå 
public
ïï 

List
ïï 
<
ïï 
Jugador
ïï 
>
ïï $
ObtenerJugadoresPuntos
ïï /
(
ïï/ 0
)
ïï0 1
{
ïï2 3
List
ññ 

<
ññ
 
Jugador
ññ 
>
ññ 
listaJugadores
ññ "
=
ññ# $
new
ññ% (
List
ññ) -
<
ññ- .
Jugador
ññ. 5
>
ññ5 6
(
ññ6 7
)
ññ7 8
;
ññ8 9
try
óó 	
{
óó
 
using
òò 
(
òò 
var
òò 
	baseDatos
òò 
=
òò 
new
òò "
DataBaseContainer
òò# 4
(
òò4 5
)
òò5 6
)
òò6 7
{
òò8 9
var
ôô
 
jugadoresPuntos
ôô 
=
ôô 
(
ôô  !
from
ôô! %
jugadorBaseDatos
ôô& 6
in
ôô7 9
	baseDatos
ôô: C
.
ôôC D

JugadorSet
ôôD N
orderby
ôôO V
jugadorBaseDatos
ôôW g
.
ôôg h
Estadisticas
ôôh t
.
ôôt u
puntos
ôôu {

descendingôô| Ü
selectôôá ç 
jugadorBaseDatosôôé û
)ôôû ü
.ôôü †
Takeôô† §
(ôô§ •
$numôô• ®
)ôô® ©
.ôô© ™
ToListôô™ ∞
(ôô∞ ±
)ôô± ≤
;ôô≤ ≥
foreach
öö
 
(
öö 
var
öö 
jugador
öö 
in
öö !
jugadoresPuntos
öö" 1
)
öö1 2
{
öö3 4
listaJugadores
õõ 
.
õõ 
Add
õõ 
(
õõ 
new
õõ "
Jugador
õõ# *
{
õõ+ ,
NombreUsuario
úú 
=
úú 
jugador
úú %
.
úú% &
nombreUsuario
úú& 3
,
úú3 4
Contrasenia
ùù 
=
ùù 
jugador
ùù #
.
ùù# $
contrasenia
ùù$ /
,
ùù/ 0
CorreoElectronico
ûû 
=
ûû  !
jugador
ûû" )
.
ûû) *
correoElectronico
ûû* ;
,
ûû; <
Codigo
üü 
=
üü 
jugador
üü 
.
üü 
codigo
üü %
,
üü% &
Estadisticas
†† 
=
†† 
new
††  
Estadisticas
††! -
{
††. /
Puntos
°° 
=
°° 
jugador
°°  
.
°°  !
Estadisticas
°°! -
.
°°- .
puntos
°°. 4
,
°°4 5
	Victorias
¢¢ 
=
¢¢ 
jugador
¢¢ #
.
¢¢# $
Estadisticas
¢¢$ 0
.
¢¢0 1
	victorias
¢¢1 :
,
¢¢: ;
}
££ 
}
§§ 
)
§§ 
;
§§ 
}
••
 
}
¶¶ 	
}
ßß 
catch
ßß 
(
ßß 
EntityException
ßß 
)
ßß 
{
ßß  !
listaJugadores
®® 
=
®® 
new
®® 
List
®® !
<
®®! "
Jugador
®®" )
>
®®) *
(
®®* +
)
®®+ ,
;
®®, -
}
©© 
return
™™ 
listaJugadores
™™ 
;
™™ 
}
´´ 
public
¥¥ 

List
¥¥ 
<
¥¥ 
Jugador
¥¥ 
>
¥¥ '
ObtenerJugadoresVictorias
¥¥ 2
(
¥¥2 3
)
¥¥3 4
{
¥¥5 6
List
µµ 

<
µµ
 
Jugador
µµ 
>
µµ 
listaJugadores
µµ "
=
µµ# $
new
µµ% (
List
µµ) -
<
µµ- .
Jugador
µµ. 5
>
µµ5 6
(
µµ6 7
)
µµ7 8
;
µµ8 9
try
∂∂ 	
{
∂∂
 
using
∑∑ 
(
∑∑ 
var
∑∑ 
	baseDatos
∑∑ 
=
∑∑ 
new
∑∑ "
DataBaseContainer
∑∑# 4
(
∑∑4 5
)
∑∑5 6
)
∑∑6 7
{
∑∑8 9
var
∏∏
  
jugadoresVictorias
∏∏  
=
∏∏! "
(
∏∏# $
from
∏∏$ (
jugadorBaseDatos
∏∏) 9
in
∏∏: <
	baseDatos
∏∏= F
.
∏∏F G

JugadorSet
∏∏G Q
orderby
∏∏R Y
jugadorBaseDatos
∏∏Z j
.
∏∏j k
Estadisticas
∏∏k w
.
∏∏w x
	victorias∏∏x Å

descending∏∏Ç å
select∏∏ç ì 
jugadorBaseDatos∏∏î §
)∏∏§ •
.∏∏• ¶
Take∏∏¶ ™
(∏∏™ ´
$num∏∏´ Æ
)∏∏Æ Ø
.∏∏Ø ∞
ToList∏∏∞ ∂
(∏∏∂ ∑
)∏∏∑ ∏
;∏∏∏ π
foreach
ππ
 
(
ππ 
var
ππ 
jugador
ππ 
in
ππ ! 
jugadoresVictorias
ππ" 4
)
ππ4 5
{
ππ6 7
listaJugadores
∫∫ 
.
∫∫ 
Add
∫∫ 
(
∫∫ 
new
∫∫ "
Jugador
∫∫# *
{
∫∫+ ,
NombreUsuario
ªª 
=
ªª 
jugador
ªª %
.
ªª% &
nombreUsuario
ªª& 3
,
ªª3 4
Contrasenia
ºº 
=
ºº 
jugador
ºº #
.
ºº# $
contrasenia
ºº$ /
,
ºº/ 0
CorreoElectronico
ΩΩ 
=
ΩΩ  !
jugador
ΩΩ" )
.
ΩΩ) *
correoElectronico
ΩΩ* ;
,
ΩΩ; <
Codigo
ææ 
=
ææ 
jugador
ææ 
.
ææ 
codigo
ææ %
,
ææ% &
Estadisticas
øø 
=
øø 
new
øø  
Estadisticas
øø! -
{
øø. /
Puntos
¿¿ 
=
¿¿ 
jugador
¿¿  
.
¿¿  !
Estadisticas
¿¿! -
.
¿¿- .
puntos
¿¿. 4
,
¿¿4 5
	Victorias
¡¡ 
=
¡¡ 
jugador
¡¡ #
.
¡¡# $
Estadisticas
¡¡$ 0
.
¡¡0 1
	victorias
¡¡1 :
,
¡¡: ;
}
¬¬ 
}
√√ 
)
√√ 
;
√√ 
}
ƒƒ
 
}
≈≈ 	
}
∆∆ 
catch
∆∆ 
(
∆∆ 
EntityException
∆∆ 
)
∆∆ 
{
∆∆  !
listaJugadores
«« 
=
«« 
new
«« 
List
«« !
<
««! "
Jugador
««" )
>
««) *
(
««* +
)
««+ ,
;
««, -
}
»» 
return
…… 
listaJugadores
…… 
;
…… 
}
   
public
ﬁﬁ 

Boolean
ﬁﬁ !
EnviarCodigoACorreo
ﬁﬁ &
(
ﬁﬁ& '
Jugador
ﬁﬁ' .
jugador
ﬁﬁ/ 6
,
ﬁﬁ6 7
String
ﬁﬁ8 >
asunto
ﬁﬁ? E
,
ﬁﬁE F
String
ﬁﬁG M
mensajeIngresar
ﬁﬁN ]
,
ﬁﬁ] ^
String
ﬁﬁ_ e
mensajeFinal
ﬁﬁf r
)
ﬁﬁr s
{
ﬁﬁt u
Boolean
ﬂﬂ 
correcto
ﬂﬂ 
=
ﬂﬂ 
true
ﬂﬂ 
;
ﬂﬂ 
System
‡‡ 
.
‡‡ 
Net
‡‡ 
.
‡‡ 
Mail
‡‡ 
.
‡‡ 
MailMessage
‡‡ !
mensaje
‡‡" )
=
‡‡* +
new
‡‡, /
System
‡‡0 6
.
‡‡6 7
Net
‡‡7 :
.
‡‡: ;
Mail
‡‡; ?
.
‡‡? @
MailMessage
‡‡@ K
(
‡‡K L
)
‡‡L M
;
‡‡M N
mensaje
·· 
.
·· 
To
·· 
.
·· 
Add
·· 
(
·· 
jugador
·· 
.
·· 
CorreoElectronico
·· .
)
··. /
;
··/ 0
mensaje
‚‚ 
.
‚‚ 
Subject
‚‚ 
=
‚‚ 
asunto
‚‚ 
;
‚‚ 
mensaje
„„ 
.
„„ 
SubjectEncoding
„„ 
=
„„ 
System
„„  &
.
„„& '
Text
„„' +
.
„„+ ,
Encoding
„„, 4
.
„„4 5
UTF8
„„5 9
;
„„9 :
String
‰‰ 
mensajeCorreo
‰‰ 
=
‰‰ 
mensajeIngresar
‰‰ ,
+
‰‰- .
jugador
‰‰/ 6
.
‰‰6 7
Codigo
‰‰7 =
+
‰‰> ?
mensajeFinal
‰‰@ L
;
‰‰L M
mensaje
ÂÂ 
.
ÂÂ 
Body
ÂÂ 
=
ÂÂ 
mensajeCorreo
ÂÂ "
;
ÂÂ" #
mensaje
ÊÊ 
.
ÊÊ 

IsBodyHtml
ÊÊ 
=
ÊÊ 
true
ÊÊ 
;
ÊÊ  
mensaje
ÁÁ 
.
ÁÁ 
BodyEncoding
ÁÁ 
=
ÁÁ 
System
ÁÁ #
.
ÁÁ# $
Text
ÁÁ$ (
.
ÁÁ( )
Encoding
ÁÁ) 1
.
ÁÁ1 2
UTF8
ÁÁ2 6
;
ÁÁ6 7
mensaje
ËË 
.
ËË 

IsBodyHtml
ËË 
=
ËË 
true
ËË 
;
ËË  
mensaje
ÈÈ 
.
ÈÈ 
From
ÈÈ 
=
ÈÈ 
new
ÈÈ 
System
ÈÈ 
.
ÈÈ  
Net
ÈÈ  #
.
ÈÈ# $
Mail
ÈÈ$ (
.
ÈÈ( )
MailAddress
ÈÈ) 4
(
ÈÈ4 5
DesEncriptar
ÈÈ5 A
(
ÈÈA B

Properties
ÈÈB L
.
ÈÈL M
	Resources
ÈÈM V
.
ÈÈV W
correo
ÈÈW ]
)
ÈÈ] ^
)
ÈÈ^ _
;
ÈÈ_ `
System
ÍÍ 
.
ÍÍ 
Net
ÍÍ 
.
ÍÍ 
Mail
ÍÍ 
.
ÍÍ 

SmtpClient
ÍÍ  
cliente
ÍÍ! (
=
ÍÍ) *
new
ÍÍ+ .
System
ÍÍ/ 5
.
ÍÍ5 6
Net
ÍÍ6 9
.
ÍÍ9 :
Mail
ÍÍ: >
.
ÍÍ> ?

SmtpClient
ÍÍ? I
(
ÍÍI J
)
ÍÍJ K
;
ÍÍK L
cliente
ÎÎ 
.
ÎÎ 
Credentials
ÎÎ 
=
ÎÎ 
new
ÎÎ 
System
ÎÎ  &
.
ÎÎ& '
Net
ÎÎ' *
.
ÎÎ* +
NetworkCredential
ÎÎ+ <
(
ÎÎ< =
DesEncriptar
ÎÎ= I
(
ÎÎI J

Properties
ÎÎJ T
.
ÎÎT U
	Resources
ÎÎU ^
.
ÎÎ^ _
correo
ÎÎ_ e
)
ÎÎe f
,
ÎÎf g
DesEncriptar
ÎÎh t
(
ÎÎt u

Properties
ÎÎu 
.ÎÎ Ä
	ResourcesÎÎÄ â
.ÎÎâ ä
contraseniaÎÎä ï
)ÎÎï ñ
)ÎÎñ ó
;ÎÎó ò
cliente
ÏÏ 
.
ÏÏ 
Port
ÏÏ 
=
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
cliente
ÌÌ 
.
ÌÌ 
	EnableSsl
ÌÌ 
=
ÌÌ 
true
ÌÌ 
;
ÌÌ 
cliente
ÓÓ 
.
ÓÓ 
Host
ÓÓ 
=
ÓÓ 
$str
ÓÓ %
;
ÓÓ% &
try
ÔÔ 	
{
ÔÔ
 
cliente
 
.
 
Send
 
(
 
mensaje
 
)
 
;
 
}
ÒÒ 
catch
ÒÒ 
(
ÒÒ 
SmtpException
ÒÒ 
)
ÒÒ 
{
ÒÒ 
correcto
ÚÚ 
=
ÚÚ 
false
ÚÚ 
;
ÚÚ 
}
ÛÛ 
return
ÙÙ 
correcto
ÙÙ 
;
ÙÙ 
}
ıı 
public
ÇÇ 

Jugador
ÇÇ %
ObtenerJugadorPorCodigo
ÇÇ *
(
ÇÇ* +
String
ÇÇ+ 1 
codigoVerificacion
ÇÇ2 D
)
ÇÇD E
{
ÇÇF G
Jugador
ÉÉ 
jugadorEncontrado
ÉÉ 
;
ÉÉ  
try
ÑÑ 	
{
ÑÑ
 
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
	baseDatos
ÖÖ 
=
ÖÖ 
new
ÖÖ "
DataBaseContainer
ÖÖ# 4
(
ÖÖ4 5
)
ÖÖ5 6
)
ÖÖ6 7
{
ÖÖ8 9
var
ÜÜ
 
jugador
ÜÜ 
=
ÜÜ 
(
ÜÜ 
from
ÜÜ 
jugadorBaseDatos
ÜÜ .
in
ÜÜ/ 1
	baseDatos
ÜÜ2 ;
.
ÜÜ; <

JugadorSet
ÜÜ< F
where
ÜÜG L
jugadorBaseDatos
ÜÜM ]
.
ÜÜ] ^
codigo
ÜÜ^ d
==
ÜÜe g 
codigoVerificacion
ÜÜh z
selectÜÜ{ Å 
jugadorBaseDatosÜÜÇ í
)ÜÜí ì
.ÜÜì î
ToListÜÜî ö
(ÜÜö õ
)ÜÜõ ú
;ÜÜú ù
jugadorEncontrado
áá
 
=
áá 
CrearJugador
áá *
(
áá* +
jugador
áá+ 2
)
áá2 3
;
áá3 4
}
àà 	
}
ââ 
catch
ââ 
(
ââ 
EntityException
ââ 
)
ââ 
{
ââ  !
jugadorEncontrado
ää 
=
ää 
new
ää 
Jugador
ää  '
{
ää( )
NombreUsuario
ãã
 
=
ãã 
$str
ãã 
,
ãã 
}
åå 	
;
åå	 

}
çç 
return
éé 
jugadorEncontrado
éé 
;
éé 
}
èè 
public
úú 

Jugador
úú %
ObtenerJugadorPorNombre
úú *
(
úú* +
String
úú+ 1
nombreUsuario
úú2 ?
)
úú? @
{
úúA B
Jugador
ùù 
jugadorEncontrado
ùù 
;
ùù  
try
ûû 	
{
ûû
 
using
üü 
(
üü 
var
üü 
	baseDatos
üü 
=
üü 
new
üü "
DataBaseContainer
üü# 4
(
üü4 5
)
üü5 6
)
üü6 7
{
üü8 9
var
††
 
jugador
†† 
=
†† 
(
†† 
from
†† 
jugadorBaseDatos
†† .
in
††/ 1
	baseDatos
††2 ;
.
††; <

JugadorSet
††< F
where
††G L
jugadorBaseDatos
††M ]
.
††] ^
nombreUsuario
††^ k
==
††l n
nombreUsuario
††o |
select††} É 
jugadorBaseDatos††Ñ î
)††î ï
.††ï ñ
ToList††ñ ú
(††ú ù
)††ù û
;††û ü
jugadorEncontrado
°°
 
=
°° 
CrearJugador
°° *
(
°°* +
jugador
°°+ 2
)
°°2 3
;
°°3 4
}
¢¢ 	
}
££ 
catch
££ 
(
££ 
EntityException
££ 
)
££ 
{
££  !
jugadorEncontrado
§§ 
=
§§ 
new
§§ 
Jugador
§§  '
{
§§( )
NombreUsuario
••
 
=
•• 
$str
•• 
,
•• 
}
¶¶ 	
;
¶¶	 

}
ßß 
return
®® 
jugadorEncontrado
®® 
;
®® 
}
©© 
public
∂∂ 

Jugador
∂∂ %
ObtenerJugadorPorCorreo
∂∂ *
(
∂∂* +
String
∂∂+ 1
correoElectronico
∂∂2 C
)
∂∂C D
{
∂∂E F
Jugador
∑∑ 
jugadorEncontrado
∑∑ 
;
∑∑  
try
∏∏ 	
{
∏∏
 
using
ππ 
(
ππ 
var
ππ 
	baseDatos
ππ 
=
ππ 
new
ππ "
DataBaseContainer
ππ# 4
(
ππ4 5
)
ππ5 6
)
ππ6 7
{
ππ8 9
var
∫∫
 
jugador
∫∫ 
=
∫∫ 
(
∫∫ 
from
∫∫ 
jugadorBaseDatos
∫∫ .
in
∫∫/ 1
	baseDatos
∫∫2 ;
.
∫∫; <

JugadorSet
∫∫< F
where
∫∫G L
jugadorBaseDatos
∫∫M ]
.
∫∫] ^
correoElectronico
∫∫^ o
==
∫∫p r 
correoElectronico∫∫s Ñ
select∫∫Ö ã 
jugadorBaseDatos∫∫å ú
)∫∫ú ù
.∫∫ù û
ToList∫∫û §
(∫∫§ •
)∫∫• ¶
;∫∫¶ ß
jugadorEncontrado
ªª
 
=
ªª 
CrearJugador
ªª *
(
ªª* +
jugador
ªª+ 2
)
ªª2 3
;
ªª3 4
}
ºº 	
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
EntityException
ΩΩ 
)
ΩΩ 
{
ΩΩ  !
jugadorEncontrado
ææ 
=
ææ 
new
ææ 
Jugador
ææ  '
{
ææ( )
NombreUsuario
øø
 
=
øø 
$str
øø 
,
øø 
}
¿¿ 	
;
¿¿	 

}
¡¡ 
return
¬¬ 
jugadorEncontrado
¬¬ 
;
¬¬ 
}
√√ 
public
œœ 

Jugador
œœ 
CrearJugador
œœ 
(
œœ  
List
œœ  $
<
œœ$ %

DataAccess
œœ% /
.
œœ/ 0
Jugador
œœ0 7
>
œœ7 8
jugador
œœ9 @
)
œœ@ A
{
œœB C
Jugador
–– 
jugadorEncontrado
–– 
;
––  
if
—— 
(
——	 

jugador
——
 
.
—— 
Count
—— 
==
—— 
$num
—— 
)
—— 
{
—— 
jugadorEncontrado
““ 
=
““ 
new
““ 
Jugador
““  '
{
““( )
NombreUsuario
””
 
=
”” 
jugador
”” !
.
””! "
	ElementAt
””" +
(
””+ ,
$num
””, -
)
””- .
.
””. /
nombreUsuario
””/ <
,
””< =
Contrasenia
‘‘
 
=
‘‘ 
jugador
‘‘ 
.
‘‘  
	ElementAt
‘‘  )
(
‘‘) *
$num
‘‘* +
)
‘‘+ ,
.
‘‘, -
contrasenia
‘‘- 8
,
‘‘8 9
CorreoElectronico
’’
 
=
’’ 
jugador
’’ %
.
’’% &
	ElementAt
’’& /
(
’’/ 0
$num
’’0 1
)
’’1 2
.
’’2 3
correoElectronico
’’3 D
,
’’D E
Codigo
÷÷
 
=
÷÷ 
jugador
÷÷ 
.
÷÷ 
	ElementAt
÷÷ $
(
÷÷$ %
$num
÷÷% &
)
÷÷& '
.
÷÷' (
codigo
÷÷( .
,
÷÷. /
Estadisticas
◊◊
 
=
◊◊ 
new
◊◊ 
Estadisticas
◊◊ )
{
◊◊* +
Puntos
ÿÿ 
=
ÿÿ 
jugador
ÿÿ 
.
ÿÿ 
	ElementAt
ÿÿ &
(
ÿÿ& '
$num
ÿÿ' (
)
ÿÿ( )
.
ÿÿ) *
Estadisticas
ÿÿ* 6
.
ÿÿ6 7
puntos
ÿÿ7 =
,
ÿÿ= >
	Victorias
ŸŸ 
=
ŸŸ 
jugador
ŸŸ 
.
ŸŸ  
	ElementAt
ŸŸ  )
(
ŸŸ) *
$num
ŸŸ* +
)
ŸŸ+ ,
.
ŸŸ, -
Estadisticas
ŸŸ- 9
.
ŸŸ9 :
	victorias
ŸŸ: C
,
ŸŸC D
}
⁄⁄
 
}
€€ 	
;
€€	 

}
‹‹ 
else
‹‹ 
{
‹‹ 
jugadorEncontrado
›› 
=
›› 
new
›› 
Jugador
››  '
{
››( )
NombreUsuario
ﬁﬁ
 
=
ﬁﬁ 
$str
ﬁﬁ 
,
ﬁﬁ 
Contrasenia
ﬂﬂ
 
=
ﬂﬂ 
$str
ﬂﬂ 
,
ﬂﬂ 
CorreoElectronico
‡‡
 
=
‡‡ 
$str
‡‡  
,
‡‡  !
Codigo
··
 
=
·· 
$str
·· 
,
·· 
Estadisticas
‚‚
 
=
‚‚ 
new
‚‚ 
Estadisticas
‚‚ )
(
‚‚) *
)
‚‚* +
,
‚‚+ ,
}
„„ 	
;
„„	 

}
‰‰ 
return
ÂÂ 
jugadorEncontrado
ÂÂ 
;
ÂÂ 
}
ÊÊ 
public
ÒÒ 

Boolean
ÒÒ "
ValidarCuentaJugador
ÒÒ '
(
ÒÒ' (
String
ÒÒ( . 
codigoVerificacion
ÒÒ/ A
)
ÒÒA B
{
ÒÒC D
Boolean
ÚÚ 
exito
ÚÚ 
=
ÚÚ 
true
ÚÚ 
;
ÚÚ 
try
ÛÛ 	
{
ÛÛ
 
using
ÙÙ 
(
ÙÙ 
var
ÙÙ 
	baseDatos
ÙÙ 
=
ÙÙ 
new
ÙÙ "
DataBaseContainer
ÙÙ# 4
(
ÙÙ4 5
)
ÙÙ5 6
)
ÙÙ6 7
{
ÙÙ8 9
var
ıı
 
jugador
ıı 
=
ıı 
(
ıı 
from
ıı 
jugadorBaseDatos
ıı .
in
ıı/ 1
	baseDatos
ıı2 ;
.
ıı; <

JugadorSet
ıı< F
where
ııG L
jugadorBaseDatos
ııM ]
.
ıı] ^
codigo
ıı^ d
==
ııe g 
codigoVerificacion
ııh z
selectıı{ Å 
jugadorBaseDatosııÇ í
)ııí ì
.ııì î
ToListııî ö
(ııö õ
)ııõ ú
;ııú ù
jugador
ˆˆ
 
.
ˆˆ 
	ElementAt
ˆˆ 
(
ˆˆ 
$num
ˆˆ 
)
ˆˆ 
.
ˆˆ 
codigo
ˆˆ %
=
ˆˆ& '
$str
ˆˆ( /
;
ˆˆ/ 0
	baseDatos
˜˜
 
.
˜˜ 
SaveChanges
˜˜ 
(
˜˜  
)
˜˜  !
;
˜˜! "
}
¯¯ 	
}
˘˘ 
catch
˘˘ 
(
˘˘ 
EntityException
˘˘ 
)
˘˘ 
{
˘˘  !
exito
˙˙ 
=
˙˙ 
false
˙˙ 
;
˙˙ 
}
˚˚ 
return
¸¸ 
exito
¸¸ 
;
¸¸ 
}
˝˝ 
public
àà 

int
àà 
ValidarCodigo
àà 
(
àà 
String
àà # 
codigoVerificacion
àà$ 6
)
àà6 7
{
àà8 9
int
ââ 	
validar
ââ
 
=
ââ 
$num
ââ 
;
ââ 
try
ää 	
{
ää
 
using
ãã 
(
ãã 
var
ãã 
	baseDatos
ãã 
=
ãã 
new
ãã "
DataBaseContainer
ãã# 4
(
ãã4 5
)
ãã5 6
)
ãã6 7
{
ãã8 9
var
åå
 
jugador
åå 
=
åå 
(
åå 
from
åå 
jugadorBaseDatos
åå .
in
åå/ 1
	baseDatos
åå2 ;
.
åå; <

JugadorSet
åå< F
where
ååG L
jugadorBaseDatos
ååM ]
.
åå] ^
codigo
åå^ d
==
ååe g 
codigoVerificacion
ååh z
selectåå{ Å 
jugadorBaseDatosååÇ í
)ååí ì
.ååì î
ToListååî ö
(ååö õ
)ååõ ú
;ååú ù
if
çç
 
(
çç 
jugador
çç 
.
çç 
Count
çç 
==
çç 
$num
çç  
)
çç  !
{
çç" #
validar
éé 
=
éé 
$num
éé 
;
éé 
}
èè
 
}
êê 	
}
ëë 
catch
ëë 
(
ëë 
EntityException
ëë 
)
ëë 
{
ëë  !
validar
íí 
=
íí 
$num
íí 
;
íí 
}
ìì 
return
îî 
validar
îî 
;
îî 
}
ïï 
public
££ 

Boolean
££ 
ModificarCodigo
££ "
(
££" #
String
££# ) 
codigoVerificacion
££* <
,
££< =
String
££> D%
nuevoCodigoVerificacion
££E \
)
££\ ]
{
££^ _
Boolean
§§ 
exito
§§ 
=
§§ 
true
§§ 
;
§§ 
try
•• 	
{
••
 
using
¶¶ 
(
¶¶ 
var
¶¶ 
	baseDatos
¶¶ 
=
¶¶ 
new
¶¶ "
DataBaseContainer
¶¶# 4
(
¶¶4 5
)
¶¶5 6
)
¶¶6 7
{
¶¶8 9
var
ßß
 
jugador
ßß 
=
ßß 
(
ßß 
from
ßß 
jugadorBaseDatos
ßß .
in
ßß/ 1
	baseDatos
ßß2 ;
.
ßß; <

JugadorSet
ßß< F
where
ßßG L
jugadorBaseDatos
ßßM ]
.
ßß] ^
codigo
ßß^ d
==
ßße g 
codigoVerificacion
ßßh z
selectßß{ Å 
jugadorBaseDatosßßÇ í
)ßßí ì
.ßßì î
ToListßßî ö
(ßßö õ
)ßßõ ú
;ßßú ù
jugador
®®
 
.
®® 
	ElementAt
®® 
(
®® 
$num
®® 
)
®® 
.
®® 
codigo
®® %
=
®®& '%
nuevoCodigoVerificacion
®®( ?
;
®®? @
	baseDatos
©©
 
.
©© 
SaveChanges
©© 
(
©©  
)
©©  !
;
©©! "
}
™™ 	
}
´´ 
catch
´´ 
(
´´ 
EntityException
´´ 
)
´´ 
{
´´  !
exito
¨¨ 
=
¨¨ 
false
¨¨ 
;
¨¨ 
}
≠≠ 
return
ÆÆ 
exito
ÆÆ 
;
ÆÆ 
}
ØØ 
public
¿¿ 

Boolean
¿¿ #
ModificarEstadisticas
¿¿ (
(
¿¿( )
String
¿¿) /
nombreUsuario
¿¿0 =
,
¿¿= >
Int16
¿¿? D
puntos
¿¿E K
,
¿¿K L
Int16
¿¿M R
	victorias
¿¿S \
)
¿¿\ ]
{
¿¿^ _
Boolean
¡¡ 
exito
¡¡ 
=
¡¡ 
true
¡¡ 
;
¡¡ 
try
¬¬ 	
{
¬¬
 
using
√√ 
(
√√ 
var
√√ 
	baseDatos
√√ 
=
√√ 
new
√√ "
DataBaseContainer
√√# 4
(
√√4 5
)
√√5 6
)
√√6 7
{
√√8 9
var
ƒƒ
 
jugador
ƒƒ 
=
ƒƒ 
(
ƒƒ 
from
ƒƒ 
jugadorBaseDatos
ƒƒ .
in
ƒƒ/ 1
	baseDatos
ƒƒ2 ;
.
ƒƒ; <

JugadorSet
ƒƒ< F
where
ƒƒG L
jugadorBaseDatos
ƒƒM ]
.
ƒƒ] ^
nombreUsuario
ƒƒ^ k
==
ƒƒl n
nombreUsuario
ƒƒo |
selectƒƒ} É 
jugadorBaseDatosƒƒÑ î
)ƒƒî ï
.ƒƒï ñ
ToListƒƒñ ú
(ƒƒú ù
)ƒƒù û
;ƒƒû ü
jugador
≈≈
 
.
≈≈ 
	ElementAt
≈≈ 
(
≈≈ 
$num
≈≈ 
)
≈≈ 
.
≈≈ 
Estadisticas
≈≈ +
.
≈≈+ ,
puntos
≈≈, 2
=
≈≈3 4
puntos
≈≈5 ;
;
≈≈; <
jugador
∆∆
 
.
∆∆ 
	ElementAt
∆∆ 
(
∆∆ 
$num
∆∆ 
)
∆∆ 
.
∆∆ 
Estadisticas
∆∆ +
.
∆∆+ ,
	victorias
∆∆, 5
=
∆∆6 7
	victorias
∆∆8 A
;
∆∆A B
	baseDatos
««
 
.
«« 
SaveChanges
«« 
(
««  
)
««  !
;
««! "
}
»» 	
}
…… 
catch
…… 
(
…… 
EntityException
…… 
)
…… 
{
……  !
exito
   
=
   
false
   
;
   
}
ÀÀ 
return
ÃÃ 
exito
ÃÃ 
;
ÃÃ 
}
ÕÕ 
private
ÿÿ 
static
ÿÿ 
string
ÿÿ 
DesEncriptar
ÿÿ &
(
ÿÿ& '
string
ÿÿ' -!
CadenaADesencriptar
ÿÿ. A
)
ÿÿA B
{
ÿÿC D
string
ŸŸ 
	resultado
ŸŸ 
=
ŸŸ 
string
ŸŸ 
.
ŸŸ  
Empty
ŸŸ  %
;
ŸŸ% &
byte
⁄⁄ 

[
⁄⁄
 
]
⁄⁄ 
desencriptado
⁄⁄ 
=
⁄⁄ 
Convert
⁄⁄ $
.
⁄⁄$ %
FromBase64String
⁄⁄% 5
(
⁄⁄5 6!
CadenaADesencriptar
⁄⁄6 I
)
⁄⁄I J
;
⁄⁄J K
	resultado
€€ 
=
€€ 
System
€€ 
.
€€ 
Text
€€ 
.
€€ 
Encoding
€€ &
.
€€& '
Unicode
€€' .
.
€€. /
	GetString
€€/ 8
(
€€8 9
desencriptado
€€9 F
)
€€F G
;
€€G H
return
‹‹ 
	resultado
‹‹ 
;
‹‹ 
}
›› 
}
ﬁﬁ 
public
‡‡ 
partial
‡‡	 
class
‡‡ 
Service
‡‡ 
:
‡‡  
IPartida
‡‡! )
{
‡‡* +
private
·· 
Random
·· 
random
·· 
=
·· 
new
·· 
Random
··  &
(
··& '
)
··' (
;
··( )
private
‚‚ 
Func
‚‚ 
<
‚‚ 
IClientePartida
‚‚  
>
‚‚  !
conexionIPartida
‚‚" 2
;
‚‚2 3
public
ÁÁ 


Dictionary
ÁÁ 
<
ÁÁ 
IClientePartida
ÁÁ %
,
ÁÁ% &
string
ÁÁ' -
>
ÁÁ- .
JugadoresPartidas
ÁÁ/ @
{
ÁÁA B
get
ÁÁC F
;
ÁÁF G
set
ÁÁH K
;
ÁÁK L
}
ÁÁM N
=
ÁÁO P
new
ÁÁQ T

Dictionary
ÁÁU _
<
ÁÁ_ `
IClientePartida
ÁÁ` o
,
ÁÁo p
String
ÁÁq w
>
ÁÁw x
(
ÁÁx y
)
ÁÁy z
;
ÁÁz {
public
ÎÎ 


Dictionary
ÎÎ 
<
ÎÎ 
string
ÎÎ 
,
ÎÎ 
Partida
ÎÎ %
>
ÎÎ% &
Partidas
ÎÎ' /
{
ÎÎ0 1
get
ÎÎ2 5
;
ÎÎ5 6
set
ÎÎ7 :
;
ÎÎ: ;
}
ÎÎ< =
=
ÎÎ> ?
new
ÎÎ@ C

Dictionary
ÎÎD N
<
ÎÎN O
String
ÎÎO U
,
ÎÎU V
Partida
ÎÎW ^
>
ÎÎ^ _
(
ÎÎ_ `
)
ÎÎ` a
;
ÎÎa b
public
ÔÔ 


Dictionary
ÔÔ 
<
ÔÔ 
string
ÔÔ 
,
ÔÔ 
Partida
ÔÔ %
>
ÔÔ% &
PartidasEnJuego
ÔÔ' 6
{
ÔÔ7 8
get
ÔÔ9 <
;
ÔÔ< =
set
ÔÔ> A
;
ÔÔA B
}
ÔÔC D
=
ÔÔE F
new
ÔÔG J

Dictionary
ÔÔK U
<
ÔÔU V
String
ÔÔV \
,
ÔÔ\ ]
Partida
ÔÔ^ e
>
ÔÔe f
(
ÔÔf g
)
ÔÔg h
;
ÔÔh i
public
˜˜ 

Service
˜˜ 
(
˜˜ 
Func
˜˜ 
<
˜˜ 
IClientePartida
˜˜ '
>
˜˜' (
callback
˜˜) 1
)
˜˜1 2
{
˜˜3 4
this
¯¯ 

.
¯¯
 
conexionIPartida
¯¯ 
=
¯¯ 
callback
¯¯ &
??
¯¯' )
throw
¯¯* /
new
¯¯0 3#
ArgumentNullException
¯¯4 I
(
¯¯I J
$str
¯¯J m
)
¯¯m n
;
¯¯n o
}
˘˘ 
public
ÅÅ 

void
ÅÅ 
CrearPartida
ÅÅ 
(
ÅÅ 
Partida
ÅÅ $
partida
ÅÅ% ,
)
ÅÅ, -
{
ÅÅ. /
Partidas
ÇÇ 
[
ÇÇ 
partida
ÇÇ 
.
ÇÇ 
Nombre
ÇÇ 
]
ÇÇ 
=
ÇÇ 
partida
ÇÇ  '
;
ÇÇ' (
List
ÉÉ 

<
ÉÉ
 
Partida
ÉÉ 
>
ÉÉ "
partidasActualizadas
ÉÉ (
=
ÉÉ) *
new
ÉÉ+ .
List
ÉÉ/ 3
<
ÉÉ3 4
Partida
ÉÉ4 ;
>
ÉÉ; <
(
ÉÉ< =
)
ÉÉ= >
;
ÉÉ> ?
for
ÑÑ 	
(
ÑÑ
 
int
ÑÑ 
i
ÑÑ 
=
ÑÑ 
$num
ÑÑ 
;
ÑÑ 
i
ÑÑ 
<
ÑÑ 
Partidas
ÑÑ "
.
ÑÑ" #
Count
ÑÑ# (
;
ÑÑ( )
i
ÑÑ* +
++
ÑÑ+ -
)
ÑÑ- .
{
ÑÑ/ 0"
partidasActualizadas
ÖÖ 
.
ÖÖ 
Add
ÖÖ  
(
ÖÖ  !
Partidas
ÖÖ! )
.
ÖÖ) *
	ElementAt
ÖÖ* 3
(
ÖÖ3 4
i
ÖÖ4 5
)
ÖÖ5 6
.
ÖÖ6 7
Value
ÖÖ7 <
)
ÖÖ< =
;
ÖÖ= >
}
ÜÜ 
foreach
áá 
(
áá 
var
áá 
cliente
áá 
in
áá 
JugadoresPartidas
áá /
.
áá/ 0
Keys
áá0 4
)
áá4 5
{
áá6 7
cliente
àà 
.
àà  
ActualizarPartidas
àà "
(
àà" #"
partidasActualizadas
àà# 7
)
àà7 8
;
àà8 9
}
ââ 
}
ää 
public
ïï 

Boolean
ïï "
ValidarNombrePartida
ïï '
(
ïï' (
String
ïï( .
nombrePartida
ïï/ <
)
ïï< =
{
ïï> ?
Boolean
ññ 
validar
ññ 
=
ññ 
true
ññ 
;
ññ 
for
óó 	
(
óó
 
int
óó 
i
óó 
=
óó 
$num
óó 
;
óó 
i
óó 
<
óó 
Partidas
óó "
.
óó" #
Count
óó# (
;
óó( )
i
óó* +
++
óó+ -
)
óó- .
{
óó/ 0
if
òò 

(
òò 
Partidas
òò 
.
òò 
	ElementAt
òò 
(
òò 
i
òò  
)
òò  !
.
òò! "
Value
òò" '
.
òò' (
Nombre
òò( .
.
òò. /
Equals
òò/ 5
(
òò5 6
nombrePartida
òò6 C
)
òòC D
)
òòD E
{
òòF G
validar
ôô
 
=
ôô 
false
ôô 
;
ôô 
break
öö
 
;
öö 
}
õõ 	
}
úú 
return
ùù 
validar
ùù 
;
ùù 
}
ûû 
public
¶¶ 

List
¶¶ 
<
¶¶ 
Partida
¶¶ 
>
¶¶ 
ObtenerPartidas
¶¶ (
(
¶¶( )
)
¶¶) *
{
¶¶+ ,
List
ßß 

<
ßß
 
Partida
ßß 
>
ßß 
partidasCreadas
ßß #
=
ßß$ %
new
ßß& )
List
ßß* .
<
ßß. /
Partida
ßß/ 6
>
ßß6 7
(
ßß7 8
)
ßß8 9
;
ßß9 :
for
®® 	
(
®®
 
int
®® 
i
®® 
=
®® 
$num
®® 
;
®® 
i
®® 
<
®® 
Partidas
®® "
.
®®" #
Count
®®# (
;
®®( )
i
®®* +
++
®®+ -
)
®®- .
{
®®/ 0
partidasCreadas
©© 
.
©© 
Add
©© 
(
©© 
Partidas
©© $
.
©©$ %
	ElementAt
©©% .
(
©©. /
i
©©/ 0
)
©©0 1
.
©©1 2
Value
©©2 7
)
©©7 8
;
©©8 9
}
™™ 
return
´´ 
partidasCreadas
´´ 
;
´´ 
}
¨¨ 
public
¥¥ 

void
¥¥ 
VerPartidas
¥¥ 
(
¥¥ 
String
¥¥ "
nombreUsuario
¥¥# 0
)
¥¥0 1
{
¥¥2 3
if
µµ 
(
µµ	 

conexionIPartida
µµ
 
==
µµ 
null
µµ "
)
µµ" #
{
µµ$ %
conexionIPartida
∂∂ 
=
∂∂ 
(
∂∂ 
)
∂∂ 
=>
∂∂  
OperationContext
∂∂! 1
.
∂∂1 2
Current
∂∂2 9
.
∂∂9 : 
GetCallbackChannel
∂∂: L
<
∂∂L M
IClientePartida
∂∂M \
>
∂∂\ ]
(
∂∂] ^
)
∂∂^ _
;
∂∂_ `
}
∑∑ 
JugadoresPartidas
∏∏ 
[
∏∏ 
conexionIPartida
∏∏ (
(
∏∏( )
)
∏∏) *
]
∏∏* +
=
∏∏, -
nombreUsuario
∏∏. ;
;
∏∏; <
}
ππ 
public
ææ 

void
ææ 
SalirVerPartidas
ææ  
(
ææ  !
)
ææ! "
{
ææ# $
if
øø 
(
øø	 

conexionIPartida
øø
 
==
øø 
null
øø "
)
øø" #
{
øø$ %
conexionIPartida
¿¿ 
=
¿¿ 
(
¿¿ 
)
¿¿ 
=>
¿¿  
OperationContext
¿¿! 1
.
¿¿1 2
Current
¿¿2 9
.
¿¿9 : 
GetCallbackChannel
¿¿: L
<
¿¿L M
IClientePartida
¿¿M \
>
¿¿\ ]
(
¿¿] ^
)
¿¿^ _
;
¿¿_ `
}
¡¡ 
JugadoresPartidas
¬¬ 
.
¬¬ 
Remove
¬¬ 
(
¬¬ 
conexionIPartida
¬¬ /
(
¬¬/ 0
)
¬¬0 1
)
¬¬1 2
;
¬¬2 3
}
√√ 
public
ŒŒ 

void
ŒŒ 
UnirsePartida
ŒŒ 
(
ŒŒ 
Jugador
ŒŒ %
jugador
ŒŒ& -
,
ŒŒ- .
String
ŒŒ/ 5
nombrePartida
ŒŒ6 C
)
ŒŒC D
{
ŒŒE F
if
œœ 
(
œœ	 

conexionIPartida
œœ
 
==
œœ 
null
œœ "
)
œœ" #
{
œœ$ %
conexionIPartida
–– 
=
–– 
(
–– 
)
–– 
=>
––  
OperationContext
––! 1
.
––1 2
Current
––2 9
.
––9 : 
GetCallbackChannel
––: L
<
––L M
IClientePartida
––M \
>
––\ ]
(
––] ^
)
––^ _
;
––_ `
}
—— 
try
““ 	
{
““
 

Dictionary
”” 
<
”” 
IClientePartida
”” "
,
””" #
Jugador
””$ +
>
””+ ,
jugadoresPartida
””- =
=
””> ?
Partidas
””@ H
[
””H I
nombrePartida
””I V
]
””V W
.
””W X
JugadoresPartida
””X h
;
””h i
jugadoresPartida
‘‘ 
[
‘‘ 
conexionIPartida
‘‘ )
(
‘‘) *
)
‘‘* +
]
‘‘+ ,
=
‘‘- .
jugador
‘‘/ 6
;
‘‘6 7
Partidas
’’ 
[
’’ 
nombrePartida
’’ 
]
’’ 
.
’’  
JugadoresPartida
’’  0
=
’’1 2
jugadoresPartida
’’3 C
;
’’C D
}
÷÷ 
catch
÷÷ 
(
÷÷ $
NullReferenceException
÷÷ %
)
÷÷% &
{
÷÷' (

Dictionary
◊◊ 
<
◊◊ 
IClientePartida
◊◊ "
,
◊◊" #
Jugador
◊◊$ +
>
◊◊+ ,
jugadoresPartida
◊◊- =
=
◊◊> ?
new
◊◊@ C

Dictionary
◊◊D N
<
◊◊N O
IClientePartida
◊◊O ^
,
◊◊^ _
Jugador
◊◊` g
>
◊◊g h
(
◊◊h i
)
◊◊i j
;
◊◊j k
jugadoresPartida
ÿÿ 
[
ÿÿ 
conexionIPartida
ÿÿ )
(
ÿÿ) *
)
ÿÿ* +
]
ÿÿ+ ,
=
ÿÿ- .
jugador
ÿÿ/ 6
;
ÿÿ6 7
Partidas
ŸŸ 
[
ŸŸ 
nombrePartida
ŸŸ 
]
ŸŸ 
.
ŸŸ  
JugadoresPartida
ŸŸ  0
=
ŸŸ1 2
jugadoresPartida
ŸŸ3 C
;
ŸŸC D
}
⁄⁄ 
}
€€ 
public
ÊÊ 

void
ÊÊ 
SalirPartida
ÊÊ 
(
ÊÊ 
Jugador
ÊÊ $
jugador
ÊÊ% ,
,
ÊÊ, -
String
ÊÊ. 4
nombrePartida
ÊÊ5 B
)
ÊÊB C
{
ÊÊD E
if
ÁÁ 
(
ÁÁ	 

conexionIPartida
ÁÁ
 
==
ÁÁ 
null
ÁÁ "
)
ÁÁ" #
{
ÁÁ$ %
conexionIPartida
ËË 
=
ËË 
(
ËË 
)
ËË 
=>
ËË  
OperationContext
ËË! 1
.
ËË1 2
Current
ËË2 9
.
ËË9 : 
GetCallbackChannel
ËË: L
<
ËËL M
IClientePartida
ËËM \
>
ËË\ ]
(
ËË] ^
)
ËË^ _
;
ËË_ `
}
ÈÈ 
Partidas
ÍÍ 
[
ÍÍ 
nombrePartida
ÍÍ 
]
ÍÍ 
.
ÍÍ 
JugadoresPartida
ÍÍ .
.
ÍÍ. /
Remove
ÍÍ/ 5
(
ÍÍ5 6
conexionIPartida
ÍÍ6 F
(
ÍÍF G
)
ÍÍG H
)
ÍÍH I
;
ÍÍI J
}
ÎÎ 
public
ˆˆ 

void
ˆˆ !
SalirPartidaEnJuego
ˆˆ #
(
ˆˆ# $
Jugador
ˆˆ$ +
jugador
ˆˆ, 3
,
ˆˆ3 4
String
ˆˆ5 ;
nombrePartida
ˆˆ< I
)
ˆˆI J
{
ˆˆK L
if
˜˜ 
(
˜˜	 

conexionIPartida
˜˜
 
==
˜˜ 
null
˜˜ "
)
˜˜" #
{
˜˜$ %
conexionIPartida
¯¯ 
=
¯¯ 
(
¯¯ 
)
¯¯ 
=>
¯¯  
OperationContext
¯¯! 1
.
¯¯1 2
Current
¯¯2 9
.
¯¯9 : 
GetCallbackChannel
¯¯: L
<
¯¯L M
IClientePartida
¯¯M \
>
¯¯\ ]
(
¯¯] ^
)
¯¯^ _
;
¯¯_ `
}
˘˘ 
PartidasEnJuego
˙˙ 
[
˙˙ 
nombrePartida
˙˙ #
]
˙˙# $
.
˙˙$ %
JugadoresPartida
˙˙% 5
.
˙˙5 6
Remove
˙˙6 <
(
˙˙< =
conexionIPartida
˙˙= M
(
˙˙M N
)
˙˙N O
)
˙˙O P
;
˙˙P Q
}
˚˚ 
public
ÜÜ 

Partida
ÜÜ 
ObtenerPartida
ÜÜ !
(
ÜÜ! "
String
ÜÜ" (
nombrePartida
ÜÜ) 6
)
ÜÜ6 7
{
ÜÜ8 9
return
áá 
PartidasEnJuego
áá 
[
áá 
nombrePartida
áá *
]
áá* +
;
áá+ ,
}
àà 
public
óó 

void
óó 
CambiarTurno
óó 
(
óó 
String
óó #
nombrePartida
óó$ 1
,
óó1 2
int
óó3 6
casilla
óó7 >
,
óó> ?
int
óó@ C
turno
óóD I
)
óóI J
{
óóK L
if
òò 
(
òò	 

casilla
òò
 
!=
òò 
$num
òò 
)
òò 
{
òò 
if
ôô 

(
ôô 
conexionIPartida
ôô 
==
ôô 
null
ôô  $
)
ôô$ %
{
ôô& '
conexionIPartida
öö
 
=
öö 
(
öö 
)
öö 
=>
öö  "
OperationContext
öö# 3
.
öö3 4
Current
öö4 ;
.
öö; < 
GetCallbackChannel
öö< N
<
ööN O
IClientePartida
ööO ^
>
öö^ _
(
öö_ `
)
öö` a
;
ööa b
}
õõ 	
PartidasEnJuego
úú 
[
úú 
nombrePartida
úú %
]
úú% &
.
úú& '
JugadoresPartida
úú' 7
[
úú7 8
conexionIPartida
úú8 H
(
úúH I
)
úúI J
]
úúJ K
.
úúK L
Turno
úúL Q
.
úúQ R
Casilla
úúR Y
=
úúZ [
PartidasEnJuego
úú\ k
[
úúk l
nombrePartida
úúl y
]
úúy z
.
úúz {
Tableroúú{ Ç
.úúÇ É
CasillasúúÉ ã
[úúã å
casillaúúå ì
-úúî ï
$numúúñ ó
]úúó ò
;úúò ô
}
ùù 
Boolean
ûû 
verificarTurno
ûû 
=
ûû 
false
ûû $
;
ûû$ %
while
üü 
(
üü 
!
üü 
verificarTurno
üü 
)
üü 
{
üü 
for
†† 
(
†† 
int
†† 
i
†† 
=
†† 
$num
†† 
;
†† 
i
†† 
<
†† 
PartidasEnJuego
†† +
[
††+ ,
nombrePartida
††, 9
]
††9 :
.
††: ;
JugadoresPartida
††; K
.
††K L
Count
††L Q
;
††Q R
i
††S T
++
††T V
)
††V W
{
††X Y
if
°°
 
(
°° 
PartidasEnJuego
°° 
[
°° 
nombrePartida
°° +
]
°°+ ,
.
°°, -
JugadoresPartida
°°- =
.
°°= >
	ElementAt
°°> G
(
°°G H
i
°°H I
)
°°I J
.
°°J K
Value
°°K P
.
°°P Q
Turno
°°Q V
.
°°V W
NumeroTurno
°°W b
.
°°b c
Equals
°°c i
(
°°i j
turno
°°j o
)
°°o p
)
°°p q
{
°°r s
PartidasEnJuego
¢¢ 
[
¢¢ 
nombrePartida
¢¢ )
]
¢¢) *
.
¢¢* +
Turno
¢¢+ 0
=
¢¢1 2
turno
¢¢3 8
;
¢¢8 9
verificarTurno
££ 
=
££ 
true
££ !
;
££! "
break
§§ 
;
§§ 
}
••
 
}
¶¶ 	
if
ßß 

(
ßß 
!
ßß 
verificarTurno
ßß 
)
ßß 
{
ßß 
if
®®
 
(
®® 
turno
®® 
==
®® 
$num
®® 
)
®® 
{
®® 
turno
©© 
=
©© 
$num
©© 
;
©© 
}
™™
 
else
™™ 
{
™™ 
turno
´´ 
=
´´ 
turno
´´ 
+
´´ 
$num
´´ 
;
´´ 
}
¨¨
 
}
≠≠ 	
}
ÆÆ 
}
ØØ 
public
∫∫ 

void
∫∫  
MovimientoEspecial
∫∫ "
(
∫∫" #
String
∫∫# )
nombrePartida
∫∫* 7
,
∫∫7 8
int
∫∫9 <
casilla
∫∫= D
)
∫∫D E
{
∫∫F G
if
ªª 
(
ªª	 

conexionIPartida
ªª
 
==
ªª 
null
ªª "
)
ªª" #
{
ªª$ %
conexionIPartida
ºº 
=
ºº 
(
ºº 
)
ºº 
=>
ºº  
OperationContext
ºº! 1
.
ºº1 2
Current
ºº2 9
.
ºº9 : 
GetCallbackChannel
ºº: L
<
ººL M
IClientePartida
ººM \
>
ºº\ ]
(
ºº] ^
)
ºº^ _
;
ºº_ `
}
ΩΩ 
PartidasEnJuego
ææ 
[
ææ 
nombrePartida
ææ #
]
ææ# $
.
ææ$ %
JugadoresPartida
ææ% 5
[
ææ5 6
conexionIPartida
ææ6 F
(
ææF G
)
ææG H
]
ææH I
.
ææI J
Turno
ææJ O
.
ææO P
Casilla
ææP W
=
ææX Y
PartidasEnJuego
ææZ i
[
ææi j
nombrePartida
ææj w
]
ææw x
.
ææx y
Tableroææy Ä
.ææÄ Å
CasillasææÅ â
[ææâ ä
casillaææä ë
-ææí ì
$numææî ï
]ææï ñ
;ææñ ó
}
øø 
public
«« 

void
«« "
CambiarPosicionBonus
«« $
(
««$ %
String
««% +
nombrePartida
««, 9
)
««9 :
{
««; <
for
»» 	
(
»»
 
int
»» 
i
»» 
=
»» 
$num
»» 
;
»» 
i
»» 
<
»» 
$num
»» 
;
»» 
i
»»  
++
»»  "
)
»»" #
{
»»$ %
PartidasEnJuego
…… 
[
…… 
nombrePartida
…… %
]
……% &
.
……& '
Tablero
……' .
.
……. /
Casillas
……/ 7
[
……7 8
i
……8 9
]
……9 :
.
……: ;
Bonus
……; @
=
……A B
false
……C H
;
……H I
}
   
int
ÀÀ 	
posicionMinima
ÀÀ
 
=
ÀÀ 
$num
ÀÀ 
;
ÀÀ 
for
ÃÃ 	
(
ÃÃ
 
int
ÃÃ 
i
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
i
ÃÃ 
<
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
i
ÃÃ 
++
ÃÃ  
)
ÃÃ  !
{
ÃÃ" #
PartidasEnJuego
ÕÕ 
[
ÕÕ 
nombrePartida
ÕÕ %
]
ÕÕ% &
.
ÕÕ& '
Tablero
ÕÕ' .
.
ÕÕ. /
Casillas
ÕÕ/ 7
[
ÕÕ7 8%
DeterminarPosicionBonus
ÕÕ8 O
(
ÕÕO P
PartidasEnJuego
ÕÕP _
[
ÕÕ_ `
nombrePartida
ÕÕ` m
]
ÕÕm n
.
ÕÕn o
Tablero
ÕÕo v
.
ÕÕv w
Casillas
ÕÕw 
,ÕÕ Ä
posicionMinimaÕÕÅ è
)ÕÕè ê
]ÕÕê ë
.ÕÕë í
BonusÕÕí ó
=ÕÕò ô
trueÕÕö û
;ÕÕû ü
posicionMinima
ŒŒ 
=
ŒŒ 
posicionMinima
ŒŒ '
+
ŒŒ( )
$num
ŒŒ* ,
;
ŒŒ, -
}
œœ 
}
–– 
public
ÿÿ 

void
ÿÿ 
CrearTurnos
ÿÿ 
(
ÿÿ 
String
ÿÿ "
nombrePartida
ÿÿ# 0
)
ÿÿ0 1
{
ÿÿ2 3
for
ŸŸ 	
(
ŸŸ
 
int
ŸŸ 
i
ŸŸ 
=
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
i
ŸŸ 
<
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
i
ŸŸ 
++
ŸŸ  
)
ŸŸ  !
{
ŸŸ" #
Partidas
⁄⁄ 
[
⁄⁄ 
nombrePartida
⁄⁄ 
]
⁄⁄ 
.
⁄⁄  
JugadoresPartida
⁄⁄  0
.
⁄⁄0 1
	ElementAt
⁄⁄1 :
(
⁄⁄: ;
i
⁄⁄; <
)
⁄⁄< =
.
⁄⁄= >
Value
⁄⁄> C
.
⁄⁄C D
Turno
⁄⁄D I
=
⁄⁄J K
new
⁄⁄L O
Turno
⁄⁄P U
{
⁄⁄V W
NumeroTurno
€€
 
=
€€ 
i
€€ 
+
€€ 
$num
€€ 
,
€€ 
Casilla
‹‹
 
=
‹‹ 
new
‹‹ 
Casilla
‹‹ 
{
‹‹  !
Numero
›› 
=
›› 
$num
›› 
,
›› 
	PosicionX
ﬁﬁ 
=
ﬁﬁ 
-
ﬁﬁ 
$num
ﬁﬁ 
,
ﬁﬁ 
	PosicionY
ﬂﬂ 
=
ﬂﬂ 
-
ﬂﬂ 
$num
ﬂﬂ 
,
ﬂﬂ 

Movimiento
‡‡ 
=
‡‡ 
$num
‡‡ 
,
‡‡ 
Bonus
·· 
=
·· 
false
·· 
,
·· 
}
‚‚
 
,
‚‚ 
}
„„ 	
;
„„	 

}
‰‰ 
}
ÂÂ 
private
ÌÌ 
void
ÌÌ 
CrearTablero
ÌÌ 
(
ÌÌ 
String
ÌÌ $
nombrePartida
ÌÌ% 2
)
ÌÌ2 3
{
ÌÌ4 5
int
ÓÓ 	
	posicionX
ÓÓ
 
=
ÓÓ 
$num
ÓÓ 
,
ÓÓ 
	posicionY
ÓÓ "
=
ÓÓ# $
$num
ÓÓ% '
;
ÓÓ' (
Boolean
ÔÔ 
avanzar
ÔÔ 
=
ÔÔ 
true
ÔÔ 
;
ÔÔ 
Casilla
 
[
 
]
 
casillas
 
=
 
new
 
Casilla
 &
[
& '
$num
' *
]
* +
;
+ ,
casillas
ÒÒ 
[
ÒÒ 
$num
ÒÒ 
]
ÒÒ 
=
ÒÒ 
CrearCasilla
ÒÒ  
(
ÒÒ  !
$num
ÒÒ! "
,
ÒÒ" #
	posicionX
ÒÒ$ -
,
ÒÒ- .
	posicionY
ÒÒ/ 8
)
ÒÒ8 9
;
ÒÒ9 :
for
ÚÚ 	
(
ÚÚ
 
int
ÚÚ 
i
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
i
ÚÚ 
<
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
i
ÚÚ  
++
ÚÚ  "
)
ÚÚ" #
{
ÚÚ$ %
if
ÛÛ 

(
ÛÛ 
i
ÛÛ 
%
ÛÛ 
$num
ÛÛ 
==
ÛÛ 
$num
ÛÛ 
)
ÛÛ 
{
ÛÛ 
casillas
ÙÙ
 
[
ÙÙ 
i
ÙÙ 
]
ÙÙ 
=
ÙÙ 
CrearCasilla
ÙÙ $
(
ÙÙ$ %
i
ÙÙ% &
+
ÙÙ' (
$num
ÙÙ) *
,
ÙÙ* +
	posicionX
ÙÙ, 5
,
ÙÙ5 6
	posicionY
ÙÙ7 @
+
ÙÙA B
$num
ÙÙC E
)
ÙÙE F
;
ÙÙF G
	posicionY
ıı
 
=
ıı 
	posicionY
ıı 
+
ıı  !
$num
ıı" $
;
ıı$ %
avanzar
ˆˆ
 
=
ˆˆ 
!
ˆˆ 
avanzar
ˆˆ 
;
ˆˆ 
}
˜˜ 	
else
˜˜
 
{
˜˜ 
if
¯¯
 
(
¯¯ 
avanzar
¯¯ 
)
¯¯ 
{
¯¯ 
casillas
˘˘ 
[
˘˘ 
i
˘˘ 
]
˘˘ 
=
˘˘ 
CrearCasilla
˘˘ &
(
˘˘& '
i
˘˘' (
+
˘˘) *
$num
˘˘+ ,
,
˘˘, -
	posicionX
˘˘. 7
+
˘˘8 9
$num
˘˘: <
,
˘˘< =
	posicionY
˘˘> G
)
˘˘G H
;
˘˘H I
	posicionX
˙˙ 
=
˙˙ 
	posicionX
˙˙ !
+
˙˙" #
$num
˙˙$ &
;
˙˙& '
}
˚˚
 
else
˚˚ 
{
˚˚ 
casillas
¸¸ 
[
¸¸ 
i
¸¸ 
]
¸¸ 
=
¸¸ 
CrearCasilla
¸¸ &
(
¸¸& '
i
¸¸' (
+
¸¸) *
$num
¸¸+ ,
,
¸¸, -
	posicionX
¸¸. 7
-
¸¸8 9
$num
¸¸: <
,
¸¸< =
	posicionY
¸¸> G
)
¸¸G H
;
¸¸H I
	posicionX
˝˝ 
=
˝˝ 
	posicionX
˝˝ !
-
˝˝" #
$num
˝˝$ &
;
˝˝& '
}
˛˛
 
}
ˇˇ 	
}
ÄÄ 
casillas
ÅÅ 
=
ÅÅ '
CrearSerpientesYEscaleras
ÅÅ *
(
ÅÅ* +
nombrePartida
ÅÅ+ 8
,
ÅÅ8 9
casillas
ÅÅ: B
)
ÅÅB C
;
ÅÅC D
casillas
ÇÇ 
=
ÇÇ 

CrearBonus
ÇÇ 
(
ÇÇ 
casillas
ÇÇ $
)
ÇÇ$ %
;
ÇÇ% &
Partidas
ÉÉ 
[
ÉÉ 
nombrePartida
ÉÉ 
]
ÉÉ 
.
ÉÉ 
Tablero
ÉÉ %
=
ÉÉ& '
new
ÉÉ( +
Tablero
ÉÉ, 3
{
ÉÉ4 5
Casillas
ÑÑ 
=
ÑÑ 
casillas
ÑÑ 
,
ÑÑ 
}
ÖÖ 
;
ÖÖ 
}
ÜÜ 
public
óó 

Casilla
óó 
CrearCasilla
óó 
(
óó  
int
óó  #
indice
óó$ *
,
óó* +
int
óó, /
	posicionX
óó0 9
,
óó9 :
int
óó; >
	posicionY
óó? H
)
óóH I
{
óóJ K
return
òò 
new
òò 
Casilla
òò 
{
òò 
Numero
ôô 
=
ôô 
indice
ôô 
,
ôô 
	PosicionX
öö 
=
öö 
	posicionX
öö 
,
öö 
	PosicionY
õõ 
=
õõ 
	posicionY
õõ 
,
õõ 

Movimiento
úú 
=
úú 
$num
úú 
,
úú 
Bonus
ùù 
=
ùù 
false
ùù 
,
ùù 
}
ûû 
;
ûû 
}
üü 
public
≠≠ 

Casilla
≠≠ 
[
≠≠ 
]
≠≠ '
CrearSerpientesYEscaleras
≠≠ .
(
≠≠. /
String
≠≠/ 5
nombrePartida
≠≠6 C
,
≠≠C D
Casilla
≠≠E L
[
≠≠L M
]
≠≠M N
casillas
≠≠O W
)
≠≠W X
{
≠≠Y Z
casillas
ÆÆ 
[
ÆÆ 
$num
ÆÆ 
]
ÆÆ 
.
ÆÆ 

Movimiento
ÆÆ 
=
ÆÆ 
$num
ÆÆ  "
;
ÆÆ" #
casillas
ØØ 
[
ØØ 
$num
ØØ 
]
ØØ 
.
ØØ 

Movimiento
ØØ 
=
ØØ 
$num
ØØ  "
;
ØØ" #
casillas
∞∞ 
[
∞∞ 
$num
∞∞ 
]
∞∞ 
.
∞∞ 

Movimiento
∞∞ 
=
∞∞ 
-
∞∞  !
$num
∞∞! #
;
∞∞# $
casillas
±± 
[
±± 
$num
±± 
]
±± 
.
±± 

Movimiento
±± 
=
±± 
$num
±±  "
;
±±" #
casillas
≤≤ 
[
≤≤ 
$num
≤≤ 
]
≤≤ 
.
≤≤ 

Movimiento
≤≤ 
=
≤≤ 
-
≤≤  !
$num
≤≤! #
;
≤≤# $
casillas
≥≥ 
[
≥≥ 
$num
≥≥ 
]
≥≥ 
.
≥≥ 

Movimiento
≥≥ 
=
≥≥ 
-
≥≥  !
$num
≥≥! #
;
≥≥# $
if
¥¥ 
(
¥¥	 

Partidas
¥¥
 
[
¥¥ 
nombrePartida
¥¥  
]
¥¥  !
.
¥¥! "

Dificultad
¥¥" ,
.
¥¥, -
Equals
¥¥- 3
(
¥¥3 4
$str
¥¥4 <
)
¥¥< =
)
¥¥= >
{
¥¥? @
casillas
µµ 
[
µµ 
$num
µµ 
]
µµ 
.
µµ 

Movimiento
µµ 
=
µµ  !
-
µµ" #
$num
µµ# %
;
µµ% &
casillas
∂∂ 
[
∂∂ 
$num
∂∂ 
]
∂∂ 
.
∂∂ 

Movimiento
∂∂ 
=
∂∂  !
$num
∂∂" $
;
∂∂$ %
}
∑∑ 
else
∑∑ 
{
∑∑ 
if
∏∏ 

(
∏∏ 
Partidas
∏∏ 
[
∏∏ 
nombrePartida
∏∏ "
]
∏∏" #
.
∏∏# $

Dificultad
∏∏$ .
.
∏∏. /
Equals
∏∏/ 5
(
∏∏5 6
$str
∏∏6 =
)
∏∏= >
||
∏∏? A
Partidas
∏∏B J
[
∏∏J K
nombrePartida
∏∏K X
]
∏∏X Y
.
∏∏Y Z

Dificultad
∏∏Z d
.
∏∏d e
Equals
∏∏e k
(
∏∏k l
$str
∏∏l r
)
∏∏r s
)
∏∏s t
{
∏∏u v
casillas
ππ
 
[
ππ 
$num
ππ 
]
ππ 
.
ππ 

Movimiento
ππ  
=
ππ! "
$num
ππ# %
;
ππ% &
casillas
∫∫
 
[
∫∫ 
$num
∫∫ 
]
∫∫ 
.
∫∫ 

Movimiento
∫∫ !
=
∫∫" #
$num
∫∫$ &
;
∫∫& '
casillas
ªª
 
[
ªª 
$num
ªª 
]
ªª 
.
ªª 

Movimiento
ªª !
=
ªª" #
$num
ªª$ &
;
ªª& '
}
ºº 	
else
ºº
 
{
ºº 
casillas
ΩΩ
 
[
ΩΩ 
$num
ΩΩ 
]
ΩΩ 
.
ΩΩ 

Movimiento
ΩΩ !
=
ΩΩ" #
-
ΩΩ$ %
$num
ΩΩ% '
;
ΩΩ' (
casillas
ææ
 
[
ææ 
$num
ææ 
]
ææ 
.
ææ 

Movimiento
ææ !
=
ææ" #
-
ææ$ %
$num
ææ% '
;
ææ' (
casillas
øø
 
[
øø 
$num
øø 
]
øø 
.
øø 

Movimiento
øø !
=
øø" #
-
øø$ %
$num
øø% '
;
øø' (
}
¿¿ 	
}
¡¡ 
return
¬¬ 
casillas
¬¬ 
;
¬¬ 
}
√√ 
private
ŒŒ 
Casilla
ŒŒ 
[
ŒŒ 
]
ŒŒ 

CrearBonus
ŒŒ  
(
ŒŒ  !
Casilla
ŒŒ! (
[
ŒŒ( )
]
ŒŒ) *
casillas
ŒŒ+ 3
)
ŒŒ3 4
{
ŒŒ5 6
int
œœ 	
posicionMinima
œœ
 
=
œœ 
$num
œœ 
;
œœ 
for
–– 	
(
––
 
int
–– 
i
–– 
=
–– 
$num
–– 
;
–– 
i
–– 
<
–– 
$num
–– 
;
–– 
i
–– 
++
––  
)
––  !
{
––" #
casillas
—— 
[
—— %
DeterminarPosicionBonus
—— (
(
——( )
casillas
——) 1
,
——1 2
posicionMinima
——3 A
)
——A B
]
——B C
.
——C D
Bonus
——D I
=
——J K
true
——L P
;
——P Q
posicionMinima
““ 
=
““ 
posicionMinima
““ '
+
““( )
$num
““* ,
;
““, -
}
”” 
return
‘‘ 
casillas
‘‘ 
;
‘‘ 
}
’’ 
private
„„ 
int
„„ %
DeterminarPosicionBonus
„„ '
(
„„' (
Casilla
„„( /
[
„„/ 0
]
„„0 1
casillas
„„2 :
,
„„: ;
int
„„< ?
posicionMinima
„„@ N
)
„„N O
{
„„P Q
int
‰‰ 	
posicion
‰‰
 
=
‰‰ 
random
‰‰ 
.
‰‰ 
Next
‰‰  
(
‰‰  !
posicionMinima
‰‰! /
,
‰‰/ 0
posicionMinima
‰‰1 ?
+
‰‰@ A
$num
‰‰B D
)
‰‰D E
;
‰‰E F
while
ÂÂ 
(
ÂÂ 
casillas
ÂÂ 
[
ÂÂ 
posicion
ÂÂ 
]
ÂÂ 
.
ÂÂ  

Movimiento
ÂÂ  *
!=
ÂÂ+ -
$num
ÂÂ. /
)
ÂÂ/ 0
{
ÂÂ1 2
posicion
ÊÊ 
=
ÊÊ 
random
ÊÊ 
.
ÊÊ 
Next
ÊÊ 
(
ÊÊ 
posicionMinima
ÊÊ -
,
ÊÊ- .
posicionMinima
ÊÊ/ =
+
ÊÊ> ?
$num
ÊÊ@ B
)
ÊÊB C
;
ÊÊC D
}
ÁÁ 
return
ËË 
posicion
ËË 
;
ËË 
}
ÈÈ 
}
ÍÍ 
public
ÏÏ 
partial
ÏÏ	 
class
ÏÏ 
Service
ÏÏ 
:
ÏÏ  
IChat
ÏÏ! &
{
ÏÏ' (
private
ÌÌ 
Func
ÌÌ 
<
ÌÌ 
IClienteChat
ÌÌ 
>
ÌÌ 
conexionIChat
ÌÌ ,
;
ÌÌ, -
public
ıı 

Service
ıı 
(
ıı 
Func
ıı 
<
ıı 
IClienteChat
ıı $
>
ıı$ %
callback
ıı& .
)
ıı. /
{
ıı0 1
this
ˆˆ 

.
ˆˆ
 
conexionIChat
ˆˆ 
=
ˆˆ 
callback
ˆˆ #
??
ˆˆ$ &
throw
ˆˆ' ,
new
ˆˆ- 0#
ArgumentNullException
ˆˆ1 F
(
ˆˆF G
$str
ˆˆG j
)
ˆˆj k
;
ˆˆk l
}
˜˜ 
public
ÇÇ 

void
ÇÇ 

UnirseChat
ÇÇ 
(
ÇÇ 
String
ÇÇ !
nombreUsuario
ÇÇ" /
,
ÇÇ/ 0
String
ÇÇ1 7
nombrePartida
ÇÇ8 E
)
ÇÇE F
{
ÇÇG H
if
ÉÉ 
(
ÉÉ	 

conexionIChat
ÉÉ
 
==
ÉÉ 
null
ÉÉ 
)
ÉÉ  
{
ÉÉ! "
conexionIChat
ÑÑ 
=
ÑÑ 
(
ÑÑ 
)
ÑÑ 
=>
ÑÑ 
OperationContext
ÑÑ .
.
ÑÑ. /
Current
ÑÑ/ 6
.
ÑÑ6 7 
GetCallbackChannel
ÑÑ7 I
<
ÑÑI J
IClienteChat
ÑÑJ V
>
ÑÑV W
(
ÑÑW X
)
ÑÑX Y
;
ÑÑY Z
}
ÖÖ 
try
ÜÜ 	
{
ÜÜ
 

Dictionary
áá 
<
áá 
IClienteChat
áá 
,
áá  
String
áá! '
>
áá' (
jugadoresChat
áá) 6
=
áá7 8
Partidas
áá9 A
[
ááA B
nombrePartida
ááB O
]
ááO P
.
ááP Q
JugadoresChat
ááQ ^
;
áá^ _
jugadoresChat
àà 
[
àà 
conexionIChat
àà #
(
àà# $
)
àà$ %
]
àà% &
=
àà' (
nombreUsuario
àà) 6
;
àà6 7
Partidas
ââ 
[
ââ 
nombrePartida
ââ 
]
ââ 
.
ââ  
JugadoresChat
ââ  -
=
ââ. /
jugadoresChat
ââ0 =
;
ââ= >
}
ää 
catch
ää 
(
ää $
NullReferenceException
ää %
)
ää% &
{
ää' (

Dictionary
ãã 
<
ãã 
IClienteChat
ãã 
,
ãã  
String
ãã! '
>
ãã' (
jugadoresChat
ãã) 6
=
ãã7 8
new
ãã9 <

Dictionary
ãã= G
<
ããG H
IClienteChat
ããH T
,
ããT U
String
ããV \
>
ãã\ ]
(
ãã] ^
)
ãã^ _
;
ãã_ `
jugadoresChat
åå 
[
åå 
conexionIChat
åå #
(
åå# $
)
åå$ %
]
åå% &
=
åå' (
nombreUsuario
åå) 6
;
åå6 7
Partidas
çç 
[
çç 
nombrePartida
çç 
]
çç 
.
çç  
JugadoresChat
çç  -
=
çç. /
jugadoresChat
çç0 =
;
çç= >
}
éé 
if
èè 
(
èè	 

Partidas
èè
 
[
èè 
nombrePartida
èè  
]
èè  !
.
èè! "
JugadoresPartida
èè" 2
.
èè2 3
Count
èè3 8
==
èè9 ;
$num
èè< =
)
èè= >
{
èè? @
CrearTurnos
êê 
(
êê 
nombrePartida
êê !
)
êê! "
;
êê" #
CrearTablero
ëë 
(
ëë 
nombrePartida
ëë "
)
ëë" #
;
ëë# $
PartidasEnJuego
íí 
[
íí 
nombrePartida
íí %
]
íí% &
=
íí' (
Partidas
íí) 1
[
íí1 2
nombrePartida
íí2 ?
]
íí? @
;
íí@ A
}
ìì 
}
îî 
public
üü 

void
üü 
EnviarMensaje
üü 
(
üü 
String
üü $
mensaje
üü% ,
,
üü, -
String
üü. 4
nombrePartida
üü5 B
)
üüB C
{
üüD E
if
†† 
(
††	 

conexionIChat
††
 
==
†† 
null
†† 
)
††  
{
††! "
conexionIChat
°° 
=
°° 
(
°° 
)
°° 
=>
°° 
OperationContext
°° .
.
°°. /
Current
°°/ 6
.
°°6 7 
GetCallbackChannel
°°7 I
<
°°I J
IClienteChat
°°J V
>
°°V W
(
°°W X
)
°°X Y
;
°°Y Z
}
¢¢ 
String
££ 
nombreUsuario
££ 
;
££ 
if
§§ 

(
§§ 
Partidas
§§ 
[
§§ 
nombrePartida
§§ "
]
§§" #
.
§§# $
JugadoresChat
§§$ 1
.
§§1 2
TryGetValue
§§2 =
(
§§= >
conexionIChat
§§> K
(
§§K L
)
§§L M
,
§§M N
out
§§O R
nombreUsuario
§§S `
)
§§` a
)
§§a b
{
§§c d
foreach
••
 
(
•• 
var
•• 
cliente
•• 
in
•• !
Partidas
••" *
[
••* +
nombrePartida
••+ 8
]
••8 9
.
••9 :
JugadoresChat
••: G
.
••G H
Keys
••H L
)
••L M
{
••N O
cliente
¶¶ 
.
¶¶ 
RecibeMensaje
¶¶ !
(
¶¶! "
nombreUsuario
¶¶" /
,
¶¶/ 0
mensaje
¶¶1 8
,
¶¶8 9
Partidas
¶¶: B
[
¶¶B C
nombrePartida
¶¶C P
]
¶¶P Q
.
¶¶Q R
JugadoresPartida
¶¶R b
.
¶¶b c
Count
¶¶c h
)
¶¶h i
;
¶¶i j
}
ßß
 
}
®® 	
if
©© 
(
©©	 

Partidas
©©
 
[
©© 
nombrePartida
©©  
]
©©  !
.
©©! "
JugadoresPartida
©©" 2
.
©©2 3
Count
©©3 8
==
©©9 ;
$num
©©< =
)
©©= >
{
©©? @
Partidas
™™ 
.
™™ 
Remove
™™ 
(
™™ 
Partidas
™™  
[
™™  !
nombrePartida
™™! .
]
™™. /
.
™™/ 0
Nombre
™™0 6
)
™™6 7
;
™™7 8
List
´´ 
<
´´ 
Partida
´´ 
>
´´ "
partidasActualizadas
´´ *
=
´´+ ,
new
´´- 0
List
´´1 5
<
´´5 6
Partida
´´6 =
>
´´= >
(
´´> ?
)
´´? @
;
´´@ A
for
¨¨ 
(
¨¨ 
int
¨¨ 
i
¨¨ 
=
¨¨ 
$num
¨¨ 
;
¨¨ 
i
¨¨ 
<
¨¨ 
Partidas
¨¨ $
.
¨¨$ %
Count
¨¨% *
;
¨¨* +
i
¨¨, -
++
¨¨- /
)
¨¨/ 0
{
¨¨1 2"
partidasActualizadas
≠≠
 
.
≠≠ 
Add
≠≠ "
(
≠≠" #
Partidas
≠≠# +
.
≠≠+ ,
	ElementAt
≠≠, 5
(
≠≠5 6
i
≠≠6 7
)
≠≠7 8
.
≠≠8 9
Value
≠≠9 >
)
≠≠> ?
;
≠≠? @
}
ÆÆ 	
foreach
ØØ 
(
ØØ 
var
ØØ 
cliente
ØØ 
in
ØØ 
JugadoresPartidas
ØØ  1
.
ØØ1 2
Keys
ØØ2 6
)
ØØ6 7
{
ØØ8 9
cliente
∞∞
 
.
∞∞  
ActualizarPartidas
∞∞ $
(
∞∞$ %"
partidasActualizadas
∞∞% 9
)
∞∞9 :
;
∞∞: ;
}
±± 	
}
≤≤ 
}
≥≥ 
public
¡¡ 

void
¡¡ "
EnviarMensajePartida
¡¡ $
(
¡¡$ %
String
¡¡% +
mensaje
¡¡, 3
,
¡¡3 4
String
¡¡5 ;
nombrePartida
¡¡< I
,
¡¡I J
int
¡¡K N
tipoMensaje
¡¡O Z
)
¡¡Z [
{
¡¡\ ]
if
¬¬ 
(
¬¬	 

conexionIChat
¬¬
 
==
¬¬ 
null
¬¬ 
)
¬¬  
{
¬¬! "
conexionIChat
√√ 
=
√√ 
(
√√ 
)
√√ 
=>
√√ 
OperationContext
√√ .
.
√√. /
Current
√√/ 6
.
√√6 7 
GetCallbackChannel
√√7 I
<
√√I J
IClienteChat
√√J V
>
√√V W
(
√√W X
)
√√X Y
;
√√Y Z
}
ƒƒ 
String
≈≈ 
nombreUsuario
≈≈ 
;
≈≈ 
if
∆∆ 
(
∆∆	 

PartidasEnJuego
∆∆
 
[
∆∆ 
nombrePartida
∆∆ '
]
∆∆' (
.
∆∆( )
JugadoresChat
∆∆) 6
.
∆∆6 7
TryGetValue
∆∆7 B
(
∆∆B C
conexionIChat
∆∆C P
(
∆∆P Q
)
∆∆Q R
,
∆∆R S
out
∆∆T W
nombreUsuario
∆∆X e
)
∆∆e f
)
∆∆f g
{
∆∆h i
foreach
«« 
(
«« 
var
«« 
cliente
«« 
in
«« 
PartidasEnJuego
««  /
[
««/ 0
nombrePartida
««0 =
]
««= >
.
««> ?
JugadoresChat
««? L
.
««L M
Keys
««M Q
)
««Q R
{
««S T
cliente
»»
 
.
»» "
RecibeMensajePartida
»» &
(
»»& '
nombreUsuario
»»' 4
,
»»4 5
mensaje
»»6 =
,
»»= >
tipoMensaje
»»? J
)
»»J K
;
»»K L
}
…… 	
}
   
int
ÀÀ 	
indice
ÀÀ
 
;
ÀÀ 
for
ÃÃ 	
(
ÃÃ
 
indice
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
indice
ÃÃ 
<
ÃÃ 
PartidasEnJuego
ÃÃ  /
[
ÃÃ/ 0
nombrePartida
ÃÃ0 =
]
ÃÃ= >
.
ÃÃ> ?
JugadoresPartida
ÃÃ? O
.
ÃÃO P
Count
ÃÃP U
;
ÃÃU V
indice
ÃÃW ]
++
ÃÃ] _
)
ÃÃ_ `
{
ÃÃa b
if
ÕÕ 

(
ÕÕ 
PartidasEnJuego
ÕÕ 
[
ÕÕ 
nombrePartida
ÕÕ )
]
ÕÕ) *
.
ÕÕ* +
JugadoresChat
ÕÕ+ 8
[
ÕÕ8 9
conexionIChat
ÕÕ9 F
(
ÕÕF G
)
ÕÕG H
]
ÕÕH I
.
ÕÕI J
Equals
ÕÕJ P
(
ÕÕP Q
PartidasEnJuego
ÕÕQ `
[
ÕÕ` a
nombrePartida
ÕÕa n
]
ÕÕn o
.
ÕÕo p
JugadoresPartidaÕÕp Ä
.ÕÕÄ Å
	ElementAtÕÕÅ ä
(ÕÕä ã
indiceÕÕã ë
)ÕÕë í
.ÕÕí ì
ValueÕÕì ò
.ÕÕò ô
NombreUsuarioÕÕô ¶
)ÕÕ¶ ß
)ÕÕß ®
{ÕÕ© ™
break
ŒŒ
 
;
ŒŒ 
}
œœ 	
}
–– 
if
—— 
(
——	 

tipoMensaje
——
 
==
—— 
$num
—— 
)
—— 
{
—— 
PartidasEnJuego
““ 
[
““ 
nombrePartida
““ %
]
““% &
.
““& '
JugadoresPartida
““' 7
.
““7 8
	ElementAt
““8 A
(
““A B
indice
““B H
)
““H I
.
““I J
Key
““J M
.
““M N
Tirar
““N S
(
““S T
)
““T U
;
““U V
}
”” 
if
‘‘ 
(
‘‘	 

tipoMensaje
‘‘
 
==
‘‘ 
$num
‘‘ 
)
‘‘ 
{
‘‘ 
PartidasEnJuego
’’ 
[
’’ 
nombrePartida
’’ %
]
’’% &
.
’’& '
JugadoresPartida
’’' 7
.
’’7 8
	ElementAt
’’8 A
(
’’A B
indice
’’B H
)
’’H I
.
’’I J
Key
’’J M
.
’’M N
Tirar
’’N S
(
’’S T
)
’’T U
;
’’U V
}
÷÷ 
}
◊◊ 
public
ﬂﬂ 

void
ﬂﬂ 
	SalirChat
ﬂﬂ 
(
ﬂﬂ 
String
ﬂﬂ  
nombrePartida
ﬂﬂ! .
)
ﬂﬂ. /
{
ﬂﬂ0 1
if
‡‡ 
(
‡‡	 

conexionIChat
‡‡
 
==
‡‡ 
null
‡‡ 
)
‡‡  
{
‡‡! "
conexionIChat
·· 
=
·· 
(
·· 
)
·· 
=>
·· 
OperationContext
·· .
.
··. /
Current
··/ 6
.
··6 7 
GetCallbackChannel
··7 I
<
··I J
IClienteChat
··J V
>
··V W
(
··W X
)
··X Y
;
··Y Z
}
‚‚ 
Partidas
„„ 
[
„„ 
nombrePartida
„„ 
]
„„ 
.
„„ 
JugadoresChat
„„ +
.
„„+ ,
Remove
„„, 2
(
„„2 3
conexionIChat
„„3 @
(
„„@ A
)
„„A B
)
„„B C
;
„„C D
if
‰‰ 
(
‰‰	 

Partidas
‰‰
 
[
‰‰ 
nombrePartida
‰‰  
]
‰‰  !
.
‰‰! "
JugadoresPartida
‰‰" 2
.
‰‰2 3
Count
‰‰3 8
==
‰‰9 ;
$num
‰‰< =
)
‰‰= >
{
‰‰? @
Partidas
ÂÂ 
.
ÂÂ 
Remove
ÂÂ 
(
ÂÂ 
Partidas
ÂÂ  
[
ÂÂ  !
nombrePartida
ÂÂ! .
]
ÂÂ. /
.
ÂÂ/ 0
Nombre
ÂÂ0 6
)
ÂÂ6 7
;
ÂÂ7 8
List
ÊÊ 
<
ÊÊ 
Partida
ÊÊ 
>
ÊÊ "
partidasActualizadas
ÊÊ *
=
ÊÊ+ ,
new
ÊÊ- 0
List
ÊÊ1 5
<
ÊÊ5 6
Partida
ÊÊ6 =
>
ÊÊ= >
(
ÊÊ> ?
)
ÊÊ? @
;
ÊÊ@ A
for
ÁÁ 
(
ÁÁ 
int
ÁÁ 
i
ÁÁ 
=
ÁÁ 
$num
ÁÁ 
;
ÁÁ 
i
ÁÁ 
<
ÁÁ 
Partidas
ÁÁ $
.
ÁÁ$ %
Count
ÁÁ% *
;
ÁÁ* +
i
ÁÁ, -
++
ÁÁ- /
)
ÁÁ/ 0
{
ÁÁ1 2"
partidasActualizadas
ËË
 
.
ËË 
Add
ËË "
(
ËË" #
Partidas
ËË# +
.
ËË+ ,
	ElementAt
ËË, 5
(
ËË5 6
i
ËË6 7
)
ËË7 8
.
ËË8 9
Value
ËË9 >
)
ËË> ?
;
ËË? @
}
ÈÈ 	
foreach
ÍÍ 
(
ÍÍ 
var
ÍÍ 
cliente
ÍÍ 
in
ÍÍ 
JugadoresPartidas
ÍÍ  1
.
ÍÍ1 2
Keys
ÍÍ2 6
)
ÍÍ6 7
{
ÍÍ8 9
cliente
ÎÎ
 
.
ÎÎ  
ActualizarPartidas
ÎÎ $
(
ÎÎ$ %"
partidasActualizadas
ÎÎ% 9
)
ÎÎ9 :
;
ÎÎ: ;
}
ÏÏ 	
}
ÌÌ 
}
ÓÓ 
public
ˆˆ 

void
ˆˆ 
SalirChatPartida
ˆˆ  
(
ˆˆ  !
String
ˆˆ! '
nombrePartida
ˆˆ( 5
)
ˆˆ5 6
{
ˆˆ7 8
if
˜˜ 
(
˜˜	 

conexionIChat
˜˜
 
==
˜˜ 
null
˜˜ 
)
˜˜  
{
˜˜! "
conexionIChat
¯¯ 
=
¯¯ 
(
¯¯ 
)
¯¯ 
=>
¯¯ 
OperationContext
¯¯ .
.
¯¯. /
Current
¯¯/ 6
.
¯¯6 7 
GetCallbackChannel
¯¯7 I
<
¯¯I J
IClienteChat
¯¯J V
>
¯¯V W
(
¯¯W X
)
¯¯X Y
;
¯¯Y Z
}
˘˘ 
PartidasEnJuego
˙˙ 
[
˙˙ 
nombrePartida
˙˙ #
]
˙˙# $
.
˙˙$ %
JugadoresChat
˙˙% 2
.
˙˙2 3
Remove
˙˙3 9
(
˙˙9 :
conexionIChat
˙˙: G
(
˙˙G H
)
˙˙H I
)
˙˙I J
;
˙˙J K
if
˚˚ 
(
˚˚	 

PartidasEnJuego
˚˚
 
[
˚˚ 
nombrePartida
˚˚ '
]
˚˚' (
.
˚˚( )
JugadoresChat
˚˚) 6
.
˚˚6 7
Count
˚˚7 <
==
˚˚= ?
$num
˚˚@ A
)
˚˚A B
{
˚˚C D
PartidasEnJuego
¸¸ 
.
¸¸ 
Remove
¸¸ 
(
¸¸ 
nombrePartida
¸¸ ,
)
¸¸, -
;
¸¸- .
}
˝˝ 
}
˛˛ 
}
ˇˇ 
}ÄÄ 