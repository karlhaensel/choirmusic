\version "2.18.2"

\header {
  title = "In dulci jubilo"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Johann Eccard (1553-1611)"
  % poet = "TEXT/VORLAGE/SONSTIGES"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

global = {
  \key g \major
  \time 3/2
}

nSopran = \relative c'' {
  \global
  \dynamicUp
  \partial 2 g2 | g1 g2 | b1 c2  d2( e1 | d) d2 | g,1 g2 | 
  b1 c2 | d2( e1 | d1.) | d1 e2 | d1 c2 | b1. |
  g1 g2 | a1 a2 | b1 a2 | g1( a2 | b1) b2 | d1 e2 |
  
  d1 c2 | b1. | g1 g2 | a1 a2 | b1 a2 | g1( a2 | b1.) |
  e,1 e2 | fis1 fis2 | g1.( | d'1.) | b1 b2 | a1 a2 | g1.\fermata \bar "|."
}

tSopranA = \lyricmode {
  \set stanza = "1." In dul -- ci ju -- bi -- lo, __ nun sin -- get
  und seid froh! __ Un -- sers Her -- zens Won --
  ne liegt in prae -- se -- pi -- o __ und leuch -- tet 
  
  als die Son -- ne, ma -- tris in gre -- mi -- o. __
  Al -- pha es et O, __ Al -- pha es et O.
}

tSopranB = \lyricmode {
  \set stanza = "2." O Je -- su par -- vu -- le, __ nach dir ist
  mir so weh. __ Tröst mir mein Ge -- mü --
  te, o pu -- er op -- ti -- me, __ durch al -- le
  
  dei -- ne Gü -- te, o prin -- ceps glo -- ri -- ae. __
  Tra -- he me post te, __ tra -- he me post te.
}

nAlt = \relative c' {
  \global
  \dynamicUp
  \partial 2 d2 | e2.( d4 e fis | g1.) | a2 b a | fis1 d2 | e2.( d4 e fis |
  g1.) | a2 b a | fis1. | g1 g2 | g2( d) a' | g( fis4 e fis2)
  e1.~ | e1 e2 | g1 fis2 | d2.( e4) fis2 | g1 g2 | g1 g2 |
  
  g2( d) a' | g2( fis4 e fis2) | e1.~ | e1 e2 | g1 fis2 | d2.( e4) fis2 | g1. |
  g1 e2 | dis1 dis2 | e2.( fis4 g e | fis e fis g a2) | g1 g2 | fis1 fis2 | g1.\fermata \bar "|."
}

tAltA = \lyricmode {
  \set stanza = "1." In dul -- ci ju -- bi -- lo, nun sin --
  get und seid froh! Un -- sers Her -- zens Won --
  ne __ liegt in prae -- se -- pi -- o und leuch -- tet
  
  als __ die Son -- ne, __ ma -- tris in gre -- mi -- o.
  Al -- pha es et O, __ Al -- pha es et O.
}

tAltB = \lyricmode {
  \set stanza = "2." O Je -- su par -- vu le, nach dir __
  ist mir so weh. Tröst mir mein Ge -- mü -- 
  te, __ o pu -- er op -- ti me, durch al -- le
  
  dei -- ne Gü -- te, __ o prin -- ceps glo -- ri -- ae.
  Tra -- he me post te, __ tra -- he me post te.
}

nTenorI = \relative c' {
  \global
  \dynamicUp
  \partial 2 b2 | c1 c2 | d1 e2 | d2.( cis8 b cis2 | d1) b2 | c1 c2 |
  d1 e2 | d2.( cis8 b cis2 | d1.) | d1 c2 | b1 e2 | e( dis4 cis dis2) |
  e1 e2 | a,2. b4 c2 | b e a, | b4( c d2.) d4 | d1 d2 | d1 c2 |
  
  b1 e2 | e( dis4 cis dis2) | e1 e2 | a,2. b4 c2 | b2 e a, | b4( c d2.) d4 | d1. |
  c1 b2 | b1 b2 | b2( g1 | a) d2~ | d g,1 | a a2 | b1.\fermata \bar "|."
}

tTenorIA = \lyricmode {
  \set stanza = "1." In dul -- ci ju -- bi -- lo, __ nun sin -- get
  und seid froh! __ Un -- sers Her -- zens Won --
  ne liegt in prae -- se -- pi -- o, prae -- se -- pi -- o und leuch -- tet
  
  als die Son -- ne, ma -- tris in gre -- mi -- o, in gre -- mi -- o.
  Al -- pha es et O, __ Al -- pha es et O.
}

