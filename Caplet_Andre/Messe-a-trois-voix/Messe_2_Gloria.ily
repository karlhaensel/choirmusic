\version "2.22.1"

Gglobal = {
  \global
  \key des \major
  \time 3/4
}

tLaudamus = \lyricmode {
  Lau -- da -- \tag #'s  \tag #'m { mus } \tag #'a { mus __ } te __ Be -- ne -- di -- ci -- \tag #'s  \tag #'m { mus } \tag #'a { mus __ }
  te __ A -- do -- ra -- \tag #'s  \tag #'m { mus } \tag #'a { mus __ } te __
  Glo -- ri -- fi -- ca -- mus __ te __
}

tGratias = \lyricmode {
  Gra -- ti -- as a -- gi -- mus ti -- bi __ prop -- ter ma -- gnam
  glo -- ri -- am tu -- am __ Do -- mi -- ne De -- us,
  \tag #'s { Rex } \tag #'m \tag #'a { Rex __ } cae -- les -- tis De -- us Pa -- ter om -- ni -- po -- tens __
}

tEtInTerra = \lyricmode {
  Et in ter -- ra __ Pax __
  ho -- mi -- ni -- bus __
}


dGTutti = {
  \Gglobal
  \tempo "Très animé et bien rythmé" s2.*4 |
  s2.*5 |
  s2.*3 | \mark #5 s2.*2 |
  s2.*6 |
  
  s4\ff s2 | s2.*3 \breathe | s2. |
  s2.*2 | s4\ff s2 | s2.*2 \breathe |
  s2 s4\< | s2. | s8\! s8 s2 \bar "||" \tempo "Un peu plus lent" \mark \default s4^\markup{\italic {très doux}} s8\p s\< s4 | s8\! s\> s4 s8 s\! | s2. | s4^\markup{\dynamic p \italic dolce} s2 |
  s2.*5| s4 s2\> | s2. |
  
  s4\! s2\pp | s2.*5 |
  s2.*3 \bar "||"  \tempo "a Tempo" \mark \default s4\ff s2 | s2. |
  s2.*2 \breathe | s2.*2 |
  s2.*5 | s8 \tempo "Poco rit." s4. s4 |
  
  s4\pp s2 | \tempo "En retenant toujours" s2.*2 \breathe | s8 s\> s2 | s4\! s2 \bar "||"
  \mark \default \tempo "Plus lent" s2.*5 |
  s2.*4 |
  s2.*4 |
  
  \mark \default \tempo "Moins lent" s8\mf s\> s4 s8 s\! | s s\> s4 s8 s\! | s8 s\> s4 s8 s\! | s4 s\pp s^\markup{\italic {cresc. molto}} | s2. |
  s2. | s4\f s2 | s2. | s4. s\cresc | s2. |
  s16 s\< s8 s4 s8 s\! | s s\> s2 | s4\f s2 | s2. | s2 s4\< |
  s4 s\! s | \mark \default \tempo "Très modéré" \time 4/2 s\breve | s1 \tempo "Rall." s1 |
  
  \time 4/4 \tempo "Bien moins lent" s1 | s8 \tempo "Poco rit." s4. s2 \breathe | \tempo "Plus lent" s4\pp s2. | s1 |
  \time 4/2 \tempo "Très modéré" s\breve | s1 \tempo "Rall." s | \time 4/4 \tempo "Bien moins lent" s2. s4\pp |
  s2 \tempo "Plus lent" s4 s\mf | s2 \breathe s | \time 3/4 s4 \mark \default \tempo "Bien soutenu" s2 |
  s2.*2 | s4 s2\< | s4\f s2 |
  
  \time 4/4 s2 s8 s\> s4 | s4\! s s8 s\> s4 | \time 3/4 s8\pp \tempo "Rall." s s2 | s4 \tempo "a Tempo" s2 |
  s2.*2 | s4 s\< s | s\f s2 |
  \mark \default  s4\pp s2 | s2.*2 | s2 s4\f |
  \time 4/4 s1*2 | s2 s8 s\> s4 | s4\! s s8 s\> s4 |
  
  s8\pp \tempo "Rall." s s2. | \time 3/4 \tempo "Un peu largement" s2. | s2 s8 s\longfermata | s2. | s2 s8 s\longfermata |
  \mark \default s4\f \tempo "En retenant" s2 | s2. | \tempo "Modéré" s2. | s2 s4^\markup{\italic {cresc. molto}} | s2. |
  s2. | s2\< s8 s\! | s2\> s4\! | s2 s4\pp | s2. |
  s2.*2 | \mark \default \tempo "Moins lent" s8 s\mf s s^\markup{\italic{cresc. molto}} s4 | s2 \breathe s4\f | s2. |
  
  s2. | s2 \tempo "En retenant" s4 | s2 s4\f | s2. | s4 s\dim s | s2. |
  s2. \bar "||" \tempo "a Tempo I^o" s4\ff s2 | s2.*3 \breathe |
  s2.*3 | \mark \default \tempo "Accel." s2.*2 |
  s2.*2 | s4\f s2 | s4\dim s2 | s4\p s2 | s2. \bar "|."
}

