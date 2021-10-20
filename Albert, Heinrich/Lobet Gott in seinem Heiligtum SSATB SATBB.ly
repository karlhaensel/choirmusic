\version "2.18.2"

\header {
  title = "Lobet Gott in seinem Heiligtum"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Heinrich Albert (1604-1651)"
  % poet = "Strophen: in der Osterzeit 1-3a; für Erntedank 1+3b; allgemein 1+3a"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = "Strophen: in der Osterzeit 1-3a; für Erntedank 1+3b; allgemein 1+3a"
}

\paper {
  #(set-paper-size "a4")
  system-count = 4
  page-count = 2
}

\layout {#(layout-set-staff-size 14) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  } }

global = {
  \key c \major
  \time 4/4
}

einsA = \lyricmode {
  Lo -- bet Gott in sei -- nem Hei -- lig -- tum!
}

einsB = \lyricmode {
  % Lobet / lobet
  sei -- ne Macht und Stär -- ke,
}

einsC = \lyricmode {
  % Lobet / lobet
  al -- le Wun -- der -- wer -- ke,
}

zweiA = \lyricmode {
  Die -- ses ist die rech -- te Gna -- den -- zeit;
}

zweiB = \lyricmode {
  % Drum / drum
  so lasst uns den er -- he -- ben,
}

zweiC = \lyricmode {
  % Der / der
  uns wie -- der -- bracht das Le -- ben.
}

dreiA = \lyricmode {
  Lo -- bet die -- sen Her -- ren al -- le Welt,
}

dreiC = \lyricmode {
  % Was / was
  nur im -- mer schwebt und le -- bet,
}

nSopranI = \relative c'' {
  \global
  \dynamicUp
  r4 g4.( a8 b c | d2.) cis4 | d e c b | a8( b c2) b4 | c2 r4 c~ |
  c c f e | d c d2 | c e4 e | c4. b8 a4 g | d'1 |
  b4 d2 e4 | c2 e4 f~ | f8\noBeam f e2 d4 | e2 % \bar "" \break 
  r4 e~ | e d c2 | b d4 c |
  b2 g4.( a8 | b c d4) a c~( | c8 d e f g4) d | r d2 f4 | e8( d c b a b c4) | d c2 b4 | c1\fermata \bar "|."
}

tSopranIeins = \lyricmode {
  \set stanza = "1." \einsA lo -- bet \einsB lo -- bet \einsC
  die er uns er -- wie -- sen hat mit Ruhm!
  \set stanza = "1." Al -- le Völ -- ker weit und breit 
  lo -- bet, lo -- bet, lo -- bet Gott __ in E -- wig -- keit.
}

tSopranIzwei = \lyricmode {
  \set stanza = "2." \zweiA drum __ \zweiB der \zweiC
  Lo -- bet ihn in sei -- ner Herr -- lich -- keit. 
  \set stanza = "2." Prei -- set den in sei -- ner Macht,
  der __ uns, der __ uns, der uns hat __ sein Heil ge -- bracht.
}

tSopranIdreiA = \lyricmode {
  \set stanza = "3a." \dreiA al -- les, was auf Er -- den le -- bet, was \dreiC
  lo -- bet die -- sen star -- ken Krei -- ges -- held.
  \set stanza = "3." Al -- les, was nur O -- dem hat,
  wer -- de nim -- mer, wer -- de nim -- mer Lo -- bens satt.
}

tSopranIdreiB = \lyricmode {
  \set stanza = "3b." Lo -- bet Got -- tes Güt und Wun -- der -- tat!
  Reich -- lich Frucht hat er ge -- ge -- ben, zu ver -- sor -- gen un -- ser Le -- ben.
  Lo -- bet ihn für sol -- che gro -- ße Gnad.
}

nSopranII = \relative c'' {
  \global
  \dynamicUp
  c,4.( d8 e f g4~ | g) fis g a | f!( e4.) f8 g4( | f) e d2 | r4 e2 e4 |
  a4 g a c | b( c4. b16 a b4) | c g g e~ | e8\noBeam d c4.( d8) e4 | fis4( g4. fis16 e fis4) |
  g2 d4 g | a4. a8 g4 c | d( c8 b a4) b | c2 r4 g~ | g g a2 | d,4 g2 g4 |
  g4.( f16 e d2) | d4.( e8 f g a4) | e g4.( a8 b c | d2) a | c8( b a g f4) g | g2 g | g1\fermata | 
}

tSopranIIeins = \lyricmode {
  \set stanza = "1." \einsA Lo -- bet \einsB lo -- bet \einsC 
  die er uns er -- wie -- sen hat __ mit Ruhm!
  \set stanza = "1." Al -- le Völ -- ker weit und breit __
  lo -- bet, lo -- bet Gott __ in E -- wig -- keit.
}

tSopranIIzwei = \lyricmode {
  \set stanza = "2." \zweiA drum \zweiB der \zweiC
  Lo -- bet ihn in sei -- ner Herr -- lich -- keit.
  \set stanza = "2." Prei -- set den in sei -- ner Macht, __ 
  der __ uns, der __ uns hat __ sein Heil ge -- bracht.
}

tSopranIIdreiA = \lyricmode {
  \set stanza = "3a." \dreiA al -- les, was auf Er -- den le -- bet,
  was nur im -- mer schwebt und le -- bet,
  Lo -- bet die -- sen star -- ken Krie -- ges -- held.
  \set stanza = "3." Al -- les, was nur O -- dem hat, __ 
  wer -- de nim -- mer, nim -- mer Lo -- bens satt.
}

tSopranIIdreiB = \lyricmode {
  \set stanza = "3b." Lo -- bet Got -- tes Güt __ und Wun -- der -- tat!
  Reich -- lich Frucht hat er ge -- ge -- ben, zu ver -- sor -- gen un -- ser Le -- ben.
  Lo -- bet ihn für sol -- che gro -- ße Gnad.
}

nAlt = \relative c' {
  \global
  \dynamicUp
  R1*6
  r2 g'4 g | e4. d8 c4 g' | a e r c~ | c b a2 |
  g4 b2 c4 | c2. c4 | g'4. g8 f4 f | g2 r4 c,4~ | c d e( d8 c | g'4.) g8 d4 e |
  d2 r4 g,~( | g8 a b c d4) a | c4.( d8 e f g4~ | g) g r d | c c4.( d8 e4) | d e8( f g4) d | e1\fermata |
}