tTenorIB = \lyricmode {
  \set stanza = "2." O Je -- su par -- vu -- le, __ nach dir ist
  mir so weh. __ Tröst mir mein Ge -- mü --
  te, o pu -- er op -- ti me, o op -- ti -- me, durch al -- le
  
  dei -- ne Gü -- te, o prin -- ceps glo -- ri -- ae, o glo -- ri -- ae.
  Tra -- he me post te, __ tra -- he me post te.
}

nTenorII = \relative c' {
  \global
  \dynamicUp
  \partial 2 g2 | g1 g2 | g4( a b g g'2 | fis e2.) a,4 | a1 g2 | g1 g2 |
  g4( a b g g'2 | fis e2.) a,4 | a1. | b1 g2 | g1 e2 | b'1. |
  b1 b2 | c1 a2 | g4( a b c d2~ | d4 c b2) a | g1 b2 | b1 g2 |
  
  g1 e2 | b'1. | b1 b2 | c1 a2 | g4( a b c d2~ | d4 c b2) a | g1. |
  g1 g2 | fis1 fis2 | e2( e' c | d2. c8 b a2) | r2 d d | d1 d2 | d1.\fermata \bar "|."
}

tTenorIIA = \lyricmode {
  \set stanza = "1." In dul -- ci ju -- bi -- lo, nun sin -- get
  und __ seid froh! Un -- sers Her -- zens Won --
  ne liegt in prae -- se -- pi -- o und leuch -- tet
  
  als die Son -- ne, ma -- tris in gre -- mi -- o.
  Al -- pha es et O, __ Al -- pha es et O.
}

tTenorIIB = \lyricmode {
  \set stanza = "2." O Je -- su par -- vu -- le, nach dir ist
  mir __ so weh. Tröst mir mein Ge -- mü --
  te, o pu -- er op -- ti -- me, durch al -- le
  
  dei -- ne Gü -- te, o prin -- ceps glo -- ri -- ae.
  Tra -- he me post te, __ tra -- he me post te. 
}

nBass = \relative c {
  \global
  \dynamicUp
  \partial 2 g2 | c1 c2 | g( g') e | fis( g a | d,1) g,2 | c1 c2 |
  g( g') e | fis( g a | d,1.) | g1 c,2 | g1 a2 | b1. |
  e1 r2 | r r a, | e'1 fis2 | g( g,) d' | g,1 g'2 | g1 c,2 |
  
  g1 a2 | b1. | e1 r2 | r r a, | e'1 fis2 | g( g,) d' | g,1. |
  c1 e2 | b1 b2 | e1.( | d2. e4 fis2) | g1 g,2 | d'1 d2 | g,1.\fermata \bar "|."
}

tBassA = \lyricmode {
  \set stanza = "1." In dul -- ci ju -- bi -- lo, __ nun sin -- get
  und __ seid froh! __ Un -- sers Her -- zens Won --
  ne liegt in prae -- se -- pi -- o und leuch -- tet
  
  als die Son -- ne, ma -- tris in gre -- mi -- o.
  Al -- pha es et O, __ Al -- pha es et O.
}

tBassB = \lyricmode {
  \set stanza = "2." O Je -- su par -- vu -- le, __ nach dir ist
  mir __ so weh. __ Tröst mir mein Ge -- mü --
  te, o pu -- er op -- ti -- me, durch al -- le 
  
  dei -- ne Gü -- te, o prin -- ceps glo -- ri -- ae. 
  Tra -- he me post te, __ tra -- he me post te. 
}


sSopran = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
  %\override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopran }
\addlyrics { \tSopranA }
\addlyrics { \tSopranB }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
  %\override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nAlt }
\addlyrics { \tAltA }
\addlyrics { \tAltB }

sTenorI = \new Staff \with {
  instrumentName = "Tenor I"
  midiInstrument = "choir aahs"
  %\override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nTenorI }
\addlyrics { \tTenorIA }
\addlyrics { \tTenorIB }

sTenorII = \new Staff \with {
  instrumentName = "Tenor II"
  midiInstrument = "choir aahs"
  %\override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nTenorII }
\addlyrics { \tTenorIIA }
\addlyrics { \tTenorIIB }

sBass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
  %\override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass \nBass }
\addlyrics { \tBassA }
\addlyrics { \tBassB }


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenorI
    \sTenorII
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=220
  }
}