gloria_Tutti = { as4-^( ges-^) bes-^ | bes-^ ges-^ as-^ | as-^( ges-^) bes-^ | }



gloria_S = {
  des4.-^ des8-^ es4-^~ | es es8-^([ f]) des-^([ es]) | ges-^([ f es f des es]) | ges-^([ f es f des es]) | as-^([ ges f es]) ges-^([ f |
  es des]) f-^([ es]) des-^([ es]) | as,4-- as-- r |
}



quiTollis_S = {
  r r |
  R2. | r4 r c8--([ bes]) | d([ a]) a c c d | f4-- f,-- r |
}

nGSopran = \relative c'' {
  \Gglobal
  des4.-^ des8-^ es4-^~ | es es8-^([ f]) des-^([ es]) | ges-^([ f es f des es]) | ges-^([ f es f des es]) |
  as-^([ ges f es]) ges-^([ f | es des]) f-^([ es]) des-^([ es]) | bes2-^ bes4~ | bes8 r r4 r | R2. |
  R2.*3 | f4.-^ f8-^ f4-^~ | f r r |
  f4.-^ f8-^ f4-^~ | f r r | f'4.-^ f8-^ f4-^~ | f f8-^([ es]) es-^([ ges]) | ges-^([ f es f]) des-^([ es]) | es4-- es-- r |
  
  \gloria_S 
  es'--( des--) f-- | es-- bes-- as'-- | as--( f--) des-- |
  f2-^f4--~ | f2.~ | f8 r r4 r | r as, as | c2 f,4~ | f2~ f8 r | es'2.~ |
  es4 r es,\( | des'4. c8 c4~ | c\) r c--\((~ | c bes) bes~ | bes as ges! | f2. | f\) |
  
  r4 bes2~ | bes4 r bes\( | des4. bes8 bes4~ | bes2\) f'4--\((~ | f es) es~ | es des ces |
  bes2. | bes\) | R2. | \gloria_S
  %
  es'4--( des--) f-- | f-- des-- es-- | es--( des--) f-- | f--\(( des--) es~-- | es2~ es8\) r |
  
  \relative c'' \gloria_Tutti ges,4-^ as2~-^ | as4~ as8 r r4 |
  r4 r as\( | as4.( bes8) as4 | as2.~ | as4~ as8\) r as\( as | as( des4) bes8 as4 |
  as2.~ | as8\) r as4\( as | as( es') des | as2.~ |
  as4\) r8 as-- des-- es-- | ges2.--~( | ges8[ f]) es([ des]) es4~ | es2~ es8 r |
  
  es4.-- ces8 ces4 | es4.-- as,8 as4 | es'2-- ges,4~ | ges8 r ges4\( ces | bes2 bes4 |
  es4.-- bes8 es4--\) | f-^ f2-^~ | f4 r c--~\( | c4. d8 d4 | c-- c2\) |
  d--\( bes8([ f']) | f4 c2\) | d4-- f2-- | fis4 d a | fis'4. a,8 a4~ |
  a~ a8 r r4 | f!\breve~ | f2 r r1 |
  
  g4-- \repeat unfold 6 {g8-.} | g( a4) a8 a2 | des!2-- des-- | des4-- des2--~des8 r |
  f,\breve~ | f2 r r1 | ces'4--\( \repeat unfold 4 {ces8-.} c c |
  c4 c\) r f--~\( | \tuplet 3/2 {f4 c8} f4\) f--\( a,~ | a\) \quiTollis_S
  %
  
  f'4.-- f8-- f4-- e | e4. d8 c([ bes]) d4 | e8([ d] g2~ | g4) \relative c'' \quiTollis_S
  %
  d4.\( d8 d4 | c8 c c c bes bes | bes4 c2~ | c4\) r g8([ bes]) |
  c4 8 g bes4 g8 c | d4-- d~ d8 r r4 | f4.-- f8-- f4-- e | e4. d8 c([ bes]) d4 |
  
  e8([ d] g2~ g8) r | r4 r bes,8.-- d16 | d2--~ d8 r | r4 r c8.-- c16 | ges'!2--~ ges8 r |
  f,2.-^~ | f2. | f4\( bes g | c g2\) | g4\( c a |
  d8. c16 c2\) | a4 d8([ c]) c d | f4. a,8 a4~ | a8 r r4 des!4--~ | des des2-- |
  des4-- des2--~ | cis4~ cis8 r r4 | r8 a-- d([ a]) a([ c]) | c d d([ c]) a([ d]) | d4-^( c8) c-- d4-- |
  
  g4--( e --) d-- | f-^ a,2--~ | a4 r a-- | f'4.-^ as,8 as4~ | as as\( as | f'2 as,4~ |
  as2\) r4 | \gloria_S
  des4--\(( es-- ges-- | as-- f-- es-- |
  des-- c4.-- as8) | as2\) r4 | des2.-^~ | des2. | f2.~ | f2. |
}

dGSopran = {
  \Gglobal
  s4\f s2 | s2.*3 \breathe |
  s2.*5 |
  s2.*3 | s4\f s2 | s2. |
  s2.*2 | s4\f s2 | s2.*3 |
  
  s2.*5 |
  s2.*5 |
  s2.*7 |
  s2.*3 | s4\< s4. s8\! | s2.*3 |
  
  s2.*6 |
  s2.*5 |
  s2.*4 |
  s2.*6 |
  
  s2.*5 |
  s4^\markup{avec ferveur} s s^\markup{\dynamic pp \italic dolce} | s2.*3 | s4^\markup{\italic dolce} s2 |
  s2. | s4 s\mp s\cresc | s2.*2 |
  s4. s8\f\< s4 | s\! s2 | s2.*2 |
  
  s2.*5 |
  s2.*2 | s2 s4\p | s2.*2 |
  s2.*5 |
  s2. | s4\p s2. s1 | s\breve |
  
  s4\pp s\< s2 | s4. s8\! s2 | s1*2 |
  s\breve\pp | s | s8\pp s\< s2 s4\! |
  s1*2 | s2. |
  s2. | s2 s4\mf | s4\cresc s2 | s2. |
  
  s4\p\< s s\! s \breathe | s4\< s s\! s | s2.*2 |
  s2. | s2 s4\mf | s2.*2 |
  s2.*4 |
  s1*2 | s4\p\< s s\! s \breathe |  s4\< s s\! s |
  
  s1 | s4 s s\f | s2. | s2 s4\f | s2. |
  s4 s\> s| s4. s8\! s4 | s4^\markup{\dynamic p \italic {bien chanté}} s2 | s2.*2 |
  s2.*5 |
  s2.*5 |
  
  s2.*6 |
  s2.*5 |
  s2.*5 |
  s2.*6 |
}



tGSopran = \lyricmode {
  Glo -- ri -- a __ in __ ex -- cel -- sis __
  in __ ex -- cel -- sis __ De -- o __
  Glo -- ri -- a __
  Glo -- ri -- a __ Glo -- ri -- a __ in __ ex -- cel -- sis __ De -- o
  
  Glo -- ri -- a __ in __ ex -- cel -- sis __ in __ ex --
  cel -- sis __ De -- o Glo -- ri -- a in ex -- cel -- sis
  De -- o __ \tEtInTerra
  bo -- nae __ vo -- lun -- ta -- tis
  
  Pax __ ho -- mi -- ni -- bus __ bo -- nae __ vo -- lun --
  ta -- tis. Glo -- ri -- a __ in __ ex -- 
  cel -- sis __ in __ ex -- sel -- sis __
  De -- o Glo -- ri -- a in ex -- cel -- sis De -- o __
  
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  \keepWithTag #'s \tLaudamus
  %
  %
  
  \keepWithTag #'s \tGratias
  %
  %
  o __
  
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te, Je -- su Chris -- te __
  o __ Do -- mi -- ne De -- us, A -- gnus
  De -- i Fi -- li -- us Pa -- tris __
  Qui __ tol -- lis pec -- ca -- ta mun -- di,
  
  mi -- se -- re -- re mi -- se -- re -- re a __
  Qui __ tol -- lis pec -- ca -- ta mun -- di,
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram __ Qui __
  se -- des ad dex -- te -- ram Pa -- tris __ mi -- se -- re -- re mi -- se -- re -- re
  
  a __ Quo -- ni -- am __ Quo -- ni -- am __
  Tu __ Tu so -- lus sanc -- tus Tu so -- lus
  Do -- mi -- nus Tu so -- lus Al -- tis -- si -- mus __ Je -- su
  Chris -- te __ Cum Sanc -- to __ Spi -- ri -- tu __ in __ glo -- ri -- a
  
  De -- i Pa -- tris __ in glo -- ri -- a __ De -- i Pa -- tris __
  Glo -- ri -- a __ in __ ex -- cel -- sis __
  in __ ex -- cel -- sis __ De -- o A --
  men A -- men __
}


gloria_M = {
  as4.-^ as8-^ bes4-^~ | bes bes8-^([ c]) as-^([ bes]) | des-^([ c bes c as bes]) | des-^([ c bes c as bes]) | es-^([ des c bes]) des-^([ c |
  bes as]) c-^([ bes]) as-^([ bes]) | as4-- as-- r |
}

quiTollis_M = {
  r r |
  r r a'8--([ g]) | bes([ g]) g([ f]) bes([ g]) | bes([ f]) f g a bes | d4-- d,-- r |
}

nGMezzo = \relative c'' {
  \Gglobal
  R2.*4 |
  R2.*2 | bes4.-^ bes8-^ bes4-^~ | bes bes8-^([ c]) as-^([ bes]) | es-^([ des bes c as bes]) |
  es-^([ des bes c as bes]) | f'-^([ es c bes]) es-^([ des | c bes]) des-^([ c]) as-^([ bes]) | f2 f4~ | f r r |
  c'4.-^ c8-^ c4-^~ | c es8-^([ des]) des-^([ bes]) | c2-^ c4~ | c c bes | bes( des) bes | c-- c-- r |
  
  \gloria_M c--( bes--) des-- | as-- ges-- f'-- | f--( des--) bes-- |
  des2-^ des4--~ | des2.~ | des8 r r4 r | r as as | as2-- f4~ | f2~ f8 r | bes2.~ |
  bes4 r es,\( | as4. as8 as4~ | as\) r r | c,2( des4~ | des es2~ | es4 f2~ | f2.) |
  
  r4 g2~ | g4 r ges\( | ges4. f8 f4~ | f2\) r4 | f2. | f |
  f4( ges) es | es\( f2\) | R2. | \gloria_M
  %
  c4--( bes--) des-- | des-- bes-- c-- | c--( bes--) des-- | des--\(( bes--) c~-- | c2~ c8\) r |
  
  \gloria_Tutti ges4-^ ges2~-^ | ges4~ ges8 r r4 |
  r4 r ges\( | ges2 ges4 | ges2.~ | ges4~ ges8\) r ges\( ges | ges4. ges8 ges4 |
  ges2.~ | ges8\) r ges4\( ges | ges( bes) ges | ges2.~ |
  ges4\) r8 ges-- as-- bes-- | des2.--~( | des8[ c]) c([ bes]) c4~ | c2~ c8 r |
  
  ces4--\( as ges!\) | ces--\( ges f\) | ces'2-- es,4~ | es8 r es4\( f | ges( as) bes |
  c! bes c\) | a-^ a2-^~ | a4 r r | c\( bes a | g( f) e\) |
  d'8\(([ c bes a]) g([ f]) | d'4 g,2\) | a4-- a2-- | a4 fis fis | d'4. fis,8 fis4~ |
  fis~ fis8 r r4 | f1\( f2 f | f f f4-- f-- f2--~ |
  
  f2\) f | f1 | des2-- des-- | des4-- des2--~ des8 r |
  f\breve~ | f1~ f2 r | as4--\( \repeat unfold 4 {as8-.} a a |
  a4 a\) r d--~\( | \tuplet 3/2 {d4 c8} d4\) d--\( d,~ | d\) \quiTollis_M
  %
  
  d'4.-- d8 d4-- c | c4.-- bes8 a([ g]) bes4 | e,8\(([ d]) g2~ | g4\) \relative c' \quiTollis_M
  %
  d'4\(( c8) c bes4 | bes8 a a g g f | f4 c2~ | c4\) r g'8([ bes]) |
  c4 c8 g bes4 g8 c | d4-- d~ d8 r r4 | d4.-- d8-- d4-- c | c4. bes8 a([ g]) bes4 |
  
  e,8\(([ d]) g2~ g8\) r | r4 e8. bes'16 bes4~ | bes2~ bes8 r | r4 es,8. es16 c'4~ | c2~ c8 r |
  f,4.-^( es8) f4~( | f8[ es]) f([ es f es]) | f2.~ | f | f4\( g f |
  g8. a16 a2\) | f4 a8([ g]) g a | a4. f8 f4~ | f8 r r4 des4--~ | des des2-- |
  des4-- des2--~ | cis4~ cis8 r r4 | r8 a'8-- g([ f]) f([ g]) | g a a([ g]) a([ d,]) | a'4-^( g8) g-- a4-- |
  
  g--( e'--) d-- | d,-^ f2--~ | f4 r a-- | as4.-^ f8 f4~ | f f\( f | des'2 f,4~ |
  f2\) r4 | \gloria_M 
  ges4--\(( as-- bes-- | c-- bes-- as-- |
  ges-- es2--) | f2\) r4 | des'2.-^~( | des4 as2) | as2.~ | as2. | 
}