tAlteins = \lyricmode {
  \set stanza = "1." Lo -- bet al -- le Wun -- der -- wer -- ke,
  die __ er uns er -- wie -- sen hat, er -- wie -- sen hat mit Ruhm!
  \set stanza = "1." Al -- le Völ -- ker weit und breit,
  lo -- bet, lo -- bet, lo -- bet Gott __ in E -- wig -- keit.
}

tAltzwei = \lyricmode {
  \set stanza =  "2." Der uns wie -- der -- bracht das Le -- ben.
  Lo -- bet ihn in sei -- ner, ihn in sei -- ner Herr -- lich -- keit.
  \set stanza = "2." Prei -- set den __ in sei -- ner Macht, 
  der __ uns, der __ uns, der uns hat __ sein Heil ge -- bracht.
}

tAltdreiA = \lyricmode {
  \set stanza = "3a." Was nur im -- mer schwebt und le -- bet, 
  lo -- bet die -- sen star -- ken, die -- sen star -- ken Krie -- ges -- held.
  \set stanza = "3." Al -- les, was __ nur O -- dem hat, 
  wer -- de nim -- mer, wer -- de nim -- mer Lo -- bens satt.
}

tAltdreiB = \lyricmode {
  \set stanza = "3b." Zu ver -- sor -- gen un -- ser Le -- ben.
  Lo -- bet, lo -- bet, lo -- bet ihn für sol -- che gro -- ße Gnad.
}


nTenor = \relative c' {
  \global
  \dynamicUp
  R1*3 r2 g4 g | a4.( b8 c b a g | 
  f4) e d c | g'1 | c,4 c'2 c4 | a4. g8 f4 e | d1 |
  g4 g2 c,4 | f8( g a b c4) a | b c d4. d8 | c2 r4 g | g g2 fis4 | g2. g4 |
  g4.( a8 b2) | R1*2 | d,4.( e8 f g a4) | g a2( g8 a | b4) c d4. d8 | c1\fermata |
}

tTenoreins = \lyricmode {
  \set stanza = "1." Lo -- bet sei -- ne Macht und Stär -- ke,
  lo -- bet al -- le Wun -- der -- wer -- ke,
  die er uns __ er -- wie -- sen hat mit Ruhm!
  \set stanza = "1." Al -- le Völ -- ker weit und breit __
  lo -- bet Gott __ in E -- wig -- keit.
}

