\version "2.20.0"

\header {
  title = "Jauchzet dem Herrn alle Welt"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Felix Mendelssohn (1809-1847)"
  opus = "op. 69, Nr. 2"
  poet = "Psalm 100"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  page-count = 7
}

\layout {
  #(layout-set-staff-size 18) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

global = {
  \key a \major
  \time 2/2
  \dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOff % außer viele Melismen/Kolloraturen
}

EhreI = { f2.\f f4 | g2 a | bes1 | a\fermata | a2 a | d1 | c\fermata | }

EhreII = { f2.f4 | g2 a | bes1 | a\fermata | a2 a | d2. d4 |c1\fermata |}

tEhreI = \lyricmode { Eh -- re sei dem Va -- ter, und dem Soh -- ne, und dem hei -- li -- gen Gei -- ste. }

tEhreII = \lyricmode { Wie es war zu An -- fang, jetzt, und im -- mer -- dar, und von E -- wig -- keit zu E -- wig -- keit.  }

Amen = \lyricmode { A -- men, __ A -- men. }

nSopran = \relative c' {
  \global \tempo "Allegro moderato (Jubilate Deo)"
  e2\mf a | a( gis4 a | b2) a | d1~ | d2 cis~ | cis b | a a~( | a gis4) fis | gis1 | R1 |
  R1 | a2. a4 | b2 a | d1 | cis2 d | b1 | cis2 b | e cis | a2. a4 | fis2( d'4) cis | b2 e, |
  e e' | d cis | b2. b4 | cis2. cis4 | cis2 b | a1 | gis2 fis | gis2.( a4) | a1\fermata \bar "||" a2\f a | b b4 b | d2 b4 b |
  
  a2 r | g4 g c2~ | c4 c b2 | a d4 d | d2( c~ | c4) c d c | b1~ | b4 b a a |
  a2 g~ | g fis~ | fis e | d4 d g b | a( b c b | a2.) g4~ | g fis2\> e4 | e2( dis) | e1\!\fermata \bar "||" \break
  \key a \minor \time 4/4 \tempo "Moderato"
  R1 | R | r4 gis4\p a2~( | a gis) | a r | R1 | r4 a a b | c2.( b4) |
  c g c e | d g f c | d2 e4( d) | d4. d8 cis4 cis | d2 d4 d | d( c b) b | b e,\< a c |

  b4 e d a | b( c2.~ | c4) f, bes d | c\f f e d | cis2( d4) a | c2( b~ | b4) b c cis |
  d d, a' c | b e d a | b( c b\>) a | a2. g4 | g2( f~ | f4) f e d | g( f e) a | a2 gis | a1\p\fermata \bar "||" \break
  \key a \major \time 2/2 \tempo "Andante con moto"
  R1*15 |
  r2 e4\p e | a2.( gis4 | fis gis a2~ | a4) a( gis a) | b2 e, |
  
  r a | a2. gis4 | a( cis b) a | a2 gis | r4 d'2\< cis4 | cis( b) a( gis) | e'2( d~ | d4 fis e) d |
  d( cis2) d4 | e2 a, | b2. b4 | cis1\! | e2\f e | fis e | d1~ | d2 cis4 b | a2 cis |
  b4( cis) d2 | cis1 | b2 b4 cis | d2 e | fis e4( d) | cis2 d4( cis) | b1 | a2 fis'( |
  e) fis | d1 | cis | R | a2\p a | d( cis\< | b1 | a2) gis\> | fis1( | e~\p | e) | a\fermata \bar "||" \break
  
  \key f \major \time 2/2 \tempo "Maestoso (Gloria Patri)"
  \EhreI 
  <<
    \new Voice = "s1a" {\voiceOne f,2 f | f'1~ | f | f2 e4( d) | c1~ | c | c\fermata |\break}
    {\voiceTwo f,2 f | d'1~ | d | d2 c4( bes) | a2( c~ | c1) | c\fermata |}
  >>
  \oneVoice \relative c' {\EhreII
                          <<
                            \new Voice = "s1b" {\voiceOne f,2 f | f'1~ | f~ | f2 e4( d) | cis2 d | 
                            d cis | d1\fermata | R1*7 | f2 f~ | f1~ | f\fermata \bar "|."}
                            {\voiceTwo f,2 f | d'1~ | d~ | d2 c4( bes) | a2 a | 
                            a a | a1\fermata | R1*6 | d2 d~( | d1 | c2 bes | c1\fermata) \bar "|."}
                          >>
  }
}

tSopran = \lyricmode {
  Jauch -- zet, jauchzt __ dem Herrn __ al -- le Welt, al -- le Welt.
  Dient dem Herrn mit Freu -- den, mit Freu -- den, und kom -- met vor sein An -- ge -- sicht, und 
  kom -- met vor sein An -- ge -- sicht, sein An -- ge -- sicht mit Froh -- lo -- cken. Er ist Gott, un -- ser Herr, er ist
  
  Gott, er hat uns __ ge -- macht, hat uns ge -- macht, __ und nicht wir selbst, __ zu sei -- nem
  Vol -- ke, __ sei -- nem  Vol -- ke, und zu Scha -- fen __ sei -- ner Wei -- de.
  mit Dan -- ken, zu sei -- nen Vor --
  hö -- fen, geht zu sei -- nen To -- ren ein mit __ Lo -- ben, ge -- het ein, dan -- ket, dan -- ket ihm. O geht zu
  
  sei -- nen To -- ren ein, __ o geht zu sei -- nen To -- ren ein, __ und lo -- bet sei -- nen
  Na -- men. Geht zu sei -- nen To -- ren ein, __ o ge -- het ein, __ o geht zu sei -- nen To -- ren ein!
  %
  Denn der Herr __ ist __ freund -- lich, 
  
  und sei -- ne Gnad' __ und Wahr -- heit, sei -- ne Gnad' __ und __ Wahr -- heit
  wal -- tet e -- wig, für und für. Denn der Herr ist freund -- lich, und sei -- ne
  Gnad'  __ und Wahr -- heit, sei -- ne Gnad' und Wahr -- heit __ walt -- tet __ e -- wig, wal --
  tet e -- wig. Denn der Herr __ ist freund -- lich.
  
  Eh -- re sei dem Va -- ter, und dem Soh -- ne, und dem hei -- li -- gen __ Gei -- ste.
  \tEhreII A -- men. __
  
}

nAlt = \relative c' {
  \global
  e1~\mf | e2 e | fis4( gis a2~ | a gis4 fis | e1) | d2. d4 | cis( b) cis dis | e1~ | e | e2. e4 |
  fis2 e | a1 | g | fis2. fis4 | e2 fis | fis( e) | e1~ | e2 e | a fis | d2. d4 | e2. d4 |
  cis1 | d2 e | fis( e) | e1 | d~( | d2 cis | b) fis' | e1 | e\fermata \bar "||" fis2\f fis4( e) | d2 g4 g | a2 g4 g |
  
  fis2 d4 d | g2. g4 | fis2( g4 fis | e2) d( | e4) fis g2~ | g fis~ | fis4 fis g fis | e2( fis~ |
  fis e~ | e4) e d d | d2( c~ | c4) c b g' | fis( g a g | fis e) d2 | c c\> | b1 | b\!\fermata \bar "||"
  \key a \minor \time 4/4
  R1 | R | r4 e\p e2~ | e e | r4 a, d f | e a g d | e2 f | e4 d g( f ) |
  e2 g4 c | b2( a~ | a4 g) g2~ | g4 f( e) a | a2 r | r b4 a | gis( e2\<) dis4 |
  
  e4 e r2 | r4 c f a | g c bes f | g\f( a) r e | e2( d4) a' | g( fis g2~ | g4) b, e g |
  f d e a | gis2( fis) | gis4( a) f\> d | e f e b | c( e d2~ | d c4) d | d2. c8([ d]) | e2 e | e1\p\fermata \bar "||"
  \key a \major \time 2/2
  e2\p e | fis e | d1~ | d2 cis4 b | a2 cis | b4( cis) d2 | cis1 | b2 b4\< cis | d2 e | fis e4( d) |
  cis2 d4( cis) | b1 | a2 fis'\>( | e) fis | d1 | cis\! | e2\p e | fis e | d1~ | d2 cis4 b |
  
  a2 cis | b4( cis) d2 | cis1 | b2 b4\< cis | d2 e | fis e4( d) | cis2 d4( cis) | b1 |
  a2 fis'( | e) fis | d1 | cis\! | r2 e4\f e | a2. e4 | fis2( e4 fis | gis2) gis4 gis | a2 a4( gis) |
  fis2 fis4( e) | e1 | e2 r | r g4 g | fis2 gis | a2. a4 | a2( gis | a) a |
  a a | a( gis) | a1 | e2\p e | fis e | a1\<( | gis | fis2) e\>~ | e d | d\p( cis | b d) | cis1\fermata \bar "||"
  
  \key f \major \time 2/2
  \EhreI 
  <<
    \new Voice = "a1a" {\voiceOne f,2 f | bes1~ | bes | bes2 g | a1( | g) | a\fermata }
    {\voiceTwo f2 f | f1~ | f | f2 c | c( f~ | f e) | f1\fermata }
  >>
  \oneVoice \EhreII
  <<
    \new Voice = "a1b" {\voiceOne f,2 f | bes1~ | bes~ | bes2 e, | a a |
                        g4( f) e2 | f1\fermata | R1*5 | bes2 bes~ | bes1~ | bes | a2( g) | a1\fermata \bar "|." }
    {\voiceTwo f2 f | f1~( | f | g2) g | g f | 
    e e | d1\fermata | R1*4 | f2 f~ | f1~ | f | f2.( g4 | a2 bes) | a1\fermata \bar "|."}
  >>
}

