\version "2.20.0"

\header {
  title = "Arise, shine"
  subtitle = "for mixed choir (SATB) and organ"
  composer = "Charles Villiers Stanford (1852-1924)"
  poet = "Isaiah 60:1-3"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \tempo "Alegretto" 4.=63
  \autoBeamOff
}

nAriseSA = { r8 r r16 fis\f a4. | d2.~ | d8 d, e fis4 e8 | a2. | R2.*2 | }

changeA = { \bar "||" \key d \minor \time 4/4 \tempo "Poco più mosso" 4=88 }

beholdSATB = {
  r4 d,8.\p d16 f2 | bes2. es,4 |
  
  r d es4 d8. c16 | d1 |
}

beholdMitte = {
  d2. d4 | bes'1 | bes~ | bes4 bes-. r a | a8 d, r4 r bes'~ | bes a8 g g([ f]) f e | f2
}

beholdST = {
  r4 r8. f16\pp bes2 | d2. c4-. | r bes ges f8. es16 |
  \beholdMitte r4 d'~ | d c8 b b([ a]) a gis | a2 r4
}

changeB = { \bar "||" \time 6/8 \tempo "Tempo I" 4.=63 }

changeC = { \bar "||" \key d \major }

nGentiles = {
  r4. d | d d,4 e8 |
  fis4. fis4 e8 | a2. |
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  \nAriseSA
  r8 d,8\mf e fis4 g8 | a([ b]) cis\< d4 e8\! | fis4.~  fis8 d b | a4( b8) cis4. |
  
  r4. r8 fis, gis | a4 b8 cis4 d8 | e4 fis8 d^\markup{\italic cresc.} b e | e4. e | R2. |
  R2. | r8 r r16 a,\f cis4. | e2.~ | e | r8 r r16 a,\ff cis4. |
  
  e2.~ | e4. r8 e fis | g!4.~( g8[ fis]) e | d4. r | R2. |
  r4. r8 d, e | fis4 g8 a([ b]) cis | d4. e | fis2.~ | fis8 e d e4. |
  
  d2.~ | d8 r r r4. | R2.*6 
  \changeA \beholdSATB 
  
  \beholdST 
  %
  
  f4\< | << f'1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f r2 | R1 \changeB R2.*4 |
  
  % ab T. 64-81 nur Sopran I, falls Männeraltisten/Knabenchor (Sopran II in diesem Fall: Siehe Alt)
  
  r8 a\mf b cis4.~ | cis8 cis^\markup{\italic cresc.} d e([ d]) cis |
  d4( f8) f4.~ | f2. \changeC R2.*2 |
  
  r4. r8 fis,\f g | a([ b]) cis d4 e8 | fis4.~( fis8[ e]) cis | d4. a |
  R2.*2 | r4. r8 g\ff a | b4 cis8 d([ e]) fis | 
  
  g2.~( | g4 fis8) fis([ e]) d | e4.~ e4 d8 | d4. d | \nGentiles
  r4. d | fis2. | fis4. eis |
  
  fis dis | fis e | g2.~( | g4. fis) | d2. | R2.*7 |
  %
  
  d2.^\markup{\dynamic pp \italic { molto legato}} | e4. d | a b4 b8 | d4.( e) |
  d4 r8 r4. | R2.*2 | r4. d4\ppp d8 | e4.( d) |
  
  a2. | b | e~ | e~ | e4 r8 d4. | \tempo "rall." b a |
  a2.~ | a4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}

tArise = \lyricmode { A -- rise, shine, __ for thy light is come,
}

tBehold = \lyricmode {
  For be -- hold, dark -- ness
  
  shall cov -- er the earth, Be -- hold, dark -- ness shall cov -- er the
  earth, and gross dark -- ness the peo -- ple: dark -- ness shall cov -- er the
  
  earth, dark -- ness shall cov -- er the earth, and gross dark -- ness the peo -- ple:
}

tGentiles = \lyricmode {
  The Gen -- tiles shall
  come to thy light, and kings to the
  
  bright -- ness of thy ris -- ing.
  %
}

tGlory = \lyricmode {
  Glo -- ry to God in the high -- 
  est, And on earth, __
  
  peace, peace, peace, __ good -- will t'wards
  men. __
}

