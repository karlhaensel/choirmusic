\version "2.24.3"

global = {
  \key b \major
  \time 4/4
  \tempo "Allegretto"
  \autoBeamOff
  \dynamicUp
  \override Score.DynamicTextSpanner.style = #'none
}

common = {
  \global
  \partial 2 s2\p | s1*2 |
  s1\< | s16 s\! s4. s2\p | s1 | s2 s\< |
  s2.\! s4\> | s8 s\! s2. | s1*2 |
  
  s1*3 | s1\pp |
  s2\> s16 s\! s4. | s2 s\< | s16 s\! s4.  s2 |
  s16 s\< s8 s2. | s16 s\! s4. s4 s\mf | s1 |
  
  s2. s4\p | s1*3 |
  s1*3 | s1\< |
  s\! | s | s2 s\< | s16 s\!s4. s2 |
  
  s1*4 |
  s1*2 | s4\pp s2.\< | s16 s\! s4. s2 |
  s1*3 |
  
  s2. s4\cresc | s1 | s2. s4\p |
  s1*2 | \tag #'s { s4 s2.\cresc } \tag #'a \tag #'t \tag #'b { s2. s4\cresc } |
  s2. s4\f | s4. s8\p s2 | s1 \bar "|."
}

SopCommonVerse = {
  dis4. e8 | fis4 dis b4. cis8 | b4 ais ais gis8([ fis]) | fis4 b cis dis |
  e2 dis4. e8 | fis4 dis b4. cis8 | b4 ais ais ais | dis4. cis8 b4 ais |
  b2 dis4. dis8 | cis4 b ais b8([ gis]) | fis4 eis gis8([ eis]) dis([ cis]) | fis2( fis'~ |
  fis4) fis, gis4. ais8 | gis2( fis4) r | fis8 fis \grace a16 g8 fis fis4 fis | b2 ais4 r |
  fis8 fis \grace a16 g8 fis d'4 d | d2( cis4) r4 | a8 a \grace cis16 b8 a a4 a | fis'2 eis4 cis8. cis16 |
  fis4. cis8 cis4 dis | e2 r4 b8. cis16 | dis4. cis8 b4 ais
}

nSopran = \relative c'' {
  \global
  \SopCommonVerse| b1~ | b4 ais e'4. ais,8 | b2\fermata 
  \SopCommonVerse | cis2( b4) r | r b8. c16 c4 r | r cis8. d16 d4 dis8. e16 | e4. cis8 b4 ais8([ fis']) | fis2( b,4) r |
}

AltCommonVerseA = {
  fis4. fis8 | fis4 fis fis4. eis8 | fis4 fis fis fis | fis fis fis fis |
  fis2 fis4. fis8 | fis4 fis fis4. eis8 | fis4 fis fis fis | fisis4. fisis8 fisis4 fisis |
  gis2 r | R1 |
}

AltCommonVerseB = {
  cis4 e dis d | cis2 eis | eis( fis4) r | d8 d d d cis4 cis |
  eis2 fis4 r | d8 d d d g4 gis | a2. r4 | g8 g g g fis4 fis |
  gis2 gis4 eis8. eis16 | fis4. fis8 fis4 fis | e2 r4 e8. e16 | dis4. dis8 e4 e |
}

nAlt = \relative c' {
  \global
  \AltCommonVerseA cis,1 | \AltCommonVerseB dis4 fis g4. fis8 | e1( | fis2\fermata) 
  \AltCommonVerseA cis,2. cis4 | \AltCommonVerseB e2( dis4) fis8. g16 | g2. g8. gis16 | gis2. a8. gis16 | gis4. g8 fis4 e | e2( dis4) r |
}

TenCommonVerseA = {
  dis4. dis8 | cis4 dis dis4. cis8 | dis4 cis cis b8([ ais]) | b4 b ais b |
  cis2 dis4. dis8 | cis4 dis dis4. cis8 | dis4 cis cis cis | ais4. ais8 dis4 cis |
  b2 r | R1 |
}

TenCommonVerseB = {
  fis4 cis' b b | ais2( b4.) cis8 | b2( ais4) r | b8 b b b a4 a |
  b2 cis4 r | b8 b b b d4 d | fis2( e4) r | e8 e e e a,4 a |
  d2 cis4 cis8. cis16 | cis4. cis8 cis4 c | b2 r4 b8. b16 | b4. b8 cis4 cis |
}

nTenor = \relative c' {
  \global
  \TenCommonVerseA gis2( eis) | \TenCommonVerseB b4 dis e4. dis8 | cis1( | dis2\fermata) 
  \TenCommonVerseA gis2. eis4 | \TenCommonVerseB ais2( b4) dis8. e16 | e2. e8. eis16 | eis2. fis8. e16 | e4. e8 dis4 cis | ais2( b4) r |
}

BasCommonVerseA = {
  b4. b8 | ais4 ais gis4. gis8 | fis4 fis e e | dis dis cis b |
  ais2 b'4. b8 | ais4 ais gis4. gis8 | fis4 fis e e | dis4. dis8 dis4 dis |
  gis2 r | R1 |
}

BasCommonVerseB = {
  ais4 ais b b | cis2 cis | <fis fis,>2. r4 | b8 b b b a4 a |
  g2 fis4 r | b8 b b b bes4 bes | a2. r4 | cis,8 cis cis cis d4 d |
  b2 cis4 b'8. b16 | a4. a8 a4 a | gis2 r4 g8. g16 | fis4. fis8 fis4 fis |
}

nBass = \relative c' {
  \global
  \BasCommonVerseA b,1 | \BasCommonVerseB b1~ | b~ | b2\fermata
  \BasCommonVerseA b,2. b4 | \BasCommonVerseB b,2. b'8. b16 | b2. b8. b16 | b2. b8. e,16 | e4. e8 fis4 fis | b,2. r4 |
}