tAlt = \lyricmode {
  Jauchzt __ dem Herrn __ al -- le Welt, __ al -- le Welt. __ Dient dem
  Herrn mit Freu -- den, dient dem Herrn mit Freu -- den, __ und kom -- met vor sein An -- ge --
  sicht mit Froh -- lo -- cken, mit __ Froh -- lo -- cken. Er ist __ Gott, un -- ser Herr, er ist
  
  Gott, er hat uns ge -- macht, __ uns __ ge -- macht, __ er, __ und nicht wir selbst, __
  zu sei -- nem Vol -- ke, und zu Scha -- fen sei -- ner Wei -- de.
  mit Dan -- ken, o geht zu sei -- nen To -- ren ein, zu sei -- nen Vor -- 
  hö -- fen mit Lo -- ben, __ dan -- ket ihm, lo -- bet sei -- nen
  
  Na -- men! O geht zu sei -- ne To -- ren ein, __ o geht __ zu sei -- nen To -- ren
  ein, o ge -- het ein, __ o __ geht zu sei -- nen To -- ren ein, __ zu sei -- nen __ To -- ren ein!
  Denn der Herr ist freund -- lich, und sei -- ne Gnad __ und Wahr -- heit, sei -- ne Gnad und Wahr -- heit __
  wal -- tet __ e -- wig, wal -- tet e -- wig. Denn der Herr ist freund -- lich, und 
  
  sei -- ne Gnad' __ und Wahr -- heit, sei -- ne Gnad' und Wahr -- heit __ wal -- tet __ e --
  wig, wal -- tet e -- wig. Denn der Herr ist freund -- lich, und sei -- ne __
  Gnad' und __ Wahr -- heit, sei -- ne Gnad' und Wahr -- heit wal -- tet,
  wal -- tet e -- wig. Denn der Herr ist freund -- lich, __ ist freund -- lich.
  
  \tEhreI
  \tEhreII
  \Amen
}



