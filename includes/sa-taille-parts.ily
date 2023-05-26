\version "2.24.0"
\language "english"

\include "global-variables.ily"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 12: upper part, third beat, s/b gs.  The sharp is ambiuous.  gs follows the form of similar passages.
% Bar 22: upper part, third beat, the word is Percez, not Bercez
% Bars 46, 47: upper voice, lower staff, <f a> s/b dotted half notes

% --------------------------
% --- Title and Preamble ---
% --------------------------

markupSaTaille = \markup {
  \column {
    \fill-line { \large \bold "I. Sa Taille" }
    \fill-line { "à Roland MANUEL" "" "Erik Satie (1866-1925)" }
    \line { \hspace #32 Ceux qui nuisent à la réputation ou à la }
    \line { \hspace #30 fortune des autres, plutôt que de perdre un }
    \line { \hspace #30 bon mot, méritent une peine infamante. }
    \line { \hspace #32 Cela n'a pas été dit, et je l'ose dire. } 
    \line { \hspace #32 "(La BRUYÈRE: \"Les Caractères\" ou Les" }
    \line { \hspace #30 moeurs de ce siècle, d'après l'édition de M.M.}
    \line { \hspace #30 G. SERVOIS et A. RÈBELLIAU) }
    \vspace #1
  }
}

% -------------------
% --- Definitions ---
% -------------------

forceHShift = \once \override NoteColumn.force-hshift = -1.7
forceHShiftTwo = \once \override NoteColumn.force-hshift = -1
forceHShiftThree = \override NoteColumn.force-hshift = 0.25

tweakPp = \once \override DynamicText.extra-offset = #'(-1.5 . -2.5) 
tweakP = \once \override DynamicText.extra-offset = #'(-1.25 . -1.5) 
tweakReprendre = \once \override TextScript.extra-offset = #'(-2 . -3) 
tweakRest = \once \override Rest.extra-offset = #'(1 . 0) 
tweakChante = \once \override TextScript.extra-offset = #'(0 . 4) 
tweakPpTwo = \once \override DynamicText.extra-offset = #'(-3.75 . -3.75) 
tweakF = \once \override DynamicText.extra-offset = #'(-3 . -5) 
tweakOsera = \once \override TextScript.extra-offset = #'(0 . -1.5) 
tweakAttendez = \once \override TextScript.extra-offset = #'(-2 . -1) 
tweakGommeux = \once \override TextScript.extra-offset = #'(-1 . -3)
tweakFf = \once \override DynamicText.extra-offset = #'(-3 . -6) 
tweakHairpin = \once \override Hairpin.extra-offset = #'(0 . -4) 

shapeOne = { \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) Slur }
shapeTwo = { \shape #'((0 . 0.5) (0 . 0.75) (0 . 0.75) (0 . 0.5)) Tie }

% --- Text
regarde = "(il se regarde)" 
fredonne = \markup { \concat {
  \upright { "Il fredonne un air du XV" \super e " siècle." }
} }
puis = \markup { \upright "Puis, il s'adresse un compliment tout rempli de mesure." }
osera = \markup { \upright "Qui osera dire qu'il n'est pas le plus beau?" }
coeur = \markup { \upright "Son coeur n'est-il pas tendre?" }
prend = \markup { \upright "Il se prend par la taille." }
raviss = \markup { \upright "C'est pour lui un ravissement." }
jolie = \markup { \upright "Que dira la jolie marquise?" }
elle = \markup { \upright "Elle luttera, mais sera vaincue." }
oui = \markup { \upright "Oui, madame." }
ecrit = \markup { \upright "N'est-ce pas écrit?" }

% --- Musical terms
pasVite = "Pas vite"
chante = \markup { \italic chanté }
attendez = \markup { \upright \bold "Attendez" }
plusLent = "Plus lent"
reprendre = \markup { \italic "reprendre" }
rallUnPeu = "rallentir un peu"
percez = "Percez"
restez = \markup { \center-column { Restez "(un rien)" } }
plusVif = "plus vif"
droit = "droit devant vous"
gommeux = "gommeux"
sec = \markup { \italic "sec" }

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \tempo \pasVite
  s4 <b d>8 ( <cs e> <ds fs>4 ) |
  s4 <b d?>8 ( <cs e> <ds fs>4 ) |
  s4 <a c?>8 ( <b d!> <cs e>4 ) |
  s4 <a c?>8 ( <b? d> <cs e>4 ) |
  s2. * 5 |
  
  \barNumberCheck 10
  \tempo \plusLent
  \octaveUp
  \tweakPp <d'' e>4 ^\pp ( <cs a'> <b e> |
  d8 bf c d <bf! e?>4 ) |
  << 
    { 
      g'4\rest <e, g>8 <fs a> <gs b>4 | 
      a'8\rest <a, a'>-. q4-> s | 
    } 
    \\ 
    { 
      a4\rest \forceHShift d,?8 ds \forceHShift f!4 |
      b4\rest \forceHShift <fs g!> <fs g> |
    } 
  >>
  \octaveBack
  \tweakP \shapeOne <a, d>4 ^\p ( <g b> <a d> |
  <g b> <a d> <g b> ) |
  d'8 ^\f ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
  
  \barNumberCheck 18
  f!2. (
  a2. |
  f2. |
  a2 ) r4 |
  fs''4 c\rest fs!-> ~ ( |
  fs!8 e gs4. e8 |
  d4 ) b\rest d-> ~ ( |
  d8 cs d4. cs!8 |
  fs4 ) c\rest fs!-> ~ ( |
  fs!8 e gs4. e8 |
  d4. c!8 d4 ~ |
  d8 c! d4 ) r |
  
  \barNumberCheck 30
  s2. * 6 |
  <d g>4 ( <c e> <d g> |
  <c e>4 <d g> <c e> |
  <d g>4 <c e> <d g> |
  <c e>4 <d g> <c e> ) |
  
  \barNumberCheck 40
  d8 ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
  d8 ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
}

upperMiddle = \relative {
  s4 \forceHShift a8 as \forceHShift c4 |
  s4 \forceHShift a?8 as \forceHShift c4 |
  s4 \forceHShift g8 gs \forceHShift bf4 |
  s4 \forceHShift g?8 gs \forceHShift bf4 |
  s2. * 5 |
  
  \barNumberCheck 10
  \octaveUp
  d'4 <gs a> <fs a> |
  a,4 <f'! g!> <df g> |
  c2-> a4\rest |
  e'2-> r4 |
  b,8 ( cs d4 e |
  f!4 e8 d cs4 ) |
  s2. * 2 |
  
  \barNumberCheck 18
  r4 <gs d'>2 |
  r4 <a cs>2 |
  r4 <gs d'>2 |
  r4 <a cs> q |
  \repeat unfold 8 { b'4 ^( a gs ) | }
  
  \barNumberCheck 30
  s2. * 6 |
  e'8 ( fs g4 a |
  b4 a8 g fs4 |
  e8 fs g4 a |
  b4 a8 g fs4 ) |
  
  \barNumberCheck 40
  <c e>4 ( <b d> <a c> |
  <g b>4 <f! a> <e g> ) |
  <c e>4 ( <b d> <a c> |
  \staffDown
  <g b>4 <f! a> <e g> ) |
  \staffUp
  s2. * 4 |
}

lowerMiddle = \relative {
  s2. * 4 |
  s4 <df ef>-.-- <df! ef!>-.-- |
  s4 <bf df>-.-- <bf! df!>-.-- |
  s4 << 
      { <cs e!>8( <ds fs> <es gs>4) } 
      \\ 
      { \forceHShift b!8 bs \forceHShift d!4 } 
     >> |
  s4 << 
      { <cs e!>8( <ds fs> <es gs>4) } 
      \\ 
      { \forceHShift b!8 bs \forceHShift d!4 } 
     >> |
  s2. |
  
  \barNumberCheck 10
  s2. * 8 |
  
  \barNumberCheck 18
  s2. * 4 |
  \staffUp 
  \repeat unfold 8 { cs'2_> \tweakRest g4\rest | }
  \staffDown
  
  \barNumberCheck 30
   <<
    {
      c4\rest <b, d>8 ( <cs e> <ds fs>4 ) |
    }
    \\
    {
      d4\rest \forceHShift a8 as \forceHShift c4 |
    }
  >>
  \repeat unfold 3 {
    <<
      {
        c'4\rest <b, d?>8 ( <cs e> <ds fs>4 ) |
      }
      \\
      {
        d4\rest \forceHShift a?8 as \forceHShift c4 |
      }
    >>
  }
  s2. * 6 |
  
  \barNumberCheck 40
  s2. * 4 |
  <<
    {
      <ef g b?>2.-> ( |
      <f a>2. ~ |
      q2. ~ |
      q4 ) s2 |
    }
    \\
    {
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo c4 s2 |
    }
  >>
}

lowVoice = \relative {
  \oneVoice
  g2-> r4 |
  g2-> r4 |
  f!2-> r4 |
  f2-> r4 |
  \voiceFour
  g,?4 ( \forceHShift \tweakChante c _\chante g |
  f8 df ef f g4 |
  a?2-> ) e4\rest |
  a2-> e4\rest |
  s2. |
  
  \barNumberCheck 10
  s2. * 6 |
  \staffUp
  <c''! e>4 ( <b d> <a c> |
  \staffDown
  <g b>4 <f! a> <e g> ) |
  
  \barNumberCheck 18
  <d,, d'>2 <e e'>4 |
  <f f'>2 <g g'>4 |
  <d d'>2 <e e'>4 |
  <f f'>2 r4 |
  s2. * 8 |
  
  \barNumberCheck 30
  \repeat unfold 4 { g'2-> d4\rest | }
  s2. * 6 |
  
  \barNumberCheck 40
  s2. * 4 |
  \forceHShiftThree
  <c, c'>4-. <d d'>-. <e? e'?>-. |
  <f f'>4-. <c c'>-. <f f'>-. |
  <c c'>4-. <f f'>-. <c c'>-. |
  <f f'>-. _\sec s2 |
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  s2 s4 -\regarde
  s2. * 8 |
  
  \barNumberCheck 10
  s2. * 4 |
  \tweakOsera s4 -\osera \tweakReprendre s -\reprendre s |
  s2. * 3 |
  
  \barNumberCheck 18
  s2. * 4 |
  \tweakPpTwo s2 \pp s4 -\percez |
  s2. * 7 |
  
  \barNumberCheck 30
  s2. * 6 |
  \tweakF s2. \f -\plusVif |
  s2. * 3 |
  
  \barNumberCheck 40
  s2. -\droit
}

dynamics = {
  s2. * 4 |
  s2. -\fredonne |
  s2. * 2 |
  s4.\> s8\! s4 |
  \tweakAttendez s2. -\attendez |
  
  \barNumberCheck 10
  s2. -\puis |
  s2. * 3 |
  s2. * 4 |
  
  \barNumberCheck 18
  s4 \p s -\coeur s |
  s2. * 2 |
  s2. -\rallUnPeu |
  s4 s2 -\prend |
  s2. * 2 |
  s2. -\raviss |
  s2. * 4 |
  
  \barNumberCheck 30
  s4 \pp s -\jolie s |
  s2. * 3 |
  s2. -\restez |
  s2. |
  s2. -\elle |
  s2. * 3 |
  
  \barNumberCheck 40
  s2. -\oui |
  s2. * 3 |
  \tweakFf s4 \ff -\ecrit \tweakGommeux s2 -\gommeux
  \tweakHairpin s4 \< s2 |
  s2 s4 \!
}

forceBreaks = {
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
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

musicSaTaille = \score {
  \new PianoStaff <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
    \new Devnull \forceBreaks
  >>
}

\include "articulate.ly"

midiSaTaille = \book {
  \bookOutputName "sa-taille-music"
  \score {
    \articulate <<
      \new PianoStaff <<
        \new Staff ="upper" \upper
        \new Staff = "lower" \lower
      >>
    >>
    \midi { 
      \tempo 4 = 144
    }
  }
}