dGMezzo = {
  \Gglobal
  s2.*4 |
  s2.*2 | s4\f s2 | s2.*2 |
  s2. \breathe | s2.*4 |
  s4\f s2 | s2.*5 |
  
  s2.*5 |
  s2.*5 |
  s2.*7 |
  s2.*7 |
  
  s2.*6 |
  s2.*5 |
  s2.*4 |
  s2.*6 |
  
  s2.*5 |
  s4^\markup{avec ferveur} s s^\markup{\dynamic pp \italic dolce} | s2.*4 |
  s2. | s4 s\mp s\cresc | s2.*2 |
  s4. s8\f\< s4 | s\! s2 | s2.*2 |
  
  s2.*5 |
  s2.*3 | s4\p s2 | s2. |
  s2.*5 |
  s2. | s2^\markup{\dynamic mf \italic dolce} s s4 s\< s2 | s s\! \breathe s1 |
  
  s1*4 |
  s\breve\pp | s | s8\pp s\< s2 s4\! |
  s1*2 | s2. |
  s2 s8\mp s\cresc | s2.*3 |
  
  s4\p\< s s\! s \breathe | s4\< s s\! s | s2.*2 |
  s2 s8\mp s\cresc | s2.*3 |
  s2.*4 |
  s1*2 | s4\p\< s s\! s \breathe |  s4\< s s\! s |
  
  s1 | s4 s\f s | s2. | s4 s2\f | s2. |
  s2 s4\dim | s2. | s4\pp s2 | s2.*2 |
  s2.*5 |
  s2.*5 |
  
  s2.*6 |
  s2.*5 |
  s2.*5 |
  s2.*6 |
}

