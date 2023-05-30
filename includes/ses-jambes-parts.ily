\version "2.24.0"
\language "english"

\include "global-variables.ily"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 4: e-flat in the first beat of the left hand
% Bar 5: missing bass clef
% Bar 14: extra quarter rest
% Bar 34: third beat, inner voice, add same chord as second beat

% ----------------
% --- Preamble ---
% ----------------

markupSesJambes = \markup {
  \column {
    \fill-line { \large \bold "III. Ses Jambes" }
    \fill-line { "à René CHALUPT" "" "Erik Satie (1866-1925)" }
    \line { \hspace #32 Le premier soin du propriétaire, quand il est arrivé à }
    \line { \hspace #30 sa ferme, doit être de saluer ses Pénates domestiques; }
    \line { \hspace #30 puis le même jour, s'il en a le loisir, qu'il fasse le }
    \line { \hspace #30 tour de son domaine; qu'il voie l'état des cultures; les } 
    \line { \hspace #30 travaux achevés, ceux qui ne le sont pas. }
    \line { \hspace #28 "(CATON: \"De ne rustica\", traduction A. JEANROY et A. PEUCH)" }
    \vspace #1
  }
}

% -------------------
% --- Definitions ---
% -------------------

forceHShiftOne = \once \override NoteColumn.force-hshift = -1
forceHShiftTwo = \once \override NoteColumn.force-hshift = -0.3
forceHShiftThree = \once \override NoteColumn.force-hshift = -1.6

tweakF = \once \override DynamicText.extra-offset = #'(-1.75 . -4) 
tweakTempo = \once \override TextScript.extra-offset = #'(-2 . 2)
tweakFTwo = \once \override DynamicText.extra-offset = #'(0 . -4) 
tweakDanse = \once \override TextScript.extra-offset = #'(0 . -1.5)
tweakPp = \once \override DynamicText.extra-offset = #'(-3 . -2) 
tweakRest = \once \override Rest.extra-offset = #'(0.5 . 0)
tweakP = \once \override DynamicText.extra-offset = #'(-1 . -1)
tweakCombien = \once \override TextScript.extra-offset = #'(0 . 2)
tweakPTwo = \once \override DynamicText.extra-offset = #'(0 . -2.5)
tweakHairpin = \once \override Hairpin.extra-offset = #'(0 . -2.5)
tweakFThree = \once \override DynamicText.extra-offset = #'(-2 . -1)
tweakFFour = \once \override DynamicText.extra-offset = #'(0 . -1) 
tweakRefuse = \once \override TextScript.extra-offset = #'(0 . 0.5)
tweakFFive = \once \override DynamicText.extra-offset = #'(-1 . -4)
tweakNoir = \once \override TextScript.extra-offset = #'(0 . -4)
tweakPThree = \once \override DynamicText.extra-offset = #'(-1 . -3)

shapeOne = \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) Slur 
shapeTwo = \shape #'((0 . -1.25) (0 . 0) (0 . 0) (0 . 0)) Slur
shapeThree = \shape #'((0 . -0.75) (0 . -.25) (0 . 0) (0 . 0)) Slur
shapeFour = \shape #'((0 . -3) (0 . 0) (0 . 0) (0 . -3)) Slur
shapeFive = \shape #'((0 . -3) (0 . 0) (0 . 0) (0 . -2)) Slur
shapeSix = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (-1 . 2)) Slur

% --- Text
fier = \markup { \upright "Il en est très fier." }
danseOne = \markup { \upright "Elles ne dansent" }
danseTwo = \markup { \upright "que des danse de choix." }
plates = \markup { \upright "Ce sont de belles jambes plates." }
noir = \markup { \upright "Le soir, elles sont vêtues de noir." }
porter = \markup { \upright "Il veut les porter sous son bras." }
glissent = \markup { \upright "Elles glissent, toutes mélancoliques." }
indig = "Les voici indignées, très en colère."
embrasse = \markup { \upright "Souvent, il les embrasse et les met à son cou." }
combien = \markup { \upright "Combien il est bon pour elles!" }
refuse = \markup { \upright "Energiquement, il refuse d'acheter des jambières." }
prison = \markup { \upright "__ Une prison! dit-il." }

% --- Musical terms
determine = \markup { \large \bold \upright "Déterminé" }
mains = "des deux mains"
rebond = "rebondissez sommairement"
toussez = "Ne toussez pas"
remuez = "remuez-vous"
continuez = "continuez, sans perdre connaissance"

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  <a' d>4-> ( <cs e> <b g'> |
  <a d>4-> <cs e> <b g'> ) |
  <a c!>4-> ( < bf d> <c f> |
  <a c>4-> < bf d> <c f> ) |
  fs,8 ( gs b!4 fs!8 gs! |
  b4 e,8 fs a4 |
  e8 fs a4 ) s4 |
  s2. |
  
  \barNumberCheck 9
  s2. * 4 |
  \staffDown
  b,4 ( cs e |
  b4 cs e ) |
  \staffUp
  a4 ( b d |
  a4 b d ) |
  
  \barNumberCheck 17
  fs'8 ( a ) r4 fs!8 ( a ) |
  r4 fs8 ( a ) r4 |
  fs,8 ( a ) r4 fs!8 ( a ) |
  r4 fs8 ( a ) r4 |
  cs,2 ( fs4 ~ |
  fs4 cs 2 |
  b2 d4 ~ |
  d4 b2 ) |
  
  \barNumberCheck 25
  b8 ( g f?4 b8 g |
  f?4 b8 g f?4 ) |
  a8 ( f? e4 a8 f? |
  e4 a8 f? e4 ) |
  <a, b>4 ( <bf cs> <b e> ) |
  <a b>4 ( <bf cs> <b e> ) |
  \staffDown
  <g a>4 ( <gs b> <a d> ) |
  <g a>4 ( <gs b> <a d> ) |
  \staffUp
  
  \barNumberCheck 33
  r4 ( fs''8 cs' fs4 ) |
  r4 ( e,8 b'? d4 ) |
  r4 ( fs,8 cs' fs4 ) |
  r4 ( e,8 b'? d4 ) |
  b,4\rest ds,8 ( es gs4 ) | 
  b4\rest ds,8 ( es gs4 ) |
  b4\rest ds,8 ( es gs4 ) |
  b4\rest ds,8 ( es gs4 ) |
  
  % \barNumberCheck 41
  \staffDown
  \acciaccatura { <b,, b'>8 } <b fs' b>4-> ~ q8 r r4 |
  \staffUp
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 | 
  \break
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 |
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <e e'>-.-- s2 |
}

upperMiddle = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4
  \staffDown
  \forceHShiftOne g2. |
  \forceHShiftOne g2. |
  \staffUp
  f'!4 g a |
  f4 g a |
  
  \barNumberCheck 17
  b4 ( cs e |
  b4 cs e ) |
  a,4 ( b d |
  a4 b d ) |
  \shapeTwo e,4 ( fs a |
  e4 fs a ) |
  \shapeThree d,4 ( e g  |
  d4 e g ) |
  
  \barNumberCheck 25
  r4 b,2-> |
  b2-> b4-> |
  r4 a2-> |
  a2-> a4-> |
  s2. * 4 |
  
  \barNumberCheck 33
  s4 <bf' d> <bf! d> | 
  s4 <bf c!> q |
  s4 <bf d> <bf! d> | 
  s4 <bf c!> q |
  s2. * 4 |
  
  \barNumberCheck 41
}

lowerMiddle = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  c!8 ( d fs4 c8 d |
  fs4 c8 d fs!4 |
  c8 d fs4 c8 d |
  fs4 c8 d fs!4 ) |
  b,2 f'4\rest |
  b,2 f'4\rest |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. * 4 |
  \staffUp
  b2. _~ |
  b2 \tweakRest b4\rest |
  a2. _~ |
  a2 \tweakRest a4\rest |
  \staffDown
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  \staffUp
  \shapeSix fs'2. _( |
  g2. |
  fs2. |
  g2 g,4\rest ) |
  \staffDown
  fs2_> g,4\rest |
  fs'2_> g,4\rest |
  fs'2_> g,4\rest |
  fs'2_> g,4\rest |
  
  \barNumberCheck 41
}

lowVoice = \relative {
  \clef treble
  <fs' g>4 ^( <e g> <d g> |
  <fs g>4 <e g> <d g> ) |
  <ef g>4 ^( <f! g> <d g> |
  <ef g>4 <f g> <d g> ) |
  \clef bass
  bf4 <d f!> <d e> |
  fss,4 <cs' d> <b? d> |
  <gs, gs'>4-> <fs fs'>-. <e e'>-. |
  <d d'>4-> <cs cs'>-. <b b'>-.
  
  \barNumberCheck 9
  \forceHShiftThree <bf bf'>4-> <bf! bf'!>-. \forceHShiftThree <bf! bf'!>-. |
  <bf bf'>4-> \forceHShiftThree <bf! bf'!>-. <bf! bf'!>-. |
  \forceHShiftThree <bf bf'>4-> <bf! bf'!>-. \forceHShiftThree <bf! bf'!>-. |
  <bf bf'>4-> \forceHShiftThree <bf! bf'!>-. <bf! bf'!>-. |
  \forceHShiftTwo a'2 ( e4 
  \forceHShiftTwo a2 ) r4 |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \shapeFour fs'4 ( g _\indig a |
  fs4 g a ) |
  \shapeFive e4 ( fs g |
  e4 fs g ) |
  <g, g'>4-. <f! f'!>-. <e e'>-. |
  <d d'>4-. <c? c'?>-. <b b'>-. |
  <e e'>4-. <d d'>-. <c c'>-. |
  <e e'>2-> r4 |
  
  \barNumberCheck 33
  s2. * 4 |
  f''4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  
  \barNumberCheck 41
  <b,,, b'>4-> <cs cs'>-. <e e'>-. |
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  \staffUp
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  <fs' gs>2-> b,4\rest |
  <fs' gs>2-> b,4\rest |
  <fs' gs>2-> b,4\rest |
  <fs' gs>4-.-- s2 |
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  \tweakF \tweakTempo s2. \f -\determine |
  s2. * 3 |
  \tweakFTwo s2 \f \tweakDanse s4 -\danseOne 
  s2. |
  \break
  s2. -\danseTwo |
  s2. |
  
  \barNumberCheck 9
  s2. * 4 |
  \break
  \tweakNoir s2. -\noir |
  s2. * 3 |
  
  \barNumberCheck 17
  \tweakPp s2. \pp |
  s2. * 3 |
  \tweakPThree s4 \p s -\rebond s |
  s2. * 3 |
  \break
  
  \barNumberCheck 25
  \tweakP s2. \p |
  s2. * 3 |
  \tweakFFour s4 \f s-\toussez s |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. \p |
  s2. * 2 |
  s2. |
  \break
  \tweakCombien s4 -\combien \tweakPTwo s \p s |
  s4 \tweakHairpin s \< s |
  s2 s4 \! |
  \tweakRefuse s2. -\refuse |
  
  \barNumberCheck 41
  s2. -\remuez |
  s2. |
  s2 s4 -\prison |
}

dynamics = {
  s2 s4 -\fier |
  s2. * 7 |
  
  \barNumberCheck 9
  \tweakFFive s4 \f s -\plates s |
  s2. * 3 |
  s2. \p |
  s2. |
  s2. -\mains |
  s2. |
  
  \barNumberCheck 17
  s2. -\porter |
  s2. * 3 |
  s2. -\glissent |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. -\embrasse |
  s2. * 7 |
  
  \barNumberCheck 41
  \tweakFThree s2. \f |
  s2. * 3 |
  s2. -\continuez |
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 3/4
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

musicSesJambes = \score {
  \new PianoStaff <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
  >>
}

midiSesJambes = \book {
  \bookOutputName "ses-jambes-music"
  \score {
    <<
      \new Staff ="upper" << \upper \dynamicsHigh \dynamics >>
      \new Staff = "lower" << \lower \dynamicsHigh \dynamics >>
    >>
    \midi { 
      \tempo 4 = 208
    }
  }
}
