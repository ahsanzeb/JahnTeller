(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
R3[\[Theta]_,\[Phi]_]:={{1/2 ((1+Cos[\[Theta]]) Cos[\[Phi]]+(-1+Cos[\[Theta]]) Sin[\[Phi]]),1/2 (Cos[\[Phi]]-Sin[\[Phi]]-Cos[\[Theta]] (Cos[\[Phi]]+Sin[\[Phi]])),(Sin[\[Theta]] (Cos[\[Phi]]+Sin[\[Phi]]))/Sqrt[2]},{1/2 (Cos[\[Phi]]-Cos[\[Theta]] Cos[\[Phi]]+Sin[\[Phi]]+Cos[\[Theta]] Sin[\[Phi]]),1/2 (Cos[\[Phi]]+Cos[\[Theta]] (Cos[\[Phi]]-Sin[\[Phi]])+Sin[\[Phi]]),(Sin[\[Theta]] (-Cos[\[Phi]]+Sin[\[Phi]]))/Sqrt[2]},{-(Sin[\[Theta]]/Sqrt[2]),Sin[\[Theta]]/Sqrt[2],Cos[\[Theta]]}};


(* ::Input::Initialization:: *)
getDeviations[\[Theta]_,\[Phi]_]:=Module[{avec,xb,thetas,phis,xo,xor,ind,R,avecr,il,io,r2,r3,r4,r5,s1,s2,s5,t6,s,t,tt,xbr,db,B1xBs,B1xBsr,B2,B3,a1,a2,a3,B1dBs,A1,A2,A3,A4,c,As,As0,dAs,xpAs,oct1O},

(*avec=Array[0&,{3,3}];*)
xb=Array[0&,{2,2,3}];
(*avec[[;;,1]]={1,-1,0};
avec[[;;,2]]={1,+1,0};
avec[[;;,3]]={0,0,1}*2;*)
Do[
xb[[il,1,;;]]={1,-1,(il-1)}/2;
xb[[il,2,;;]]={1,+1,(il-1)}/2;
,{il,1,2}];

thetas={1,-1,-1,1}\[Theta];
phis={1,-1,1,-1}\[Phi];

(* Oxygen atoms *)
xo=Array[0&,{2,2,3,6}];
xor=Array[0&,{2,2,3,6}];
xbr=Array[0&,{2,2,3}];
Do[
xo[[il,io,1;;3,1;;3]]=IdentityMatrix[3]/2;
xo[[il,io,1;;3,4;;6]]=-IdentityMatrix[3]/2;

(* rotate these atoms *)
ind=(il-1)*2+io;
R=R3[thetas[[ind]],phis[[ind]]];
Do[
xor[[il,io,1;;3,i]]=
R.xo[[il,io,1;;3,i]];
,{i,1,6}];

,{il,1,2},{io,1,2}];

(* find new lattice vectors; same directions but scaled with diff numbers *)
avecr=Array[0&,{3,3}];
il=1;io=1;
r2=xor[[il,io,;;,2]];
r4=xor[[il,io,;;,4]];
r5=xor[[il,io,;;,5]];
r3=xor[[il,io,;;,3]];
il=1;io=2;
s1=xor[[il,io,;;,1]];
s2=xor[[il,io,;;,2]];
s5=xor[[il,io,;;,5]];
il=2;io=1;
t6=xor[[il,io,;;,6]];

s=r4-s1;
(*Print["should be along -x: s = ",s//FullSimplify];
*)
avecr[[;;,1]]=r2-(s5+s);
avecr[[;;,2]]=s2+s -r5;
t=r3-t6;
tt=t[[3]];
avecr[[;;,3]]={0,0,tt*2};


(* now let's calc atom positions *)

Do[
xbr[[il,1,;;]]={0,0,(il-1)*tt};
xbr[[il,2,;;]]=xbr[[il,1,;;]]+s;
,{il,1,2}];

(* deviations of B atoms *)
db=Array[0&,{2,2,3}];
Do[
db[[il,io,;;]]=xbr[[il,io,;;]]-xb[[il,io,;;]];
,{il,1,2},{io,1,2}];


(*Print["avec (rows) = ",avecr//FullSimplify//Transpose//MatrixForm];
Print["unit cell:"];
Print["xB = ",Flatten[xbr,1]//FullSimplify//MatrixForm];
*)



(* build cage deviations *)
B1xBs=Array[0&,{3,6}];
B1xBsr=Array[0&,{3,6}];

(* B1xBs: along its oxygen atoms at twice the distance;*)
B1xBs=2*xo[[1,1,1;;3,1;;6]]; 


B2=xbr[[1,2,;;]];
B3=xbr[[2,1,;;]];
a1=avecr[[;;,1]];
a2=avecr[[;;,2]];
a3=avecr[[;;,3]];

(* same order as Oxygens *)
B1xBsr[[;;,1]]=B2-a2+a1;
B1xBsr[[;;,2]]=B2+a1;
B1xBsr[[;;,3]]=B3;
B1xBsr[[;;,4]]=B2;
B1xBsr[[;;,5]]=B2-a2;
B1xBsr[[;;,6]]=B3-a3;

(* deviations *)
B1dBs = B1xBsr-B1xBs;

c=tt*2;
A1=a1/2+{0,0,c/4};
A2=a2/2+{0,0,c/4};
A3=a1/2+{0,0,3c/4};
A4=a2/2+{0,0,3c/4};

(*Print["xA = ",{A1,A2,A3,A4}//FullSimplify//MatrixForm];
Print["-----------------------------------"];
*)

As=Array[0&,{3,8}];
As[[;;,1]]=A1;
As[[;;,2]]=A2;
As[[;;,3]]=A3-a3;
As[[;;,4]]=A4-a3;
As[[;;,5]]=A1-a1;
As[[;;,6]]=A2-a2;
As[[;;,7]]=A3-a1-a3;
As[[;;,8]]=A4-a2-a3;
As0=As/.{\[Theta]-> 0,\[Phi]-> 0}//FullSimplify;
dAs=As-As0;

(*Print["A and B ion cages, ion positions: "];
Print["cage: xA = ",As//FullSimplify//Transpose//MatrixForm];
Print["cage: xB = ",B1xBsr//FullSimplify//Transpose//MatrixForm];
oct1O=xor[[1,1]]//Transpose;
Print["cage: xO = ",oct1O//FullSimplify//MatrixForm];
*)
{avecr,B1xBs,B1xBsr,B1dBs,As0,As,dAs(*,oct1O*)}
]