tGMezzo = \lyricmode {
  %
  Glo -- ri -- a __ in __ ex -- cel -- 
  sis __ in __ ex -- cel -- sis __ De -- o __
  Glo -- ri -- a __ in __ ex -- cel -- sis __ in ex -- cel -- sis De -- o
  
  Glo -- ri -- a __ in __ ex -- cel -- sis __ in __ ex -- 
  cel -- sis __ De -- o Glo -- ri -- a in ex -- cel -- sis
  De -- o __ \tEtInTerra
  a __
  
  Pax __ ho -- mi -- ni -- bus __ bo -- nae
  vo -- lun -- ta -- tis. Glo -- ri -- a __ in __ ex --
  cel -- sis __ in __ ex -- cel -- sis __
  De -- o Glo -- ri -- a in ex -- cel -- sis De -- o __
  
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  \keepWithTag #'m \tLaudamus
  %
  %
  
  \keepWithTag #'m \tGratias
  %
  %
  Do -- mi -- ne Fi -- li u -- ni -- ge --
  
  ni -- te, Je -- su Chris -- te __
  o __ Do -- mi -- ne De -- us, A -- gnus
  De -- i Fi -- li -- us Pa -- tris __
  Qui __ tol -- lis __ qui __ tol -- lis pec -- ca -- ta mun -- di,
  
  mi -- se -- re -- re mi -- se -- re -- re no -- bis __
  Qui __ tol -- lis __ qui __ tol -- lis pec -- ca -- ta mun -- di,
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram __ Qui __
  se -- des ad dex -- te -- ram Pa -- tris __ mi -- se -- re -- re mi -- se -- re -- re
  
  no -- bis __ Quo -- ni -- am __ Quo -- ni -- am __
  Tu __ so -- lus __ Tu __ Tu so -- lus
  Do -- mi -- nus Tu so -- lus Al -- tis -- si -- mus __ Je -- su
  Chris -- te __ Cum Sanc -- to __ Spi -- ri -- tu __ in __ glo -- ri a
  
  De -- i Pa -- tris __ in glo -- ri -- a __ De -- i Pa -- tris __
  Glo -- ri -- a __ in __ ex -- cel -- sis __
  in __ ex -- cel -- sis __ De -- o A --
  men A -- men __  
}


