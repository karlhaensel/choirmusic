\version "2.22.0"

global = {
  \key e \major
  \time 6/4
  \dynamicUp 
  \autoBeamOff
  \numericTimeSignature
}

nSopran = \relative c'' {
  \global
  \tempo "Sanft bewegt."
  \partial 4 r4 | R1. | r2 r4 r2 b4\p |
  cis cis dis e( b) gis | a4. a8 b4 gis4. gis8 a4 | b( a) gis fis4.( gis8 a4~ |
  a8[ gis]) b4. a8 cis4. b8 e4 | dis8([ cis] b4) a gis2( fis8[ gis]) | e4 r r e4. fis8 gis4 |
  
  gis fis e'\<^\markup{\italic espressivo} dis( cis) b\! | a-> gis a\p b fis gis | a( e fis gis2 fis4) |
  e2.~ e2 e4 | e'\< dis\!\> cis\! b2( a4 | gis2 fis4) gis2 fis4\pp | gis4. gis8 gis4 gis( b2~ |
  b2 gis4) e r gis^\markup{\italic dolce} | fis4. gis8 fis gis fis b dis([ cis dis]) b | ais4 gis fis^\markup{\italic {sempre dolce}} fis4. gis8 fis gis |
  fis b dis([ fis dis b] dis4^\markup{\italic {etwas breiter}}) cis fis,8^\markup{\italic espressivo} fis | b4.\< ais8 gis b\! cis4\> b gis\! |

  gis8.\< ais16 b8 dis cis\! ais b4\> ais dis,\! | gis2^\markup{\italic cresc.} gis4 b2 b4 | b2. b4 r fis |
  b2\< b4 cis2 cis4\! | dis2.\f dis4 r r\tempo "Erstes Zeitmaß." | R1. | 
  R1. | r2 ais4~\p ais cis ais |
  b4. gis8 fis4 e gis b | ais b\<( cis dis) b cis\! | dis2( b8\>[ cis]) dis4 fis2~\! |
  
  fis4 fis2\p( e4) e8 b g4~ | g fis g~ g2 a4~ | 
  a c2 b4 e( a,) | d2 b4 g2.~ | g2 r4 r2 d'4\< |
  d c b e4.\! d8\> c b\! | a2 g4 fis a g |
  g4.( a8) b4 c g2 | e'4. d8 c b a2\<( g4\!) |
  
  fis2\> fis4\!\p b2. | a2 a4 gis2 fis4 | gis2 fis4^\markup{\italic dim.} gis2 fis4 |
  gis4. gis8 gis4 gis b2~ | b\pp gis4 e r r | R1. |
  r2 r4 r2 dis4\p | e4. fis8 gis4 a gis cis~ | cis8 a\< fis([ gis]) a fis\! cis'4\> bis\! r |
  \tempo "Ruhig." cis2\pp cis4 bis2 ais4 | ais( gis) fis eis dis8([ eis]) fis gis | fis^\markup{\italic sempre \dynamic pp}([ gis]) ais bis cis dis eis2.~ | 
  
  eis8 cis dis eis fis4~( fis eis dis) | cis cis( bis) dis( cis) ais |
  gis2.~ gis4 cis gis^\markup{\italic cresc.} | eis2 gis4 gis cis gis | eis4. gis8 cis4 cis2 eis8 dis |
  \tempo "Nach und nach bewegter." cis2.~ cis4 r cis8\f cis | <cis e>2.~ <cis e>4 r <cis e>8 <cis e> | <cis fis>2.~ <cis fis>4 r <cis fis>8 <cis fis> \bar "||" \time 4/4
  \tempo "Ziemlich lebhaft." <dis fis>1~\< | <dis fis>4\! r r2 | R1 | R1 |
  
  R1 | R1 | r4 e,-^\f b'-^ fis-^ |
  gis fis8 e d'4 b8 a| gis4 fis8 e cis'2~ | cis4 cis8([ b]) a([ b]) cis dis |
  b4 e~( e8[ dis]) cis([ b]) | ais4 fis-^ fis'-^ dis8-^ cis-^ | bis4-^ bis8 cis dis2~ |
  dis4 cis8 bis cis2~ | cis8 cis bis cis dis2~( | dis8[ cis]) b ais gis4 b8 a |
  
  gis4 cis fis,8([ gis]) a cis | b4 r r2 | R1 |
  r4 a-^\f fis'-^ cis-^ | dis cis8 b e4 cis8 b | a4 gis8 fis b2~ |
  b4 fis gis a | b gis8 a b4 cis8 dis | e4 cis8 dis e2~ |
  e4 e, gis b | e2 dis4 cis | b2 cis4 a | gis1 |
  
  
  fis2. e4 | e2. e4 | e2 e4. e8 | e2 e4. e8 | \bar "||" \time 6/4 \tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note {4} #UP
      " = "
      \smaller \general-align #Y #DOWN \note {4} #UP
      )
    }
  }
  << 
    {\voiceTwo e1.~ | \dynamicDown e~\>_\markup{\italic ritard.} | e4\! r r r2 r4 | R1. | r2. r2}
    \new Voice = "s1" {\voiceOne \dynamicUp b'1.~\f | b2 b4 b4. b8 b4 | b4. b8 b4 b2.~ | \tempo "Erstes Zeitmaß" b1.~ | b2.~ b2} 
  >>
  \oneVoice \dynamicUp b4\p^"Alle" | cis cis dis e( b) gis |
  a4. a8 b4 gis4. gis8 a4 | b( a) gis fis4.( gis8 a4~ | a8[ gis]) b4. a8 cis4. b8 e4 |
  
  dis8([ cis] b4) a gis2( fis8[ gis]) | e4 r r e4. fis8 gis4 |
  gis fis e'\<^\markup{\italic espressivo} dis( cis) b\! | a-> gis a\p b fis gis | a( e fis gis2 fis4) |
  e2.~ e2 e4 | e'\< dis\!\> cis\! b2( a4 | gis2 fis4) gis2 fis4\pp |
  gis4. gis8 gis4 gis( b2~ | b2.^\markup{\italic dim.} gis) | e~ e4 r e\ppp | e1. | e2.~e4 r r \bar "|."
  
}

