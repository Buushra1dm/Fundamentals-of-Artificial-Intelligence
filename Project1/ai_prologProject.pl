%project
%Bushra Alzeghabi
%Bushra Abdulkhaleg Dajam
% facts
major(artificial_intelligence).
major(computer_Scince).
major(fashion_Designer).
major(graphic_Designer).
major(law).
major(sports).
major(medical).
major(history).
major(quranic_Sciences).
major(freanch_Language).
major(arabic_Language).
major(nuclear_Engineering).
major(translation).
major(interior_Design).
major(dentistry).
major(logistics).
major(psychology).
major(economics).
major(film_Making).
major(hotel_Mangment).
major(bussines_Mangment).
major(quranic_Sciences).

where(outside).
where(ksa).

budget(above).
budget(below).

uni(uj).
uni(kau).
uni(lsu).
uni(nyu).

mood(analysis).
mood(not_analysis).

tybe(practical).
tybe(theoretical).


%Rules 

%MAJOR OUTSIDE
discover('computer Science',W,lau,B,M,F):-W=outside,B=above,M=analysis,F=practical.  %50000$
discover('Nuclear Engineering',W,nyu,B,M,F):-W=outside,B=below,M=analysis,F=practical.  %50000$
discover('Economics',W,lau,B,M,F):-W=outside,B=above,M=analysis,F=theoretical.         %26000$
discover('Psychology',W,nyu,B,M,F):-W=outside,B=below,M=analysis,F=theoretical.       %23000$
discover('Freanch Language',W,nyu,B,M,F):-W=outside,B=below,M=not,F=theoretical.  %10000$
discover('Translation',W,lau,B,M,F):-W=outside,B=above,M=not,F=theoretical. %46000$
discover('Interior Design',W,lau,B,M,F):-W=outside,B=below,M=not,F=practical. %42000$
discover('Fashion Design',W,nyu,B,M,F):-W=outside,B=above,M=not,F=practical.  %39000$
discover('medical',W,nyu,B,M,F):-W=outside,B=above,M=analysis,F=practical.  %44000$
discover('Tourism',W,lau,B,M,F):-W=outside,B=above,M=not,F=theoretical.     %40000$


%MAJOR IN KSA
discover('artificial intelligence',W,uj,B,M,F):-W=ksa,B=above,M=analysis,F=practical. %51000$
discover('Dentistry',W,kau,B,M,F):-W=ksa,B=below,M=analysis,F=practical.  %19000$
discover('law',W,uj,B,M,F):-W=ksa,B=above,M=analysis,F=theoretical.  %28000$
discover('logistics',W,kau,B,M,F):-W=ksa,B=below,M=analysis,F=theoretical.  %27000$
discover('Film Making',W,kau,B,M,F):-W=ksa,B=above,M=not,F=practical.  %19000$
discover('graphic Designer',W,uj,B,M,F):-W=ksa,B=below,M=not,F=practical.  %19000$
discover('Arabic language',W,kau,B,M,F):-W=ksa,B=below,M=not,F=theoretical.  %7000$
discover('Hotel Mangment',W,uj,B,M,F):-W=ksa,B=above,M=not,F=theoretical.  %7000$
discover('Bussines Mangement ',W,kau,B,M,F):-W=ksa,B=above,M=analysis,F=theoretical. %35000$
discover('sports',W,uj,B,M,F):-W=ksa,B=below,M=not,F=theoretical.  %9000$
discover('Quranic Sciences',W,kau,B,M,F):-W=ksa,B=below,M=not,F=theoretical.  %16000$


place(W):-write('Do you prefer to study here in ksa or outside? '),nl,
    write('write ksa or outside '),read(W).

budjets(B):- write('write your budget : Above 25,000 or below'),nl,
    write('write above or below  '),read(B).

favorite(F):-write('are you like theoretical or practical?'),nl,
    write('write theoretical or practical? '),read(F).

tybes(M):-write('Do you like analysis or not?'),nl,
    write('write analysis or not '),read(M).

ask(S):- write('*********************** '),nl,
    write('hello to our program * DISCOVER YOUR SELF * '),nl,
    write('*********************** '),nl,
    place(W),
    budjets(B),
    favorite(F),
    tybes(M),
    write('we reccomend for you this majors:'),
    discover(S,W,_,B,M,F).

university(X):-write('choose which univesity do you want to discover?:'),nl,
    write('uj or kau or nyu or lau'),read(Input),
    discover(X,_,Input,_,_,_).