gloria_A = {
  des,4-^ ges-^ es-^ | bes'-^( as-^) ges-^ | es-^( as-^ ges-^) | es-^( as-^ ges-^) | bes,2-^ des4~-^ |
  des es-^ ges-^ | as-- as-- r |
}

quiTollis_A = {
  r e8--([ d]) |
  g([ e]) e([ d]) e([ d]) | f([ e]) e([ d]) g([ e]) | f([ d]) d e f g | bes4-- a-- r |
}

nGAlt = \relative c' {
  \Gglobal
  R2.*4 |
  R2.*5 |
  R2.*3 | f4.-^ f8-^ f4-^~ | f bes8-^([ as]) as-^([ f]) |
  f2-^ f4~( | f bes as) | f4.-^ f8-^ f4-^~ | f c' bes | es,( bes') ges | as-- as-- r |
  
  \gloria_A as--( ges--) bes-- | as-- es-- des'-- | des--( des,--) ges-- |
  as2-^ des,4--~ | des2.~ | des8 r r4 r | r as' as | f2-- f4~ | f2~ f8 r | g2.~ |
  g4 r es\( | f4. f8 f4~ | f\) r r | c2. | c | c4( es) des | des es2 |
  
  r4 es2~ | es4 r es\( | es4. des8 des4~ | des2\) f4--\((~ | f es) es~ | es des ces |
  bes2( des4) | des( bes2)\) | R2. | \relative c'' \gloria_A
  %
  as'4--( ges--) bes-- | bes-- ges-- as-- | as--( ges--) bes-- | bes--\(( ges--) as~-- | as2~ as8\) r |
  
  \gloria_Tutti ges4-^ ges2~-^ | ges4~ ges8 r r4 |
  R2. | r4  r bes,4--~\(( | bes8[ f']) f([ es]) es([ des]) | des( es4.~ es8)\) r | r4 r es--~\( |
  es8 f f des des([ es]) | es2~ es8\) r | r4 r bes\( | es8([ bes']) f([ es]) es([ des]) |
  des4( es2)\) | r8 des-- es-- as-- bes4--~( | bes8[ as]) as([ ges]) as4~ | as2~ as8 r |
  
  as4--\( f es\) | as--\( es des\) | as'2-- ces,4~ | ces8 r ces4\( des | es( f) ges |
  as ges as\) | f-^ f2-^~ | f4 r r | a\( g f | e( d) c\) |
  bes'8\(([ a g f]) e([ d]) | bes'4 e,2\) | f4-- d2-- | d4 d d | a'4. d,8 d4~ |
  d~ d8 r r4 | f!\breve~ | f1~ f2 r |
  
  es4-- \repeat unfold 6 {es8-.} | es( d4) d8 d2 | des2-- des-- | des4-- des2--~ des8 r |
  f1 f2 f | f f f4 f f2~ | f f4 f8 f |
  f4 f r a--~\( | \tuplet 3/2 {a4 f8} a4\) a--\( d,~ | d\) \quiTollis_A
  
  r4 a8 a c--([ a]) a4 | r g8-- g-- e4-- d | e8\(([ d]) g2~ | g4\) \quiTollis_A
  %
  d4\(( c8) c bes4 | bes8 a a g g f | f4 c2~ |c4\) r g'8([ bes]) |
  c4 c8 g bes4 g8 c,8 | d4-- d~ d8 r r4 | r4 a'8 a c--([ a]) a4 | r g8-- g e4-- d |
  
  e8\(([ d]) g2~ g8\) r | g8.-- e16 e2~ | e~ e8 r | bes'8.-- bes16 es,2~ | es~ es8 r |
  f4.-^( es8) f4~( | f8[ es]) f([ es f es]) | \repeat unfold 2 {f([ es])} f([ es | f es]) f([ es]) f([ es | f es]) f es f([ es]) |
  \repeat unfold 3 {f([ es])} | \repeat unfold 2 {f([ es])} es f | d\(([ g f]) d\) d4~ | d8 r r4 des4--~ | des des2-- |
  des4-- des2--~ | cis4~ cis8 r r4 | r8 a'-- g([ f]) d([ e]) | e f f([ e]) a([ d,]) | d4-^( c8) c-- d4-- |
  
  g4--( e--) d-- | d-^ d2--~ | d4 r a'-- | des,4.-^ des8 des4~ | des des\( des | as'2 des,4~ |
  des2\) r4 | \relative c'' \gloria_A
  bes--\(( c-- des-- | es-- des-- c-- |
  bes-- as2--) | des\) r4 | des'2.-^~( | des4 des,2) | des2.~ | des |
}

