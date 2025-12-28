\version "2.22.1"

global = {
  \key as \major
  \numericTimeSignature
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
}

dTutti = {
  \global
  \tempo "Andante sostenuto" \tag #'s { s1 | s\pp } \tag #'a \tag #'t \tag #'b { s1\pp | s } | s1 |
  s2. s4^\markup{\italic "poco cresc."} | s1 | s1\> | s2.\! \tag #'s \tag #'a \tag #'b { s4\cresc | s2 }
  \tag #'t { s4 | s s\cresc } s2 | s s\< | s4\! s\f s2 |
  
  s1*2 | s4 s2.\> | s1\p | s |
  s4 s2.\cresc | s1 | s\f | s |
  s2 \tag #'s \tag #'a \tag #'b { s2\ff } \tag #'t { s4 s\ff } | s1*3 \bar "|."
}

nSopran = \relative c'' {
  \global
  R1 | des2 c4 bes | as as g as |
  f2 f4 f | es4. es8 as4. as8 | bes2. bes4 | bes2.\fermata es,4 |
  c'4. c8 c8([ bes]) bes([ c]) | des4. des8 des4 c~ | c c f4. des8 |
  
  des4 as bes4. bes8 | as2 des->~ | des4 des, ges f | es2. es4 | f2. f4 |
  f4. f8 bes4 bes | es4. es8 \slurDashed f4.( f8) | es2( es4->) es4-> | es4.-> as,8 as4 g |
  as4.( as8) es'2~( | es2 f4) \slurSolid des8.([ f16]) | as4. es8 es4 es | as,1\fermata |
}

nAlt = \relative c' {
  \global
  c2 des4 es | \slurDashed f4( as2) \slurSolid g8([ f]) | es4 c es4. es8 |
  es2 des4 des8([ c]) | bes4. bes8 as4 es' | es( d~ d8[ c]) d4 | es2.\fermata es4 |
  as4. as8 as([ g]) g([ a]) | bes4. bes8 bes4 as~ | as ges f4. as8 |
  
  as4 f f ges8([ f]) | es2 des4.-> es8 | f2 des | des( c4) bes4 | bes( a2) es'4 |
  des4. des8 f4 es | es4. as8 \slurDashed as4.( as8) | bes2~ bes8([ as]) \slurSolid as([ g]) | f([ g as]) des c4 bes |
  \slurDashed as4.( as8) g([ es f g] | as2.) as4 | \slurSolid as8([ bes]) c([ des]) c4 bes | as1\fermata |
}

nTenor = \relative c' {
  \global
  as2 bes4 c | \slurDashed des( f) \slurSolid es( des) | c as bes es,8([ as]) |
  as2 as4 bes8([ as]) | g4. g8 es4. es8 | as2. f8([ bes]) | as4( g2\fermata) r4 |
  r es es'4. es8 | des8([ es]) f([ g]) f4.( f,8) | f4 as as4. f'8 |
  
  f4 des des es8([ des]) | des4( c) as4.-> ges8 | f4( as) ges( as) | bes2 c | c2. f,4 |
  bes4. bes8 as4 g!8([ bes]) | bes4 as8([ es']) \slurDashed es4( d) | \slurSolid g4.( f8) \slurDashed es4( des) | \slurSolid c8([ des es]) f es4 des |
  c2 r4 es~( | es8[ as g ges]) f4~( \tuplet 3/2 { f8[ es]) des } | c8([ des]) es([ f]) << {\voiceOne es4 es | es1\fermata |} \new Voice {\voiceTwo es4 des | c1\fermata |}>>
}

nBass = \relative c {
  \global
  as1 | as2. bes4 | c f es8([ des]) c4 |
  des2 des4. des8 | des4. des8 c4. c8 | f2 bes, | es2.\fermata es4 |
  as,8([ bes]) c([ as]) es'4 des8([ c]) | bes([ c]) des([ e]) f2 | f4 es! des4. des8 |
  
  des'4. c8 bes([ as]) ges4 | ges2 f4.-> es8 | des4.( c8) bes4( as) | ges2. ges'4 | f2. r4 |
  r bes, des4. des8 | c4. c8 \slurDashed bes4.( bes8) | es4( des') c bes | \slurSolid as8([ bes c]) des es4 es, |
  f8([ as g f]) es([ f es des]) | c([ as]) bes([ c]) des([ es]) f4 | es2. es4 | as1\fermata |
}
    