verseSopranoVoice = \lyricmode {
  \tArise
  And the glo -- ry of __ the Lord is ris -- en up -- on __ thee,
  
  And the glo -- ry of the Lord is ris -- en up -- on thee.
  A -- rise, shine, __ A -- rise, 
  
  shine, __ for thy light __ is come,
  And the glo -- ry of __ the Lord is ris -- en up -- on
  
  thee. __
  \tBehold
  
  %
  %
  
  %
  %
  
  But the Lord __ shall a -- rise __ up -- 
  on __ thee, __
  
  And His glo -- ry shall be seen __ up -- on thee,
  And His glo -- ry shall __ be
  
  seen, __ shall __ be seen __ up -- on thee. \tGentiles
  %
  
  %
  %
  
  \tGlory
  %
  
  %
  %
}

beholdAB = {
  r4 r8. f16\pp bes2 | d,2. c4-. | r bes' ges f8. es16 |
  \beholdMitte
  
  r4 d~ | d c'8 b b([ a]) a gis | a2 r4
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  \nAriseSA
  R2.*4 |
  
  r4. r8 fis8 d | cis([ fis]) fis fis4 a8 | a4 a8 fis^\markup{\italic cresc.} b gis | e4. e | R2. | % T. 13 eigentlich g nicht gis, aber Konflikt Orgel
  r8 r r16 e\f a4. | cis2.~ | cis8 a b cis4 b8 | a2. | r8 r r16 a\ff cis4. |  
  
  e,2.~ | e4. r | R2. | r8 g a b4.~( | b8[ a]) g fis4. |
  R2. | r8 fis e fis([ a]) a | a4. a | a a | g8 g b g4. |
  
  fis4 r8 r4. | R2.*7 
  \changeA \relative c'' \beholdSATB 
  
  \beholdAB
  %
  
  f4\< | << f1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f' r2 | R1 \changeB R2.*6 |
  
  % ab T. 66-81 bei Männeraltisten: Tenor singen! Altstimme singt dann Knabensopran II
  
  %
  r8 f\f f bes4.~ | bes8 bes c d([ c]) bes \changeC d4. d~ | d d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r4. r8 d,8\f e |
  fis([ g]) a b4 a8 | d4.~^\markup{\italic cresc.}( d8[ g,]) a | b4. b | r g4\ff g8 |
  
  b2.( | a4) a8 b4 b8 | d4.( cis4) d8 | d4. a | r d, | d d4 e8 |
  fis4. fis4 e8 | a2. | r4. fis | fis2. | b4. b |
  
  ais a | g b | a2.~ | a | d,| R2.*7 |
  %
  
  a'2.^\markup{\dynamic pp \italic {molto legato}} | a4. fis | e fis4 fis8 | g2. |
  fis4 r8 r4. | R2.*2 | r4. a4\ppp a8 | a4.( fis) |
  
  e2. | g | g~ | g~ | g4 r8 g4. | \tempo "rall." g e |
  fis2.~ | fis4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}

verseAltoVoice = \lyricmode { 
  \tArise
  %
  
  And the glo -- ry of the Lord is ris -- en up -- on thee.
  \tArise A -- rise,
  
  shine, __ for thy light __ is come,
  And the glo -- ry of the Lord is ris -- en up -- on
  
  thee.
  \tBehold
  
  %
  %
  
  %
  %
  
  %
  But the Lord __ shall a -- rise __ up -- on thee, __ shall a --
  
  rise, __ And His
  glo -- ry shall be seen __ up -- on thee, and His
  
  glo -- ry shall be seen __ up -- on thee. \tGentiles
  %
  
  %
  %
  
  \tGlory
  %
  
  %
  %  
}

nAriseTB = {
  R2. | r8 r r16 fis16\f a4. | d2.~ | d8 d, e fis4 e8 | a2.~\> |
  a8\! r r r4. | R2.*3 |
}