nTenor = \relative c' {
  \global
  cis1\mf( | b2.) cis4 | d2( cis~ | cis b4 a | gis1) | fis2. gis4 | a2.( b4) | cis2( b4) a | b1 | e2 d |
  cis4( d e2~ | e) d | d( cis~ | cis4 b a gis) | a1 | gis2. gis4 | a2 gis | cis1 | cis2 a | d b | gis2. gis4 |
  a2 g | fis2( e4 a) | a2 gis2~( | gis a4 gis) | fis2 gis | a1 | b | b2( d) | cis1\fermata \bar "||" d2\f c | b d4 d | d2 d4 d |
  
  d2 r | b4 b e2( | d4) d d2( | cis4 b) a2 | b4( a) g e' | e1( | dis4) dis e d | cis2( d~ |
  d) a | a2. a4 | g g a a | a2 b | c4( b) a( b) | c2. b4 | a2. g4 | fis1\> | gis!\!\fermata \bar "||"
  \key a \minor \time 4/4
  e2\p a4 c | b e d a | b2( a4) c | b( c d e | c) a r d | cis2 b | cis d4 d8 d | g,4( a g2) |
  g e'4 c | g2 a | b( c4 d | e f g) g | f2 r | r r4 f | e( d\<) c( a) |
  
  gis2( a4) f' | f e r f | e a, d2\f( | e4 c bes) bes | a( g) f r | r a d f | e g e e | 
  a,2. r4 | r e a c | b e d\> a | c2. b4 | a2. a4 | b2( c | b2.) c4 | b2 b | a1\p\fermata \bar "||"
  \key a \major \time 2/2
  cis2\p cis | d cis | b( a) | gis2. gis4 | a2 a | a gis4( fis) | e2( a) | gis gis4\< a | b2 cis | d cis4( b) |
  a( gis fis2~ | fis) gis | a a\> | a a | a( gis) | a1\! | cis2\p cis | d cis | b2.( a4) | gis2. gis4 |
  
  a2 a4( gis) | fis2 b | e, e | r gis4\< a | b2 cis | d cis4( b) | a( gis fis2~ | fis) gis |
  a a4 a | a2 a | a( gis) | a1\! | cis2\f cis | d cis | b1~ | b2 cis4 d | cis2 e |
  d4( cis) b2 | e2.( a,4) | a( gis) gis a | b2 cis | d4( cis b) b | a2 d4( e) | fis2.( e4) | e2 e4( d) |
  cis2 d4( cis) | b1 | a | cis2\p cis | d cis | fis( e\< | d) cis~ | cis2.\> b4 | a1~ | a2 e\p~| e1~ | e\fermata \bar "||"
  
  \key f \major \time 2/2
  \EhreI
  <<
    \new Voice = "t1a" {\voiceOne f,2 f | d'1~ | d | bes2 c | c1~ | c | c\fermata |}
    {\voiceTwo f,2 f | bes1~ | bes | bes2 e,2 | a1( | bes) | a\fermata |}
  >>
  \oneVoice \EhreII
  <<
    \new Voice = "t1b" {\voiceOne f,2 f | d'1~ | d~ | d2 e | e d |
                        d a | a1\fermata | R1 | R | R | es'2 es~ | es1 | d~( | d~ | d | f) | c\fermata \bar "|." }
    {\voiceTwo f,2 f | bes1~ | bes~ | bes2 c4( d) | a2 d, |
    e g | f1\fermata | R1 | R | c'2 c~ | c1 | bes1~( | bes~ | bes~ | bes | c2 d) | a1\fermata \bar "|."}
  >>
}

tTenor = \lyricmode {
  Jauchzt __ dem Herrn __ al -- le Welt, __ al -- le Welt. Dient dem
  Herrn __ mit Freu -- den, dient dem Herrn mit Freu -- den und kom -- met vor sein
  An -- ge -- sicht __ mit Froh -- lo -- cken, mit Froh -- lo -- cken. Er ist Gott, un -- ser Herr, er ist
  
  Gott, er hat uns __ ge -- macht, __ er hat __ uns ge -- macht, __ und nicht wir selbst, __
  und nicht __ wir selbst, zu sei -- nem Vol -- ke, und __ zu __ Scha -- fen sei -- ner Wei -- de.
  O geht zu sei -- nen To -- ren ein __ mit Dan -- ken, zu sei -- nen Vor -- hö -- fen mit Lo --
  ben, geht zu sei -- nen To -- ren ein, und lo -- bet __
  
  sei -- nen Na -- men, und lo -- bet sei -- nen Na -- men. O geht zu sei -- nen To -- ren
  ein, o geht zu sei -- nen To -- ren ein, o geht zu sei -- nen To -- ren ein!
  Denn der Herr ist freund -- lich, und sei -- ne Gnad' und __ Wahr -- heit, sei -- ne Gnad' und Wahr -- heit __
  wal -- tet e -- wig, wal -- tet e -- wig. Denn der Herr ist freund -- lich, und
  
  sei -- ne __ Gnad' und Wahr -- heit, sei -- ne Gnad' und Wahr -- heit __ wal -- tet
  e -- wig, sie wal -- tet e -- wig. Denn der Herr ist freund -- lich, und sei -- ne
  Gnad' __ und Wahr -- heit, __ sei -- ne Gnad' und Wahr -- heit wal -- tet __ e -- wig, sie __
  wal -- tet __ e -- wig. Denn der Herr ist freund -- lich, __ ist freund -- lich. __
  
  \tEhreI 
  \tEhreII
  \Amen
}

nBass = \relative c {
  \global
  a1\mf | e'~ | e2 fis | b,1~( | b2 cis) | d2. e4 | fis1 | e2. e4 | e1 | R |
  a2 gis | fis1( | e2 a,) | b2. b4 | cis2 b | e1 | e2 d | cis1 | fis | r2 b, | e cis |
  a2. a4 | b2( cis | d) e4( d) | cis1( | d2) e | fis1( | d) | e | a,\fermata \bar "||" d2\f d | g g4 g | fis2 g4 g |
  
  d1~ | d2 r | d4 d g2~ | g4 g fis2( | g4 fis e) e | a2. a4 | a2( g~ | g fis) |
  r4 b,4 cis cis | cis2( d | e fis | g) g,4 g | d'1~( | d4 e fis) g | a2 a,\> | b1 | <e e,>1\!\fermata \bar "||"
  \key a \minor \time 4/4
  R1 | R | r4 e\p c( a | e'1) | a,~ | a | r4 a d d | e( f) g2 |
  c, r | R1 | r4 g c bes | a2 a | d4 a d f | e a g d | e1~\< 
  
  e4 c f a | g c a f | c' r r bes~\f( | bes a) g2~ | g4 a, d f | e a g d | e b' a d, |
  f f c a | e'1~ | e4 a, d\> f | e1 | a, | as2( g4) fis4 | g2( gis4) a | <e' e,>2 <e e,> | a,1\p\fermata \bar "||"
  \key a \major \time 2/2
  R1 | R | R | e'2\p e | fis e | d( b | cis2. d4) | e1 | R | R |
  r2 b4\< cis | d2 e | fis e4\>( d) | cis2 d4( cis) | b1 | a\! | R | R | R | e'2\p e |
  
  fis2 e | d( b | cis2. d4) | e1 | R | R | r2 b4\< cis | d2 e |
  fis e4( d) | cis2 d4( cis) | b1 | a2\! e'4\f e | a2.( gis4 | fis gis a2~ | a4) a( gis a) | b2 e, | r a |
  a2. gis4 | a( cis) b( a) | e2 d4( cis) | b2 a | d e | fis fis4( e) | d1 | cis2 d |
  a' d, | e1 | a, | R | R | a2\p a\< | b( cis~ | cis) cis\> | d1 | a\p~ | a~ | a\fermata \bar "||"
  
  \key f \major \time 2/2
  \relative c {\EhreI
  <<
    \new Voice = "b1a" {\voiceOne f,2 f | f1~ | f | g2 g | g( f | g1) | f\fermata | }
     {\voiceTwo f2 f | bes,1~ | bes | g2 c | c1~ | c | f,\fermata | }
  >>
  \oneVoice \relative c {\EhreII
  <<
    \new Voice = "b1b" {\voiceOne f,2 f | f1~( | f | g2) g | e f4( g) | 
                                  a2 a | d,1\fermata | R1 | a'2 a~ | a1~ | a | f~ | f~ | f | f~ | f~ | f\fermata \bar "|." }
    {\voiceTwo f2 f | bes,1~( | bes | g2) g | a a |
                a a | d1\fermata | f2 f~ | f1~ | f~ | f | bes,~ | bes~ | bes | f~ | f~ | f\fermata \bar "|." }
  >>
  }
  }
}

tBass = \lyricmode {
  Jauchzt, jauchzt __ dem Herrn __ al -- le Welt, al -- le Welt.
  Dient dem Herrn, __ dient dem Herrn mit Freu -- den, mit Freu -- den, und kom -- met
  vor sein An -- ge -- sicht __ mit Froh -- lo -- cken. Er ist Gott, un -- ser Herr, er ist
  
  Gott, __ er hat uns __ ge -- macht, __ und nicht __ wir selbst, __
  zu sei -- nem Volk, __ und zu Scha -- fen sei -- ner Wei -- de.
  mit Dan -- ken, __ zu sei -- nen Vor -- hö --
  fen mit Lo -- ben, dan -- ket ihm! O geht zu sei -- nen To -- ren ein, __
  
  o geht zu sei -- nen To -- ren ein, geht __ ein, __ o geht zu sei -- nen To -- ren ein, o geht zu
  sei -- nen To -- ren ein, __ zu sei -- nen To -- ren ein, __ zu sei -- nen To -- ren ein!
  Denn der Herr ist freund -- lich,
  sei -- ne Gnad' und Wahr -- heit __ wal -- tet __ e -- wig. Denn der
  
  Herr ist freund -- lich, sei -- ne Gnad' und 
  Wahr -- heit __ wal -- tet __ e -- wig. Denn der Herr __ ist __ freund -- lich, und
  sei -- ne Gnad' __ und __ Wahr -- heit, __ sei -- ne Wahr -- heit wal -- tet __ e -- wig, sie
  wal -- tet e -- wig. Denn der Herr __ ist freund -- lich. __
  
  \tEhreI
  Wie es war zu An -- fang, jetzt und im -- mer -dar, und von E -- wig -- keit zu __
  E -- wig -- keit. A -- men, __ A -- men. __
}

tBI = \lyricmode {
  \repeat unfold 9 {\skip 4} A -- men, __ A -- men. __
}

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\tSopran}
      \new Lyrics \with {alignAboveContext = "zSopran"} \lyricsto "s1b" {\repeat unfold 9 {\skip 4} A -- men. __ }
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\tAlt}
      \new Lyrics \with {alignAboveContext = "zAlt"} \lyricsto "a1b" {\repeat unfold 9 {\skip 4} \Amen }
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\tTenor}
      \new Lyrics \with {alignAboveContext = "zTenor"} \lyricsto "t1b" {\repeat unfold 9 {\skip 4} \Amen}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\tBass}
      \new Lyrics \with {alignAboveContext = "zBass"} \lyricsto "b1b" {\tBI} 
    >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ACHTUNG: Alle dim/cresc wurden aus praktischen Gründen durch >/< ersetzt!!! %%%
%%% Dabei langes < gezogen von 75-81 und 106-112, orig. jew. 2 dim nacheinander %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 2=90
  }
}