dGAlt = {
  \Gglobal
  s2.*4 |
  s2.*5 |
  s2.*3 | s4\f s2 | s2. |
  s2.*2 \breathe | s2.*4 |
  
  s2.*5 |
  s2.*5 |
  s2.*7 |
  s2.*7 |
  
  s2.*6 |
  s2.*5 |
  s2.*4 |
  s2.*6 |
  
  s2.*5 |
  s2. | s4 s s^\markup{\italic expressif} | s2.*3 |
  s2.*2 | s2 s4\mf\< | s16 s\! s8 s2 |
  s2. | s8 s\f s2 | s2.*2 | 
  
  s8 s^\markup{\italic {bien soutenu}} s2 | s2.*4 |
  s2.*3 | s4\p s2 | s2. |
  s2.*5 |
  s2. | s1 s2 s\> | s s\! s1 |
  
  s4\pp s\< s2 | s4. s8\! s2 | s1*2 |
  s2\mf s\< s1 | s2. s4\! \breathe s4\p s2. | s s4\pp |
  s1*2 | s2 s4\p |
  s\cresc s2 | s2.*3 |
  
  s4 s\< s\! s | s s\mf s2 | s2. | s2 s4\p |
  s\cresc s2 | s2.*3 |
  s2.*4 |
  s1*2 | s4 s\< s\! s | s s\mf s2 |
  
  s1 | s4\f s2 | s2. | s4\f s2 | s2. |
  s2 s4\dim | s2. | s4\pp s2 | s2.*2 |
  s2.*5 |
  s2.*5 |
  
  s2.*6 |
  s2.*5 |
  s2.*5 |
  s2.*6 |
}