tenorVoice = \relative c {
  \global
  \dynamicUp
  \nAriseTB 
  r8 fis\mf gis a4 b8 |
  
  cis([ dis]) eis fis4.~ | fis4 d8 cis a b | cis4( e8) e4.^\markup{\italic cresc.} | r8 r fis d b e | e4. e |
  r8 r r16 e\f e4. | e2.~ | e8 cis d e4 d8 | cis2. | r8 r r16 a\ff cis4. |
  
  e2.~ | e4. r | R2. | R2. | r4. r8 fis, fis |
  b4 cis8 d4. | r8 d d d([ fis]) e | d4. cis | c c | b8 b b d4( cis8) |
  
  d2.~ | d8 r r r4. | R2.*6
  \changeA \beholdSATB
  
  \beholdST
  %
  
  f4\< | << f'1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f r2 | R1 \changeB R2.*2 |
  
  r8 g\mf a bes4.~ | bes8^\markup{\italic cresc.} bes c d([ c]) bes | a4( e'8) e4. | R2. |
  r8 bes\f c d4.~ | d8 d es f([ es]) d \changeC d4. d~ | d d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r4. r8 a\f d |
  d4 fis8 g4 e8 | fis4.^\markup{\italic cresc.}( e4) fis8 | g4. d | r d4\ff d8 |
  
  d4.( cis~ | cis4) d8 d([ e]) fis | e4.( g4) fis8 | fis4. fis | \nGentiles
  r4. d | cis2. | d4. b |
  
  cis c | b d | d2.( | cis) | d | R2.*7 |
  %
  
  d2.^\markup{\dynamic pp \italic {molto legato}} | cis4. d | e d4 d8 | b2. |
  a4 r8 r4. | R2.*2 | r4. d4\ppp d8 cis4.( d) |
  
  e2. | d | c~ | c~ | c4 r8 b4. | \tempo "rall." e cis |
  d2.~ | d4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}

tAriseTB = \lyricmode {
  \tArise 
  __ And the glo -- ry
}

verseTenorVoice = \lyricmode {
  \tAriseTB
  %
  
  of the Lord __ is ris -- en up -- on __ thee, is ris -- en up -- on thee.
  \tArise A -- rise,
  
  shine, __ for thy 
  light is come, And the glo -- ry of the Lord is ris -- en up -- on __
  
  thee. __
  \tBehold
  
  %
  %
  
  %
  %
  
  But the Lord __ shall a -- rise __ up -- on __ thee,
  But the Lord __ shall a -- rise __ up -- on thee, __ shall a --
  
  rise, __ And His
  glo -- ry shall be seen __ up -- on thee, and His
  
  glo -- ry shall __ be seen __ up -- on thee. \tGentiles
  %
  
  %
  %
  
  \tGlory
  %
  
  %
  %
}

bassVoice = \relative c {
  \global
  \dynamicUp
  \nAriseTB
  r8 fis\mf fis fis4 gis8 |
  
  a([ b]) gis a4 b8 | cis4( b8 a) fis fis | a4( cis8) e,4.^\markup{\italic cresc.} | r8 r ais b gis e | e4. e |
  r8 r r16 e\f cis'4. | a2.~ | a8 a fis e4 e8 | a2. | r8 r r16 a\ff cis4. |
  
  e2.~ | e4. r | R2. | R | r4. r8 fis, fis |
  d4 fis8 b4. | r8 b b a4 g8 | fis4. e | d dis | e8 e b' a4. |
  
  d2.~ | d8 r r r4. | R2.*6
  \changeA \beholdSATB
  
  \beholdAB
  %
  
  f4\< | << f1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f' r2 | R1 \changeB r8 b,\mf c d4.~ | d8 d e f([ e^\markup{\italic cresc.}]) d | 
  
  d4( g8) g4. | R2.*3 |
  r8 d\f es f4.~ | f8 f f bes4 bes8 \changeC b!4. b~ | b d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r8 d,\f e fis4 g8 |
  a4 d8 d4 cis8 | c2.^\markup{\italic cresc.} | b | r4. b4\ff b8 | 
  
  e,2. | fis4. gis4 gis8 | a4.~ a4 a8 | d4. d | \nGentiles
  r4. b a2. | gis4. gis |
  
  fis fis | g gis | a2.~ | a | d | R2.*7 |
  %
  
  fis,2.^\markup{\dynamic pp \italic {molto legato}} | a4. b | cis b4 b8 | g2. |
  d4 r8 r4. | R2.*2 | r4. fis4\ppp fis8 | a4.( b) |
  
  cis2. | b | R | c,~ | c4 r8 d4. | \tempo "rall." e a |
  d,2.~ | d4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}

verseBassVoice = \lyricmode {
  \tAriseTB
  %
  
  of __ the Lord is ris -- en up -- on __ thee, is ris -- en up -- on thee.
  \tArise A -- rise,
  
  shine, __ for thy
  light is come, And the glo -- ry of the Lord is ris -- en up -- on
  
  thee. __
  \tBehold
  
  %
  %
  
  %
  But the Lord __ shall a -- rise __ up --
  
  on __ thee,
  But the Lord __ shall a -- rise up -- on thee, __ shall a --
  
  rise, __ And His glo -- ry
  shall be seen up -- on thee, and His
  
  glo -- ry shall be seen __ up -- on thee. \tGentiles
  %
  
  %
  %
  
  \tGlory
  %
  
  %
  %
}

% TODO: Balken bei Orgel passend zu Phrasen/Bindungen!

rightOne = \relative c' {
  \global
  \autoBeamOn
  \oneVoice
  <d fis>4.\f <cis fis a> | <d fis d'>2. | \voiceOne  <d_~ b'>2. | <d a'>4 g8 fis4\> e8\! | \autoBeamOff d8\p \autoBeamOn  d( e fis4 e8 |
  a) d,( e fis4 e8 | a8) d,( e fis4 e8 | a) d,( e fis4 e8 | a) d,( fis b4 gis8 | cis) fis,( gis a4 gis8 |
  
  cis) fis,( gis a4 gis8 | cis) <fis, a>( <gis b> <a~ cis>4 <a d>8) | e'( cis fis d b e~ | e) cis( fis d b e~ | e) cis( fis d b e~ |
  \oneVoice <a,~ e'>2.\f) | <a~ cis~> | <a cis>8 <cis, a'~>( <d a'b> <e gis~ cis>4 <d gis b>8 | <cis e a>) r8_\markup{Rds.} r16 <e a> <e a cis>4. | <a cis e> <a cis dis a'> |
  
  \voiceOne r8_\markup{Rds. off} <c e>8( <d f> <e~ g~>4. | <e g>8 <cis gis'> <b~ b'> <b e>) <a e'>( <d fis> | g4.~ g8 fis e | \oneVoice <d fis,>8) g,( a <g~ b~>4. | <g b>8 <fis a> g fis4.~ |
  \oneVoice <b, fis'>4 <cis e>8 d4)( <cis e>8) | <d fis>4( <e g>8 \voiceOne a8 b cis) | d4.( e | fis2.~) | fis8 e( d e4. | 
  
  \oneVoice <fis, d'>8\ff) <fis d'>( <g e'> <a fis'>4 <b e>8 | \voiceOne a' d, e fis4 e8 | d) d( e fis4 e8 | a d, e fis4 e8 | d) d,( e^\markup{\italic {sempre dim.}} fis4 \oneVoice e8 |
  <d~ a'>) d~( <d~ e> <d f>4 e8 | a) d,\p( <cis e> <d~ f~>4. | <d f> <c es>) | \changeA <bes~ d~>1 | <bes~ d f>2 <bes c es> |
  
  <bes~ d> <bes~ c> | <bes d>4 d~ <d~ f~> <d~ f bes~> | \voiceOne <bes' d>1 | \oneVoice <d, ges~ bes~ d>2. <c~ ges'~ bes~ c>4 | <c ges' bes>2 <bes~ c es> |
  <bes d>1 | \voiceOne es2 d | s1 | cis | \oneVoice <a~ d~>4 <a d~ f> <bes~ d~ bes'>2 | <bes d bes'> \voiceOne cis2 |
  
  <d~ f~>4 <d~ f~ a~> <d~ f~ a~ d~>2 | <d~ f~ a d>2 <d f> | <c~ f~ a~>4 <c f a c> <f~ a~ c~ f~>2 | <f a c f>1 | des'2 bes~ |
  bes as4( ges | as2) f~ | f1~ \changeB <f b,>8\mp( <f d> <e c> <d b>) <d a>( <c g> | <b f>4 <c g>8 d e f |
  
  <g~ d~>4.) <g d>8 <bes d>( <a c> | <g bes>) <g bes>( <a c> <bes d> <a c> <g bes> | e' a, b <cis~ a>4.) | <a cis>8 <a cis>( <b d> <cis e> <b d> <a cis> |
  <bes d>4 f'8) f4.~ | f2. \changeC <d b>8 gis,( a b4 cis8 | d e fis) fis( e d) |
  
  \oneVoice <a~\f a'~>4. <a a'>8 fis( g | \voiceOne a b cis d4 e8  | fis4.~ fis8 e cis) | \oneVoice <d~ a~>4. <d a>8 d,~( <d~ e> |
  <d~ fis> <d g> \voiceOne <fis a> b4 a8 | d4.~ d8 g, \oneVoice <fis a> | <g b>) r r16 b, d4. |  <d~ g~>4_\markup{\italic cresc.} <d g>16 <d g b> <g b d>4. |
  
  <g b g'~>2. | \voiceOne g'4 fis8 fis e d | \oneVoice <e~ d g,~>4. <e cis g>4 d8 | <d fis,>4\ff r16 <d, fis>16_\markup{Rds.} <d fis a>4. | \voiceOne <d fis d'~>2. | \oneVoice <e g d'>2. |
  \voiceOne fis4.~ fis4 e8 | \oneVoice r r r16 <d fis> <d fis a>4. | <fis gis d'>2. | <fis cis' fis~>2. | \voiceOne fis'4. eis |
  
  <fis ais,>4. <dis c a> | <fis b,~ g> <e d b gis> | <g~ e~>2. | <g e>4. fis | <fis, d'>8 <fis d'>( <g e'> <a fis'>4 <b e>8 | \voiceOne a' d, e fis4 e8 | 
  d) d( e fis4 e8 | a d, e fis4 e8 | d) d,( e fis4 \oneVoice e8 | <d a'>8) \voiceOne d( e fis4 \oneVoice e8 <<{<d a'>4)}{s8 s8\p}>> a8 <a d>4 s8 |
  
  \voiceOne fis' fis( g a) d( e | fis) \oneVoice r r r4. | R2.*3 |
  r8 \voiceOne d( e fis4 e8 | a d, e fis4 e8 | d) d,( e fis4 e8 | a2.) | \oneVoice R2. |
  
  r4.<e a> | r <g b> | <g~ e'~>2. | <g~ e'~> | <g e'>4 \oneVoice r8 r4. | \tempo "rall." R2. |
  r8\pp \clef bass d,( e fis4 a8 | d) \clef violin d~( <d e> <d fis>4 <e a>8 | <a d>) <fis d'>( <g e'> <a~ fis'>4 <a e' a>8 | <d d'>2.) | <d g,> | <d fis,>\fermata \bar "|."
}

rightTwo = \relative c' {
  \global
  \autoBeamOn
  s2. | s2. | fis4._~ fis4 e8 | g fis d cis4. | d8 d4~ d cis8 |
  d8 d4~ d cis8 | d8 d4~ d cis8 | d d4~ d cis8 | d d4 fis4.~ | fis8 fis4~ fis eis8 |
  
  fis fis4~ fis eis8 | fis fis4~ fis4. | a fis4 gis8 | a4_\markup{\italic cresc.} fis8 fis4 gis8 | a4 fis8 fis4 gis8 |
  \repeat unfold 5 {s2.}
  
  r4. r8 <c, e>8 <d f> | <e g> e~ <e~ d> <cis e>4 s8 | e' cis b ais b cis | s2. | s4 e,8~ e d cis |
  s2. | s4. fis4 a8 | a2.~_\markup{\italic cresc.} | <fis a> | g |
  
  s2. | a8 fis g a4.~ | a8 fis g a4.~_\markup{\italic dim.} | a8 fis b a4 g8 | fis d4~ d s8 |
  s2. | s2. | s2. | \changeA s1 | s1 |
  
  s1 | s1 | d2~ <d as'> | s1 | s1 |
  s1 | bes1~ | <bes~ d> | bes2 a | s1 | s2 bes8 a4 g8 |
  
  s1 | s1 | s1 | s1 | <ges' bes>4 <f~ as~> <f as> <es~ ges~> |
  <es ges> <des f>( f) <es~ ges~> | <es ges> <des f> des( <c es>) | <c es>( <bes des>) des( c) \changeB s2. | s4. b!4. |
  
  bes8 g a bes d4~_\markup{\italic cresc.} | d8 d4~ d4. | e s4. | s2. |
  f4. bes~ | bes8 bes( c d c bes) \changeC s2. | s4. b4. |
  
  s2. | a4.~ a8 b <g cis> | <fis d'>4. a | s2. |
  s4. <e g>4. | fis8 d fis e4 s8 | s2. | s2. |
  
  s2. | a4. b | s2. | s2. | a4. gis | s2. |
  d4. cis | s2. | s2. | s2. | b'2. |
  
  s2. | s2. | <g~ d'>2. | <g cis> | s2. | a8 fis g a4.~ | 
  a8 fis g a4.~_\markup{\italic dim.} | a8 fis b a4 g8 | fis d4~ d s8 | s8 d4~ d s8 | s4. s4 \voiceOne <d~ e>8 |
  
  \voiceTwo d4 d8 fis4 d'8~ | d s4 s4. | \repeat unfold 3 {s2.} |
  s8 \voiceTwo  d4~\pp d8 b cis | c4 b8 r b cis | \repeat unfold 15 {s2.} |
  
  %
  %
}