nAlt = \relative c' {
  \global
  \partial 4 b4\p | e gis fis e( dis) cis | dis e fis gis( b2~ |
  b4 a8[ gis]) fis4 e( fis gis) | e( fis) dis e( dis cis | b dis) e~ e8 cis dis4. fis8 |
  b,4.e8 dis4 e fis gis8([ a]) | b([ a] gis4 fis8[ e]) dis2 r4 | e2^\markup{\italic espressivo} a8 b a4 gis cis |
  
  b( a) cis\<^\markup{\italic espressivo} b( a) gis\! | fis-> e e\p e e dis | e2.~ e2 dis4 |
  e dis cis b2( a4 | gis2 a4) b2 e4~ | e e2~e4 e e\pp | e4. e8 e4 e2( dis4) |
  e2.~ e4 r e^\markup{\italic dolce} | dis4. e8 dis e dis fis b([ ais b]) fis | e4 dis cis8^\markup{\italic {sempre dolce}}([ e]) dis cis dis4. e8 |
  dis8 fis b4( fis b) ais fis8^\markup{\italic espressivo} fis | fis4.\< e8 dis gis\! fisis4\> gis e\! | 
  
  dis8.\< fisis16 gis8 ais gis fisis\! gis4\> fisis dis\! | dis2^\markup{\italic cresc.} dis4 e2 e4 | dis2. dis4 r dis |
  dis2\< dis4 e4.( fis8) gis4\! | fisis2.\f fisis4 r r | R1. |
  R1. | R1. |
  R1. | R1. | r2 r4 r2 fis4\mf |
  
  b a fis g4. fis8 e d | c2 b4 a a8 c e g | 
  fis4 e fis-^ d-^ c4.-^ d8-^ | b4-^ g'2 e4 c b | a\< b( c\! d\> b') a\! | 
  g2. r2 r4 | R1. |
  r2 g,4\< g' f e\! | c'4.\> b8 a g\! fis2 e4 |
  
  dis2.\> r4\! b4\p e~ | e cis dis << e {s8 s\< } >> << e2~ { s8 s\> s s\!} >> | e4 << e2~ { s4 s^\markup{\italic dim.}} >> e4 e e |
  e4. e8 e4 e2 dis4( | e2\pp) e4 e r r | R1. |
  r2 r4 r2 bis4\p | cis4. dis8 e4 fis e a~ | a8 fis dis([ e]) fis dis a'4\> gis\!( fis) |
  eis2\pp eis4 eis2 fis4 | cis2 cis4 cis cis bis | dis8^\markup{\italic sempre \dynamic pp}([ cis]) fis([ dis]) eis fis gis([ cis bis ais]) gis([ eis]) |
  
  gis2 fis8([ ais]) cis4. cis,8 cis4~ | cis8 eis gis4( dis fis2) fis4 |
  cis2.~ cis4 gis'eis^\markup{\italic cresc.} | cis2 eis4 eis gis eis | cis4. eis8 gis4 gis2 cis8 gis |
  gis2.~ gis4 r r | r2 a4\f a4. a8 a4 | a2 a8 a a2 a8 a \bar "||" 
  b1~\< | b4\! r4 r2 | R1 | r2 r4 e,4-^\f |
  
  fis-^ cis-^ dis cis8 b | a'4 fis8 e dis4 cis8 b | gis'([ fis] e4~ e8) dis cis dis |
  e2 e4 e | e( d cis8[ e] a4~ | a) a8 gis fis4 e8 dis |
  e4 gis~( gis8[ fis]) e([ gis]) | fis4 r r2 | r4 a gis a8 fis |
  gis2~ gis8 e fis gis | a2. gis8 fis | gis4 gis8 dis dis([ e]) fis4~ |
  
  fis8 dis e4 r2 | r4 b'-^ b-^ b-^ | b8([ gis]) e fis gis([ a] b4~\> |
  b\!) a8 gis a2~ | a4 a gis e | e( dis4. e8) a4 |
  gis b,2 cis8 dis | e([ dis]) e fis gis4 e | b'4. a8 gis2~( |
  gis4 e) e( gis) | cis2 b4 a | e2. e4 | e gis8 fis e2~ |
  
  e4 cis dis2 | e4 b cis2 | b4 b e2~ | e e4. e8 |
  e2.~\f e4 r r | R1. | r2 r4 r2 b4\p |
  e gis fis e( dis) cis | dis e fis gis( b2~ | b4 a8[ gis]) fis4 e( fis gis) |
  e( fis) dis e( dis cis | b dis) e~ e8 cis dis4. fis8 | b,4. e8 dis4 e fis gis8([ a]) |
  
  b([ a] gis4 fis8[ e]) dis2 r4 | e2 a8 b a4 gis cis |
  b( a) cis\<^\markup{\italic espressivo} b( a) gis\! | fis-> e e\p e e dis | e2.~ e2 dis4 |
  e\< dis\!\> cis\! b2( a4 | gis2 a4) b2 e4~ | e << {e2~} {s4 s4\espressivo}>> e4 e e\pp |
  e4. e8 e4 e2( dis4 | e1.^\markup{\italic dim.}) | b2.~ b4 r b\ppp | cis1. | b2.~ b4 r r 
}

