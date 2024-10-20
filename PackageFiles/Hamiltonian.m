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
getHam[VlmsRules_]:=Module[{h2,h4,dh2,dh4},
h2[m_,mp_]:=Sum[
GR2[m,mp,mpp]*Vlm[2,mpp]/.VlmsRules
,{mpp,-2,2}];
h4[m_,mp_]:=Sum[
GR4[m,mp,mpp]*Vlm[4,mpp]/.VlmsRules
,{mpp,-4,4}];

dh2=Table[h2[m,mp],{m,-2,2},{mp,-2,2}];(*Print["dh2 = ",dh2//MatrixForm];*)
dh4=Table[h4[m,mp],{m,-2,2},{mp,-2,2}];(*Print["dh4 = ",dh4//MatrixForm];*)

(*Print["dh2^{t2g,eg} = ",dh2[[{1,4,2,3,5},{1,4,2,3,5}]]//MatrixForm];
Print["dh4^{t2g,eg} = ",dh4[[{1,4,2,3,5},{1,4,2,3,5}]]//MatrixForm];
*)
{dh2,dh4}
]


(* ::Input::Initialization:: *)
getHaml024[VlmsRules_]:=Module[{h2,h4,dh2,dh4,h0,dh0},
h0[m_,mp_]:=GR0[m,mp,0]*Vlm[0,0]/.VlmsRules;
h2[m_,mp_]:=Sum[
GR2[m,mp,mpp]*Vlm[2,mpp]/.VlmsRules
,{mpp,-2,2}];
h4[m_,mp_]:=Sum[
GR4[m,mp,mpp]*Vlm[4,mpp]/.VlmsRules
,{mpp,-4,4}];

dh0=Table[h0[m,mp],{m,-2,2},{mp,-2,2}];
dh2=Table[h2[m,mp],{m,-2,2},{mp,-2,2}];(*Print["dh2 = ",dh2//MatrixForm];*)
dh4=Table[h4[m,mp],{m,-2,2},{mp,-2,2}];(*Print["dh4 = ",dh4//MatrixForm];*)

(*Print["dh2^{t2g,eg} = ",dh2[[{1,4,2,3,5},{1,4,2,3,5}]]//MatrixForm];
Print["dh4^{t2g,eg} = ",dh4[[{1,4,2,3,5},{1,4,2,3,5}]]//MatrixForm];
*)
{dh0,dh2,dh4}
]


(* ::Input::Initialization:: *)
gett2g[VlmsRulesA_]:=Module[{ieg,it2g,H5,evals,Rl2\[Theta]0,Rl2\[Theta]0T},
Rl2\[Theta]0=Rl2;
Rl2\[Theta]0T=Rl2\[Theta]0//Transpose;
(* Here; D2 stands for D2/a^3;D4 stands for D4/a^5; and the whole spectrum is scaled by  *)
ieg={3,5};
it2g={1,2,4};
H5=Rl2\[Theta]0T.(D2 dh20A+D4 dh40A).Rl2\[Theta]0; (*dh20A/dh40A and dh20B/dh40B; same structure, only Vlm diff *)
(*H5[[it2g,it2g]]//FullSimplify//MatrixForm;*)
(*H5[[{2,4},{2,4}]]//Eigenvalues//FullSimplify;*)
(*H5[[2,4]]/.VlmsRulesA/.\[Alpha]\[Rule] 0//FullSimplify//Print;*)

H5[[it2g,it2g]]/.VlmsRulesA(*//FullSimplify*)
]


(* ::Input::Initialization:: *)
geteg[VlmsRulesA_]:=Module[{ieg,it2g,H5,evals,Rl2\[Theta]0,Rl2\[Theta]0T},
Rl2\[Theta]0=Rl2;
Rl2\[Theta]0T=Rl2\[Theta]0//Transpose;
(* Here; D2 stands for D2/a^3;D4 stands for D4/a^5; and the whole spectrum is scaled by  *)
ieg={3,5};
it2g={1,2,4};
H5=Rl2\[Theta]0T.(D2 dh20A+D4 dh40A).Rl2\[Theta]0; (*dh20A/dh40A and dh20B/dh40B; same structure, only Vlm diff *)
H5[[ieg,ieg]]/.VlmsRulesA(*//FullSimplify*)
]


(* ::Input::Initialization:: *)
getegtheta0[VlmsRulesA_]:=Module[{ieg,it2g,H5,evals,Rl2\[Theta]0,Rl2\[Theta]0T,dh},
Rl2\[Theta]0=Rl2/.\[Alpha]-> 0;
Rl2\[Theta]0T=Rl2\[Theta]0//Transpose;
(* Here; D2 stands for D2/a^3;D4 stands for D4/a^5; and the whole spectrum is scaled by  *)
ieg={3,5};
it2g={1,2,4};
H5=Rl2\[Theta]0T.(D2 dh20A+D4 dh40A).Rl2\[Theta]0; (*dh20A/dh40A and dh20B/dh40B; same structure, only Vlm diff *)
(*H5[[it2g,it2g]]//FullSimplify//MatrixForm;*)
(*H5[[{2,4},{2,4}]]//Eigenvalues//FullSimplify;*)
(*H5[[2,4]]/.VlmsRulesA/.\[Alpha]\[Rule] 0//FullSimplify//Print;*)
H5[[ieg,ieg]]/.VlmsRulesA/.\[Alpha]-> 0
]


(* ::Input::Initialization:: *)
gettheta0t2g[VlmsRulesA_]:=Module[{ieg,it2g,H5,evals,Rl2\[Theta]0,Rl2\[Theta]0T},
Rl2\[Theta]0=Rl2/.{\[Alpha]-> 0};
Rl2\[Theta]0T=Rl2\[Theta]0//Transpose;
(* Here; D2 stands for D2/a^3;D4 stands for D4/a^5; and the whole spectrum is scaled by  *)
ieg={3,5};
it2g={1,2,4};
H5=Rl2\[Theta]0T.(D2 dh20A+D4 dh40A).Rl2\[Theta]0; (*dh20A/dh40A and dh20B/dh40B; same structure, only Vlm diff *)
(*H5[[it2g,it2g]]//FullSimplify//MatrixForm;*)
(*H5[[{2,4},{2,4}]]//Eigenvalues//FullSimplify;*)
(*H5[[2,4]]/.VlmsRulesA/.\[Alpha]\[Rule] 0//FullSimplify//Print;*)
evals={(Sqrt[5] D2 (-Sqrt[3] Vlm[2,-2]+Vlm[2,0])-2 D4 (Sqrt[5] Vlm[4,-2]+2 Vlm[4,0]))/(14 Sqrt[\[Pi]]),(Sqrt[5] D2 (Sqrt[3] Vlm[2,-2]+Vlm[2,0])+2 D4 (Sqrt[5] Vlm[4,-2]-2 Vlm[4,0]))/(14 Sqrt[\[Pi]])}/.VlmsRulesA/.\[Alpha]-> 0//FullSimplify;
PrependTo[evals,H5[[1,1]]/.VlmsRulesA/.\[Alpha]-> 0//FullSimplify];
evals
]


(* ::Input::Initialization:: *)
egShiftSplitting[VlmsRulesA_]:=Module[{egs,d2coef,d4coef,d4av,d2av,d2split,d4split},
egs=gettheta0t2g[VlmsRulesA]/.Abs[j_]-> j;
d2coef=SeriesCoefficient[egs,{D2,0,1}];
d2av=Mean[d2coef];
d4coef=SeriesCoefficient[egs,{D4,0,1}];
d4av=Mean[d4coef];
d2split=Assuming[{\[Beta]\[Element]Reals},FullSimplify[(d2coef-d2av)]];
d4split=Assuming[{\[Beta]\[Element]Reals},FullSimplify[(d4coef-d4av)]];
{d2split,d4split,d2av,d4av}
];


(* ::Input::Initialization:: *)
(* other non-local variables: a,D2,D4,\[Alpha],\[Beta] *)
getHamFullABO[Rl2_,VlmsRulesA_,VlmsRulesB_]:=Module[
{dh2A,dh4A,dh2B,dh4B,h24A,h24B,h24O,dhAB,dhABrot,dh},

{dh2A,dh4A}=getHam[VlmsRulesA];
{dh2B,dh4B}=getHam[VlmsRulesB];

h24A=1/a^3*D2 dh2A+1/a^5*D4 dh4A;
h24B=1/a^3*D2 dh2B+1/a^5*D4 dh4B;
h24O=2^5*1/a^5*D4 dh4B/.{\[Alpha]-> 0,\[Beta]-> 0};

dhAB=(q h24A + (6-q) h24B);
dhABrot=Transpose[Rl2].dhAB.Rl2; (* Rl2: new basis states are column so U^T.H.U *)
dh =-dhABrot+ (2)h24O;

dh
];



(* ::Input::Initialization:: *)
getphi0t2g[VlmsRulesA_]:=Module[{ieg,it2g,H5,evals,Rl2\[Theta]0,Rl2\[Theta]0T},
Rl2\[Theta]0=Rl2/.{\[Beta]-> 0};
Rl2\[Theta]0T=Rl2\[Theta]0//Transpose;
(* Here; D2 stands for D2/a^3;D4 stands for D4/a^5; and the whole spectrum is scaled by  *)
ieg={3,5};
it2g={1,2,4};
H5=Rl2\[Theta]0T.(D2 dh20A+D4 dh40A).Rl2\[Theta]0; (*dh20A/dh40A and dh20B/dh40B; same structure, only Vlm diff *)
(*H5[[it2g,it2g]]//FullSimplify//MatrixForm;*)
(*H5[[{2,4},{2,4}]]//Eigenvalues//FullSimplify;*)
(*H5[[2,4]]/.VlmsRulesA/.\[Alpha]\[Rule] 0//FullSimplify//Print;*)
{H5[[1,1]],H5[[2,2]],H5[[4,4]],H5[[1,2]],H5[[1,4]],H5[[2,4]]}/.VlmsRulesA/.\[Beta]-> 0(*//FullSimplify*)
];



(* ::Input::Initialization:: *)

(*\[Alpha]\[Rule] \[Beta]*)
getEigensystem[alpha_,beta_,qs_]:=Module[{evals,evecs,order,eval,evec,eval1,evec1},
evals={};
evecs={};
Do[
{eval,evec}=Eigensystem[dh/.{a-> 7.0,D4-> d224,D2-> Sqrt[d224]}];
order=Ordering[eval];
eval1=eval[[order]];
evec1=evec[[order]];
AppendTo[evals,27.2114079527*eval1];
AppendTo[evecs,evec1];
,{\[Alpha],alpha}
,{\[Beta],beta},{q,qs}];

evals = ArrayReshape[evals,{Length[alpha],Length[beta],Length[qs],5}];
evecs= ArrayReshape[evecs,{Length[alpha],Length[beta],Length[qs],5,5}];
{evals,evecs}
];