world(X):-write('choose which world do you want to discover?:'),nl,
    write('ksa or outside'),read(Input),
    discover(X,Input,_,_,_,_).

%MAJOR IN KSA AND Jeddah University.
uj(S):- write('list of all major at UJ :'),
    discover(S,ksa,uj,_,_,_).
%MAJOR IN KSA AND King Abdulaziz University.
kau(S):- write('list of all major at KAU : '),
    discover(S,ksa,kau,_,_,_).
%MAJOR OUTSIDE AND At the University of Los Angeles.
lau(S):- write('list of all major at LAU :'),
    discover(S,outside,lau,_,_,_).  
%MAJOR OUTSIDE AND At NYU
nyu(S):- write('list of all major at NYU : '),
    discover(S,outside,nyu,_,_,_).

%MAJOR THAT HAVE A ANALYSIS MOOD.
analysis(S):- write('here is list of all major that have more analysis :'),
    discover(S,_,_,_,analysis,_).
%MAJOR THAT DO NOT HAVE A ANALYSIS MOOD.
notana(S):- write('here is list of all major that not have analysis :'),
    discover(S,_,_,_,not,_).

%MAJOR THAT HAVE A ANALYSIS MOOD AND AT KSA.
analysis_KSA(S):- write('here is list of all major in ksa that have more analysis :'),
    discover(S,ksa,_,_,analysis,_).
%MAJOR THAT HAVE A ANALYSIS MOOD AND AT ABROAD.
analysis_OUTSIDE(S):- write('here is list of all major abroad that have more analysis  :'),
    discover(S,outside,_,_,analysis,_).
%MAJOR THAT DO NOT HAVE A ANALYSIS MOOD AND AT KSA.
notana_KSA(S):- write('here is list of all major in ksa that not have analysis  :'),
    discover(S,ksa,_,_,not,_).
%MAJOR THAT DO NOT HAVE A ANALYSIS MOOD AND AT ABROAD.
notana_OUTSIDE(S):- write('here is list of all major abroad that not have analysis  :'),
    discover(S,outside,_,_,not,_).


%MAJOR THAT HAVE A practical TYPE.
practical(S):- write('here is list of all major that contain practical part while studing :'),
    discover(S,_,_,_,_,practical).
%MAJOR THAT HAVE A theoretical TYPE.
theoretical(S):- write('here is list of all major that in contain theoretical part  while studing :'),
    discover(S,_,_,_,_,theoretical).


%MAJOR THAT HAVE A practical TYPE AND AT KSA.
practical_KSA(S):- write('here is list of all major in ksa that contain practical part while studing :'),
    discover(S,ksa,_,_,_,practical).
%MAJOR THAT HAVE A theoretical TYPE AND AT KSA.
theoretical_KSA(S):- write('here is list of all major in ksa that in contain theoretical part  while studing  :'),
    discover(S,ksa,_,_,_,theoretical).


%MAJOR THAT HAVE A practical TYPE AND ABROAD.
practical_OUTSIDE(S):- write('here is list of all major abroad that contain practical part while studing  :'),
    discover(S,outside,_,_,_,practical).
%MAJOR THAT HAVE A theoretical TYPE AND ABROAD.
theoretical_OUTSIDE(S):- write('here is list of all major abroad that in contain theoretical part  while studing :'),
    discover(S,outside,_,_,_,theoretical).



%MAJOR THAT HAVE budget Below 25000$.
budget_Below(S):- write('all major that have budget below 25000 :'),
    discover(S,_,_,below,_,_).
%MAJOR THAT HAVE budget Above 25000$.
budget_Above(S):- write('all major that have budget Above 25000 :'),
    discover(S,_,_,above,_,_).


%MAJOR THAT HAVE budget Below 25000$ AND IN KSA.
ksa_below(S):- write('all major in KSA that contain budget below 25000 :'),
    discover(S,ksa,_,below,_,_).
%MAJOR THAT HAVE budget Above 25000$ AND IN KSA.
ksa_above(S):- write('all major in KSA that contain budget Above 25000 :'),
    discover(S,ksa,_,above,_,_).


%MAJOR THAT HAVE budget Below 25000$ AND ABROAD.
outside_below(S):- write('all major outside that contain budget below 25000 :'),
    discover(S,outside,_,below,_,_).
%MAJOR THAT HAVE budget Above 25000$ AND ABROAD.
outside_above(S):- write('all major outside that contain budget Above 25000 :'),
    discover(S,outside,_,above,_,_).

% THE END...