right = \relative c' {
  \global
  \autoBeamOn
   <<
     \new Voice = "RightOne" {\voiceOne \rightOne}
     \new Voice = "RightTwo" {\voiceTwo \rightTwo}
   >>
}

left = \relative c {
  \global
  \autoBeamOn
  <fis~ a>2. | <fis~ b>4. <fis b> | b2. | a4 b8 a4 g8 | fis4 g8 a b g |
  fis4( g8 a b g) | fis4( g8 a b g) | fis4( g8 a b g) | fis4 a8 d, fis d' | a4( b8 cis d b) |
  
  a4( b8 cis d b) | a( cis b a fis b | cis a cis b e d |cis) a( ais b e d | cis) a ais( b e d) |
  <e, cis'~>2. | <a~ cis~ e~> | <a cis e>8 a fis e4. | a8 r r16 <a cis> <a cis>4. | <a cis e>4.  <a cis dis> |
  
  s2. | s4. s4 <b d>8 | <ais cis>4 d8 cis b fis' | d4.~  d8 cis^\markup{\italic dim.} d | e a,4 ais8 gis ais |
  fis gis ais b4.~ | b4 d8 d4 e8 | a,4.~ <a~ cis> | <a c>2. | b4. <a d>4 <a cis>8 |
  
  d4 b8 a d g, | fis d' b a~ <a b> <g cis> | <fis d'> d'4~ d8 b cis | d4.~  d8 b cis | d fis, g a b cis |
  d fis, g  <<{\voiceOne a b cis | d} \\ {\voiceTwo a4.~ | a8}>> \voiceOne r4 r8 gis a | bes4. f | \changeA \oneVoice <f bes,~>1 | <bes,~ ges> |
  
  \voiceOne <bes f'>2 <bes~ ges'> | <bes f'>4 <f' bes~>2. | <f bes>1 | <ges~ bes~ bes,~> | <ges bes bes,>2 es |
  <d f>1 | g | <e!~ g~> | <e g> | <d~ f~>2 <d~ f~> | <d~ f>4 <d e> g8 f4 e8 |
  
  <f~ a~>2 <d~ f~ a~> | <d f a> gis8 a4 b8 | a2~  <a~ f~ des~ c'~> | <a f des~ c'>1 | <ges bes des,~>4 <f~ as~ des,> <f as> <es~ ges~> |
  <es ges> <des f> <as~ as'~>2 | <as as'> f'~ | f f \changeB d8 b c d f e | d4 e8 f e d~ | 
  
  <d~ e~>2. | <d e bes'> | <e~ a~ cis~>4. <e a cis>8 <a cis>( <b d> | <cis e>4 <b d>8 <a cis> <b d> <cis e> |
  <bes d>) <bes d,>( <c es,> <d f,>) <<{\voiceOne <d bes>( <c f,> | f d es f es d)} \\ {\voiceTwo s4 | d8 f,4 bes4.}>> \voiceOne \changeC <b!~ d~>4. <b~ d~ gis~> | <b d gis> <<{\voiceOne d8 e fis} \\ {\voiceTwo gis,4.}>> \voiceOne |
  
  <d' fis>8 <d~ fis,> <d e g,> <<{\voiceOne <d fis> d e | s4 <e g,>8 <d fis,>4 <a e>8 | s4. b8 cis e | s} \\ {\voiceTwo a,4.~ | \voiceOne <a fis'>4 s8 s4. | d,8 fis a~ \voiceTwo a4.~ | \voiceOne <a d>8}>> \voiceOne d,8 e fis~ <fis a> g |
  a4 d8~ d4 cis8 | c2. | b8 r r16 <g d> <g b>4. | b4~ b16 <g b>16 <g b>4. |
  
  \voiceOne <<{ d'4. cis~ | cis4 d8 d e fis | e4.~ e4 d8|}\\{\voiceTwo g,2. | a4. gis | a2.|}>> \voiceOne <a c>4 r16 a a4. | b2. | <g d'> |
  <g bes> | r8 r r16 <fis a> <fis a>4. | <b d>2. | <a cis> | <gis b d> |
  
  <ais cis>4. <a c dis> | <g b fis'> <gis d' e> | <e~ a~ d>2. | <e a~ cis> | <a d>8 d b a d g, | fis d' b a~ <a b> <g cis> |
  <fis d'> d'4~ d8 b cis | d4.~  d8 b cis | d fis, g a b cis | d fis, g a b cis | d d,( e fis) fis( g |
  
  a4) b8( d4 g8 | a) \oneVoice r r r4. | R2.*3 |
  r8 \clef violin <<{\voiceOne fis g a4 g8 | fis4 g8 a4 g8 | fis}\\{\voiceTwo d4~ d4.~ | d2.~ | d8}>> \oneVoice r r r4. | R2.*2 |
  
  \clef bass \voiceOne r4. cis | r <b d> | c2.~ | c~ | c4 \oneVoice r8 r4. | \tempo "rall." R2. |
  \voiceOne r8 fis,, a d4 e8 | fis fis g a4 <g cis>8 | <fis d'~>4 <g d'~>8 <a~ d>4 <a cis>8 | <fis~ a~ d>4. <fis a c~> | <g~ c> <g b> | <a d,>2.\fermata \bar "|."
}