tTenorzwei = \lyricmode {
  \set stanza = "2." Drum so lasst __ uns den er -- he -- ben,
  der uns wie -- der -- bracht das Le -- ben.
  Lo -- bet ihn __ in sei -- ner Herr -- lich -- keit. 
  \set stanza = "2." Prei -- set den in sei -- ner Macht, __ 
  der __ uns hat __ sein Heil ge -- bracht.
}

tTenordreiA = \lyricmode {
  \set stanza = "3a." Al -- les, was __ auf Er -- den le -- bet,
  was nur im -- mer schwebt und le -- bet,
  lo -- bet die -- sen star -- ken Krie -- ges -- held.
  \set stanza = "3." Al -- les, was nur O -- dem hat, __
  wer -- de nim -- mer Lo -- bes satt.
}

tTenordreiB = \lyricmode {
  \set stanza = "3b." Reich -- lich Frucht __ hat er ge -- ge -- ben,
  zu ver -- sor -- gen un -- ser Le -- ben.
  Lo -- bet ihn für sol -- che gro -- ße Gnad.
}

nBass = \relative c {
  \global
  \dynamicUp
  \compressFullBarRests 
  R1*13
  r2 r4 c~ | c b a2 | g b4 c |
  g1 | R1 | r2 r4 g~( | g8 a b c d2) | e4 f2 c4 | g'2. g4 | c,1\fermata |
}

tBasseins = \lyricmode {
  \set stanza = "1." Al -- le Völ -- ker weit und breit
  lo -- bet Gott in E -- wig -- keit.
}

tBasszwei = \lyricmode {
  \set stanza = "2." Prei -- set den in sei -- ner Macht,
  der __ uns hat sein Heil ge -- bracht.
}

tBassdrei = \lyricmode {
  \set stanza = "3." Al -- les, was nur O -- dem hat,
  wer -- de nim -- mer Lo -- bes satt.
}


sSopranI = \new Staff \with {
  instrumentName = "Sopran I"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopranI }
\addlyrics { \tSopranIeins }
\addlyrics { \tSopranIzwei }
\addlyrics { \tSopranIdreiA }
\addlyrics { \tSopranIdreiB }

sSopranII = \new Staff \with {
  instrumentName = "Sopran II"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopranII }
\addlyrics { \tSopranIIeins }
\addlyrics { \tSopranIIzwei }
\addlyrics { \tSopranIIdreiA }
\addlyrics { \tSopranIIdreiB }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nAlt }
\addlyrics { \tAlteins }
\addlyrics { \tAltzwei }
\addlyrics { \tAltdreiA }
\addlyrics { \tAltdreiB }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nTenor }
\addlyrics { \tTenoreins }
\addlyrics { \tTenorzwei }
\addlyrics { \tTenordreiA }
\addlyrics { \tTenordreiB }

sBass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass \nBass }
\addlyrics { \tBasseins }
\addlyrics { \tBasszwei }
\addlyrics { \tBassdrei }

sTSopran = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopranI }
\addlyrics { \tSopranIeins }
\addlyrics { \tSopranIzwei }
\addlyrics { \tSopranIdreiA }
\addlyrics { \tSopranIdreiB }

sTAlt = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopranII }
\addlyrics { \tSopranIIeins }
\addlyrics { \tSopranIIzwei }
\addlyrics { \tSopranIIdreiA }
\addlyrics { \tSopranIIdreiB }

sTTenor = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nAlt }
\addlyrics { \tAlteins }
\addlyrics { \tAltzwei }
\addlyrics { \tAltdreiA }
\addlyrics { \tAltdreiB }

sTBariton = \new Staff \with {
  instrumentName = "Bariton"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass \nTenor }
\addlyrics { \tTenoreins }
\addlyrics { \tTenorzwei }
\addlyrics { \tTenordreiA }
\addlyrics { \tTenordreiB }

sTBass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass \nBass }
\addlyrics { \tBasseins }
\addlyrics { \tBasszwei }
\addlyrics { \tBassdrei }


\book {
  \bookOutputSuffix "SATBB"

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sTSopran
    \sTAlt
    \sTTenor
    \sTBariton
    \sTBass
  >>
  \layout { }
}
}

\book {
  \bookOutputSuffix "SSATBoriginal"
\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopranI
    \sSopranII
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
}