nTenor = \relative c' {
  \global
  \partial 4 r4 | R1. | R1. |
  r4 r b\p cis dis e | cis( dis) b cis b a | gis( fis) e b'2.~ |
  b2 b4 a8 gis fis4 e | b' e8([ dis]) cis4~ cis b8([ cis] dis4~ | dis cis4. dis8) e4 r r |
  
  r cis8^\markup{\italic espressivo}([ b] a4) b\<( cis) dis\! | dis-> e cis\p b2. | a4 cis2 b2~( b8[ a] |
  gis2 a4) gis2 r4 | r2 e4 e'4 dis cis | b2( cis4) b2 cis4\pp | b4. b8 b4 b2( a4 |
  gis2 b4) gis r e^\markup{\italic dolce} | b'2 b8([ ais]) b dis fis([ e fis]) dis | cis4 b ais8^\markup{\italic {sempre dolce}}([ cis]) b fis b4. ais8 |
  b dis fis([ dis b dis] fis4) fis, fis'8^\markup{\italic espressivo} e | dis4.\< cis8 b gis\! e'4\> dis cis\! |
  
  b8.\< ais16 gis8 fisis e' cis\! dis4.\> cis8 b4\! | b2^\markup{\italic cresc.} b4 gis2 gis4 | fis2. fis4 r b |
  b2\< b4 gis2 gis4\! | ais2.\f ais4 r r | r2 r4 r dis\p dis~ |
  dis cis dis e2 dis4 | cisis eis( cisis) dis( ais) cis! |
  fis, dis'8 e dis4 b b( fis) | fis b2~\< b4 fis'4( e\!) | dis\> fis b,~ b fis( e'\!
  
  dis cis) a b g8([ a]) b4~ | b a g8([ fis]) e2 c'4~( |
  c a4.) d,8 d4 r r | R1. | R1. |
  r2 r4 r2 g4 | c\< b a d4.\! c8\> b a\! |
  b4( c) d g, b c | c8 d e2~ e4 a, r |
  
  r2 c4\p b2. | b4. b8 b4 b2 cis4 | b2 cis4^\markup{\italic dim.} b2 cis4 |
  b4. b8 b4 b2 a4( | gis2\pp) b4 gis r r | R1. |
  R1. | R1. | R1. |
  gis2\pp gis4 gis2 fis4 | fis( eis) ais gis fis dis | gis8^\markup{\italic sempre \dynamic pp}([ eis]) cis'([ gis]) cis r r4 cis8^\markup{\italic hervortretend}([ fis]) eis([ cis]) |
  
  bis2 ais4 ais( gis) fis | eis dis8([ eis]) fis gis fis([ gis]) ais bis cis dis |
  eis2.~ eis4 eis cis^\markup{\italic cresc.} | gis2 gis4 cis eis cis | gis4. cis8 eis4 eis2 gis8 fis |
  eis2.~ eis4 r cis8\f cis | <cis e>2.~ <cis e>4 r <cis e>8 <cis e> | <cis fis>2.~ <cis fis>4 r <cis fis>8 <cis fis> \bar "||" 
  <dis fis>1~\< | <dis fis>4\! r r2 | R1*2 |
  
  R1*3 |
  R1 | r2 r4 e-^\f | e-^ cis-^ dis-^ cis8 b8 |
  e([ dis]) cis b ais([ b] cis4~ | cis8) fis, b([ ais]) b4 fis-^ | fis'-^ dis8-^ cis-^ bis4-^ cis8 dis |
  e2~ e8 cis dis e | fis2. e8 dis | e4 dis8 cis b2~ |
  
  b4 r r cis | fis e8 dis e4 fis8 gis | e4. e8 e4. e8 |
  e4.( dis!8) cis4.( b8) | a2 b4 cis | cis( b2) cis8 dis |
  e4( fis8[ e] dis4) cis( | b) e, e'2 | b4 cis4.( bis8) cis dis |
  e([ dis]) cis dis e2~ | e4 e e4. e8 | e2 a,4 cis | b2. gis8([ a] |
  
  b2) a | gis a | gis a | gis <a cis>4. <a cis>8 |
  <<
    {\voiceTwo gis1.~ | \dynamicDown gis~\>_\markup{\italic ritard.} | gis4\!  r r r2 r4 | R1. | R1. | r2}
    \new Voice = "t1" {\voiceOne \dynamicUp b1.~\f | b2 b4 b4. b8 b4 | b4. b8 b4 b2.~ | b1.~  | b1.~ | b2}
  >>
  \oneVoice \dynamicUp b4\p^"Alle" cis dis e |
  cis( dis) b cis b a | gis( fis) e b'2.~ | b2 b4 a8 gis fis4 e |
  
  b' e8([ dis]) cis4~ cis b8([ cis] dis4~ | dis cis4. dis8) e4 r r  |
  r cis8^\markup{\italic espressivo}([ b] a4) b\<( cis) dis\! | dis-> e cis\p b2. | a4 cis2 b~( b8[ a] |
  gis2 a4) gis2 r4 | r2 e4 e' dis\< cis\! | b2( cis4) b2 cis4\pp |
  b4. b8 b4 b2( a4 | gis2.^\markup{\italic dim.} b) | gis~ gis4 r gis\ppp | gis2.( fis) | gis~ gis4 r r 
}