pedal = \relative c {
  \global
  \autoBeamOn
  d4. cis | b a | g2. | a | d,~ |
  d~ | d~ | d~ | d4. b' | fis2.~ |
  
  fis~ | fis |  e~ | e~ | e |
  a~ | a4. fis | e2. | a8 r r r4. | fis'2. |
  
  e2.~ | e~ | e4 e,8 fis gis ais | b4.~  b8 e d | cis4.~  cis8 fis e |
  d4 cis8 b4.~ | b4 b'8 a4( g8 | fis4. e | d dis | e) a,( |
  
  d2.~) | d ~ | d8 d( b a4 g8 | fis b g a4.~) | a8 c( b a4 g8 |
  fis) c'( bes a4 g8 | f4.) r8 bes8( a | g4. a)  | \changeA s1 | s1 |
  
  f2 es | bes'1 | as2 f | es1~ | es2 ges |
  bes as | g1 | a~ | a | d2 g,~ | g a |
  
  d4 c b2~ | b e, | f des~ | des1~ | des2 es |
  bes' c, | des a' | bes as \changeB g2.~ | g~ |
  
  g~ | g~ | g~ | g |
  f~ | f \changeC e~ | e |
  
  a2.~ | a~ | a4. g | fis2.~ |
  fis4. e | d2. | g~ | g4. fis |
  
  e2. | fis4. gis | a2. | c | b | bes |
  g | fis | b | a | gis |
  
  fis | e | a~ | a | d~ | d~ |
  d8 d( b a4 g8 | fis b g a4. | d8) c( b a4 g8 | fis) (c' b a4 g8 | fis4.) r |
  
  R2. | \repeat unfold 9 {s2.}
  %
  
  R2.*3 | c'2.~ | c4 s8 s4. | s2. |
  \voiceTwo d,2.~ | d | d4 (b'8 a4 g8 | fis2. | g) | d\fermata \bar "|."
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass 
        <<
          \new Voice = "vLef" {\voiceOne \left}
          \new Voice = "vPedal" {\voiceTwo \pedal}
        >> }
  >>
>>

\score {
  <<
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sopranoVoicePart
      \altoVoicePart
      \tenorVoicePart
      \bassVoicePart
    >>
    \organPart
  >>
  \layout { }
  \midi { }
}