tGAlt = \lyricmode {
  %
  %
  Glo -- ri -- a __ in __ ex --
  cel -- sis __ Glo -- ri -- a __ in ex -- cel -- sis De -- o
  
  Glo -- ri -- a in __ ex -- cel -- sis __ in ex --
  cel -- sis De -- o Glo -- ri -- a in ex -- cel -- sis
  De -- o __ \tEtInTerra
  bo -- nae vo -- lun -- ta -- tis
  
  Pax __ ho -- mi -- ni -- bus __ bo -- nae __ vo -- lun --
  ta -- tis. __ Glo -- ri -- a in __ ex --
  cel -- sis __ in ex -- cel -- sis
  De -- o Glo -- ri -- a in ex -- cel -- sis De -- o __
  
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  \keepWithTag #'a \tLaudamus
  %
  %
  
  \keepWithTag #'a \tGratias
  %
  %
  o __
  
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te, Je -- su Chris -- te __
  Do -- mi -- ne De -- us, A -- gnus De -- i A -- gnus
  De -- i Fi -- li -- us Pa -- tris __ Qui __
  tol -- lis __ qui __ tol -- lis __ qui __ tol -- lis pec -- ca -- ta mun -- di,
  
  mi -- se -- re -- re mi -- se -- re -- re no -- bis __ Qui __
  tol -- lis __ qui __ tol -- lis __ qui __ tol -- lis pec -- ca -- ta mun -- di,
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram __ Qui __
  se -- des ad dex -- te -- ram Pa -- tris __ mi -- se -- re -- re mi -- se -- re -- re
  
  no -- bis __ Quo -- ni -- am __ Quo -- ni -- am __
  Tu __ so -- lus __ Tu __ so -- lus __ sanc -- tus __ Tu so -- lus __
  Do -- mi -- nus __ Tu __ so -- lus Al -- tis -- si -- mus __ Je -- su
  Chris -- te __ Cum Sanc -- to __ Spi -- ri -- tu __ in __ glo -- ri -- a
  
  De -- i Pa -- tris __ in glo -- ri -- a __ De -- i Pa -- tris __
  Glo -- ri -- a in __ ex -- cel -- sis __
  in ex -- cel -- sis De -- o A --
  men A -- men __  
}


sGSopran = 
  \new Staff  = "zGSopran"
    \with {
      instrumentName = "Soprani"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGSopran
      { 
        \new Voice = "vGSopran" {\nGSopran}
      }

      \new Lyrics \lyricsto "vGSopran" {\tGSopran}
    >>
    
sGMezzo = 
  \new Staff  = "zGMezzo"
    \with {
      instrumentName = \markup{\right-column{"Mezzo-" "Soprani"}}
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGMezzo
      { 
        \new Voice = "vGMezzo" {\nGMezzo}
      }
      \new Lyrics \lyricsto "vGMezzo" {\tGMezzo}
    >>

sGAlt = 
  \new Staff  = "zGAlt"
    \with {
      instrumentName = "Contralti"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGAlt
      { 
        \new Voice = "vGAlt" {\nGAlt}
      }
      \new Lyrics \lyricsto "vGAlt" {\tGAlt}
    >>