nBass = \relative c {
  \global
  \partial 4 r4 | R1. | R1. |
  R1. | R1. | r2 r4 r2 b4\p |
  e gis fis e( dis) cis | dis e fis gis4.( a8 b4~ | b a8[ gis] fis4) cis4. dis8 e4 |
  
  fis2 fis4 gis\<^\markup{\italic espressivo} a b\! | bis-> cis a\p gis8([ a]) b4 b, | cis( a) a' b b,2 |
  e e4 e <<dis {s8 s\espressivo}>> cis4 | b2\!( a4) gis2 a8([ cis]) | e2( a,4) e'2 a,4\pp | e'4. e8 e4 e( gis, b) |
  e2.~ e4 r r | R1. | R1. |
  R1. | R1. |
  
  r2 r4 r2 b'8([ ais]) | gis2^\markup{\italic cresc.}  gis4 e2 e4 | b2. b4 r b' |
  gis2\< gis4 e2 e4\! | dis2.\f dis4 r dis\mf^\markup{\italic {molto espressivo}} | cis' b ais b4. ais8 gis fis |
  e2 dis4 cis cis8 e gis b | ais4 gis ais-^ fis-^ e4.-^ fis8-^ |
  dis4-^ b'2 gis4 e dis | cis dis\<( e fis dis' cis\! | b ais) gis\> fis( dis) cis\! | 
  
  b2.~ b2 r4 | r2 e8\p([ d]) c4. b8 a4 |
  d2. g,2.~ | g2. g4 e'4( d | c d ) e fis d( c' |
  b a ) g g2.~ | g2.~ g4 r g,\< |
  f' e d\! e4. d8\> c b\! | a2 b4 c4\< c8 e a b\! |
  
  c4\> b\! a\p gis2. | fis2 fis4 e2 a,4 | e'2 a,4^\markup{\italic dim.} e'2 a,4 |
  e'4. e8 e4 e gis, b | e2.\pp~ e4 e e | e4. fis8 gis4 gis2 fis8 e |
  gis4 fis8 gis a fis cis'4\> bis\! r | R1. | R1. |
  cis,2\pp cis4 cis2 cis4 | cis2 cis4  cis2. | cis2^\markup{\italic sempre \dynamic pp} cis4 cis2. |
  
  cis cis | cis cis2 cis4 |
  cis4 gis cis eis( cis) eis^\markup{\italic cresc.} | gis gis, cis eis cis eis | gis2 eis8 gis cis2.~ |
  cis4 r cis\f cis4. cis8 cis4 | a2.~ a4 r a8 a | fis2.~ fis4 r fis8 fis \bar "||"
  b1~\< | b4\! b,-^\f b'-^ fis-^| gis fis8 e d'4 b8 a | gis4 fis8 e cis'4. b8 |
  
  a4. gis8 fis4( e) | dis4. fis8 b2~( | b8[ a]) gis fis gis4 a |
  e4. fis8 gis4.( fis8) | e4. e8 e4 e8 cis | a4 r a'4. a8 |
  gis([ fis e dis] cis[ dis]) e4 | e dis8 cis dis([ cis]) b a | gis1~ |
  gis4 gis gis'2~ | gis4 gis,8 gis gis'2~ | gis4 gis,-^ gis'-^ dis-^ |
  
  e dis8 cis a'4 fis8 e | dis4 cis8([ b]) gis'4 fis8 e | d'2. cis8 b |
  cis4. b8 a4. gis8 | fis2 gis4 a | fis( b8[ a]) gis4 fis |
  e dis8 cis b4 a | gis cis b( a') | gis fis cis e8 fis |
  cis'2. b4 | a1 | gis2 a4( fis) | b1 |
  
  b,2.~ b8 b | e1~ | e2 cis( | b) a |
  <e~ e'~>2.\f <e e'>4 r r | R1. | R1. |
  R1.*3 |
  R1. | r2 r4 r2 b'4\p | e gis fis e( dis) cis |
  
  dis e fis gis4.( a8 b4~ | b a8[ gis]) fis4 cis4. dis8 e4 |
  fis2 fis4 gis\<^\markup{\italic espressivo} a b\! | bis-> cis a\p gis8([ a]) b4 b, | cis( a) a' b b,2 | % Akzent ergänzt wie andere Stimmen, espr+cresc auf "mir" verschoben wie andere Stimmen (nicht schon ab "-geln") -> genauso wie bei erster Stelle am Anfang! 
  e2 e4 e << dis {s8 s\espressivo}>> cis4 | b2( a4) gis2 a8([ cis]) e2( a,4) e'2 a,4\pp |
  e'4. e8 e4 e( gis, b | e1.)^\markup{\italic dim.} | e2.~ e4 r e\ppp | cis2.( a) | e~ e4 r r
}