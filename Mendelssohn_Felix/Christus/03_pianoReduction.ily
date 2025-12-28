\version "2.22.00"

nRechts = \relative c' {
  \global
  % p 10
  \tuplet 3/2 {<es bes g>8( g <es bes g>} \tuplet 3/2 {g <es bes g> g)} \tuplet 3/2 {<es bes g>8( g <es bes g>} \tuplet 3/2 {g <es bes g> g)}|
  \repeat unfold 2 {\tuplet 3/2 {<es bes g>8( g <es bes g>} \tuplet 3/2 {g <es bes g> g)}}| 
  % auf 12/8 auf 4/4-Länge wechseln, um nicht immer Triolen schreiben zu müssen
  \override Staff.TimeSignature.stencil = ##f
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <es c as>^\markup{\italic simile}( as <es c as> as <es c as> as) <es bes g>( g <es bes g> f <es as,f> f) | 
    \repeat unfold 2 {<es bes g>8( g <es bes g> g <es bes g> g)}|
    
    \repeat unfold 2 {<es c g>8( g <es c g> g <es c g> g)} | 
    \repeat unfold 2 {<es c as>8( as <es c as> as <es c as> as)} | 
    \repeat unfold 2 {<es c a>8( a <es c a> a <es c a> a)} | 
    \repeat unfold 2 {<d, bes>( <f bes> <d bes> <f bes> <d bes> <f bes>)} | 
    <d bes>( <f bes> <d bes> <f bes> <d bes> <f bes>) <es bes>( <g bes> <es bes> <as bes> <d, bes> <as' bes>) |
    
    % p 11
    \repeat unfold 2 {<g es bes>( bes <g es bes> bes <g es bes> bes)} |
    <as es c>( c <as es c> c <as es c> c) <g es bes>( bes <g es bes> as <f es as,> as) |
    \repeat unfold 2 {<g es bes>( bes <g es bes> bes <g es bes> bes)} |
    \repeat unfold 2 {<g es c>( c <g es c> c <g es c> c)} |
    <as c,>( c <as c,> c <as c,> c) <as f c>( c <as f c> c <as f c> c) |
    
    \repeat unfold 2 {<as d, c>( c <as d, c> c <as d, c> c)} |
    <g d b>( b <g d b> b <g d b> b) <g es c>( c <g es c> d' <g, f d> d') |
    <g, es>( es' <g, es> g' g, g' <c, f,> f <c f,> es <c f,> es) | 
    <c f,>( d <c f,> d <c f, > d) <bes f>( d <bes f> d bes d) |
    bes( d bes <c e> bes <c e> bes <d f> bes <c g'> bes <c g'>) |
    
    % p 12
    c( bes c bes c bes c a c a c a) |
    <as d>( d, d' <as f d> d <as f d> c <as f d> c <as f d> bes <as f d>) |
    es'( <bes es,> es <bes es,> es <bes es,>) es( <a, es> es' <g, es> es' <g, es>) |
    es'( a, es' a, d a c g c f, bes f) |
    a( f a f bes f <a c> f <a c> f <bes d> f) |
    
    <a es'>( es <a es'> bes <d g> bes <c es f> f, <c' es f> f, <c' es f> f,) |
    <d' f>( f, <d' f> a <es' f> a, <bes f'> f <bes f'> f <bes f'> f) |
    <d' f>( g, <d' f> g, <c es> <bes d> <bes c> f <bes c> f <a c> f) |
  }
    \mark \default << {\voiceTwo \scaleDurations 2/3 { bes( <f d> bes,) bes'( <f d> bes,) d'( <bes f> d,) f'( <d bes> f,) | <bes es>( g <bes es> g <bes es> g) <bes d>( f <bes d> es, <bes' c> es,) | <bes' d>( f <bes d>) }}
                          \new Voice {\voiceOne bes4 bes d f | g4. g8 f4 es | f }
    >>
    \oneVoice
    \scaleDurations 2/3 {
      % p 13
      bes,8( d bes <d bes'> bes <d bes'> bes <d bes'> bes) |
      <es g bes>( bes <es g bes> bes <es g bes> bes) <f' as bes>( bes, <f' as bes> bes, <es g bes> bes) |
      <d f bes> bes,( <d f bes> bes \repeat unfold 3 {<d f bes> bes} <d f bes> bes) |
      <bes' des e>( \repeat unfold 5 {e, <bes' des e>} e,) |
      
      <bes' des e>( \repeat unfold 5 {e, <bes' des e>} e,) |
      <bes' des f>( \repeat unfold 5 {f <bes des f>} f) |
      <bes des f>( \repeat unfold 5 {f <bes des f>} f) |
      <bes des ges>( \repeat unfold 5 { ges <bes des ges>} ges) |
      
      % p 14
      <bes des ges>( \repeat unfold 5 {ges <bes des ges>} ges) |
      <es ges bes>( des <es ges bes> des <es ges bes> des) <es ges as>( c <es ges as> as, <c es as> as) |
      <des f as>( as <des f as> as <des f as> as) <des f as>( as <des f as> as <des f as> as) |
      <des ges bes>( bes <des ges bes> bes <des ges> bes) <des f>( as <des f>) ges,( <des' es> ges,) |
      
      <des' f>( as <des f>) <as des f>( f <as des f>) \repeat unfold 2 {<as des f> f <as des f>} |
      <des f bes>(bes <des f bes> bes <des f bes> bes) <des e g bes>( bes <des e g bes> bes <des e g bes> bes) |
      <f' as c>( \repeat unfold 2 {c <f as c>} c) <f as c>( \repeat unfold 2 {c <f as c>} c) |
      <e g bes>( des <e g bes> des <e g bes> des) <des as'>( c <des as'>) bes( <des g> bes) |
      
      % p 15
      \repeat unfold 2 {<c f as>( as <c f as> as <c f as> as)} |
      <f' as des>( des <f as des> des <f as des> des) <e g bes des>( des <e g bes des> des <e g bes des> des) |
      \mark \default \repeat unfold 2 {<es as c>( c <es as c> c <es as c> c)} |
      <c' es>( ges <c es> ges <c es> ges) <c es>( f, <c' es>) es,( <ges c es> es) |
      
      \repeat unfold 2 {<ges bes es>( es <ges bes es> es <ges bes es> es)} |
      <a es' ges>( ges <a es' ges> ges <a es' ges> ges) <a es' f>( f <a es' f>) ges( <a es'> ges) |
      \repeat unfold 2 {<ges a es'>( es <ges a es'> es <ges a es'> es)} |
      <ges bes es>( es <ges bes es> es <ges bes es> es) <f ces' es>( es <f ces' es> es <f ces' es> es) |
      
      % p 16
      <bes' es ges>( ges <bes es ges> ges <bes es ges> ges) <f as d>( d <f as d> d <f as d> d) |
      <ges bes es>( es <ges bes es> es <ges bes es> es) <f ces'>( d <f ces'> d <f ces'> d) |
      <f bes>( d <f bes> d <f bes> d)  <es bes'>( bes <es bes'> bes <es bes'> bes) |
      <es as>( ces <es as> ces <es as> ces)  <d as'>( bes <d as'> bes <d as'> bes) |
      
      <es ges>( bes <es ges> bes <es ges> bes) <des fes ges>( ges, <des' fes ges> ges, <des' fes ges> ges,) |
      <ces es ges>( ges <ces es ges> ges <ces es ges> ges) <bes es ges>( ges <bes es ges> ges <bes es ges> ges) |
      <c'! es f>( \repeat unfold 5 {f, <c' es f>} f,) |
      <c' es f>( \repeat unfold 5 {f, <c' es f>} f,) |
    }
    
    % p 17 & 18
    <<
      {\voiceOne <ces' es>1 | <bes d>1 | \oneVoice r4 \voiceOne es,( g bes | c2) bes4 as |
      s2 es'2 | \voiceTwo c2 bes4 as | s1 | \voiceOne es'4 es g bes |
      
      % p 18 / Voice 1
      c2 bes4 a | es'4 bes as g | g2 f | \mark \default es4 es g bes |
      c2 bes4 a | bes g f es | s1 |}
      \new Voice {
        \voiceTwo ces4( f, as ces) | s1 | s1 | \scaleDurations 2/3 {es,8( c es c es c) d( es d c es c) |}
        bes'4 es,( g) bes | \scaleDurations 2/3 {\voiceOne es8( es, es' es, es' es,) es'8( es, es' es, es' es,) | \oneVoice \repeat unfold 2 {<g bes es>( es <g bes es> es <g bes es> es)}| \voiceTwo es'( es, a es' a, es) g'( bes, es) g( es bes)
        
        % p 18 / Voice 2
        <es f>( c <es f> c <es f> c) <es f>( bes <es f>) a,( <es' f> a,) |
        es''( g, es) g( es bes) f'( bes, as) es'( bes g) |
        <bes es>( g <bes es> g <bes es> g) <bes d>( as <bes d> as <bes d> as) |
        \mark \default es'( es, g c g es) es'(c g) g'( es c) |
        
        <es f>( c <es f> c <es f> c) <es f>( bes <es f>) a,( <bes' f> a,) |
        g'( bes, es g bes, g) as( bes as g bes g) |
        \oneVoice d'( as d <c as> d <c as> d <bes g> d <as f> d <as f>) |}
     }
    >>
    % p 18 / oneVoice
    \oneVoice <es g es'>4 <d es bes'>2 <c es as>4 | <bes es g>2 <as bes d f> |
    
    % p 19
    \scaleDurations 2/3 {
      \clef bass <g bes es>8( \repeat unfold 5 {es <g bes es>} es) |
      <g bes es>( es <g bes es> es <g bes es> es \scaleDurations 3/2 {<g bes es>4) r | R1*3 |} 
      \clef violin <d' f bes>8( bes <d f bes> bes <d f bes> bes) <d f bes>( bes <d f bes> bes <d f bes> bes) |
      
      <d f bes>( bes <d f bes> bes <d f bes> bes) <d f bes>( bes <d f bes> bes <d f bes> bes) |
      <es as c>( c <es as c> c <es as c> c) <f bes d>( d <f bes d> d <f bes d> d) |
      <bes' es>( es, <bes' es> es, <bes' es> es,) <f bes d>( d <f bes d> d <f bes d> d) |
      <g bes c>( c, <g' bes c> c, <g' bes c> c,) <f as! c>( c <f as c> c <f as c> c) |
    
      % p 20
      <f as bes>( \repeat unfold 5 { bes, <f' as bes>} bes,) |
      <f' as bes>( bes, <f' as bes> bes, <f' as bes> bes, \scaleDurations 3/2 {<es g bes>4) r | R1*4 |}
      \mark \default <f as bes>8( bes, <f' as bes> bes, <f' as bes> bes,) <f' as bes>( bes, <f' as bes> bes, <f' as bes> bes,) |
      
      <es g>( g, <bes es g> g <bes es g> g) <bes es g>( g <bes es g> g <bes es g> g) |
      <es'f bes>( bes <es f bes> bes <es f bes> bes) <d f bes>( bes <d f bes> bes <d f bes> bes) |
      <es g>( g, \repeat unfold 4 {<bes es g> g} <bes es g> g) |
      \scaleDurations 3/2 {<as es' as>2 <bes es g>} |
      <bes d f>8( f <bes d f> f <bes d f> f) <bes es g>( g <bes es g> g <bes es g> g) |
      
      % p 21
      \scaleDurations 3/2 {<as es' as>2 <bes es g>} |
      <bes f'>8( as <bes f'> as <bes f'> as) <bes es g>( g <bes es g> g <bes es g> g) |
      \scaleDurations 3/2 {<d' as'>2 <bes es g> | <<{\voiceOne f'1}\new Voice {\voiceTwo <f c>2( <d b>)}>>}
      \oneVoice \clef bass <g, c es>8( \repeat unfold 5 { es <g c es>} es |
      \scaleDurations 3/2 {<g c es>4) r4 r2 | R1*3 |}
      
      \scaleDurations 3/2 {
        \clef violin r4 es''4~ <es g> <bes g' bes> | <c as' c>4. <c as' c>8 <bes g' bes>4 <as as'> | <bes g' bes>
        <<
          {\voiceOne s4 es2~ | es1~ | es4}
          \new Voice {\oneVoice es,4( \voiceTwo g) <g bes> | <as c>4. <as c>8 <g bes>4 as | <g bes>}
        >>
        \oneVoice
      }
      
      <es bes g>8( g <es bes> bes' <g es> bes <g es> bes g) |
      es'( <bes g> es <bes g> es <bes g> g' <es bes g> g <es bes g> g <es bes>) |
      bes'( <g es bes> bes <g es bes> bes <g es> bes <g es> bes <g es> bes <g~ es~>) |
      \scaleDurations 3/2 {<es g es'>2 <es g bes es> |  <es g bes es>1\fermata} \bar "|."
    }
}

nLinks = \relative c {
  \global
  % p 10
  \repeat unfold 5 {<es es,>1 |}
  <f f,> | <f, f,> | \repeat unfold 2 {<bes bes,> |}
  
  % p 11
  <es, es,> | <es' es,> | \repeat unfold 2 { <es es,> |} <f f,> |
  <f f,> | <f, f,>4 <f' f,> <es es,> <d d,> | <c c,> <bes bes,> <a a,>2 | <bes bes,>4 bes' d f | g4. g8 f4 e |
  
  % p 12
  f1~ | f4 bes,, d f | g4. g8 f4 es | <<{\voiceTwo f2 f~ | f4} \new Voice {\voiceOne c'4 d es d | <c es>}>> \oneVoice <f, bes d>4 es d |
  c bes a2 | bes4 c <<{\voiceTwo d2 | es f |} \new Voice {\voiceOne r4 d' | bes( c8 d es2) |}>> \oneVoice \mark \default <bes, bes,>1 | <bes bes,> |
  
  % p 13
  <bes bes,>4 bes' <d bes> <f d bes> | <g es bes>4. <g es bes>8 <f d bes>4 <es bes> | <f d bes>4 bes,, bes bes | <g g'>2 <g g'>2~ |
  \repeat unfold 4 {<g g'>4} | <f f'>2 <f f'>~ | <f f'>4 r r2 | <es' ges bes des>2 <es ges bes des> |
  
  % p 14
  <es es,>2 <es es,> | <as, as,>2. <ges ges,>4 | <f f,>1 | <ges ges,>1 |
  \repeat unfold 4 {<des des'>4} | <bes bes'>4. <bes bes'>8 <bes bes'>4 <bes bes'> | <f f'>1 | <bes bes'>1 |
  
  % p 15
  <f' f'>4 \repeat unfold 3 {<f f'>} | <des des'>4. <des des'>8 <des des'>4 <des des'> | \mark \default <as as'>2 <as as'>4 <as as'> | <a a'>2. <a a'>4 |
  <bes bes'>2. <bes bes'>4 | <c c'>2 <c c'> | <ces ces'>2. <ces ces'>4 | <bes bes'>2 <as! as'!> |

  % p 16
  <bes bes'> <bes' ces'> | <bes bes'> <bes as'> | <bes ges'> <bes ges'> | <bes f'> bes |
  <es es,> <bes bes,> | <ces ces,> <bes bes,> | % letzte zwei Takte in % p 17 mit bei
  
  % p 17 (+ letzte zwei 16)
  <<
    {\voiceTwo 
     a,1~ | a |
     
     as'~ | as | g | as |
     es' | es~ | es4
    }
    
    \new Voice {
      \voiceOne
      r4 f,( a c | es f a c) |
      \scaleDurations 2/3 {
        <ces, es>8( f <ces es> f <ces es> f) <ces es >8( f <ces es> f <ces es> f) |
        \repeat unfold 2 {<d bes>( f <d bes> f <d bes> f)} |
        <es bes>( \repeat unfold 5{g <es bes>} g) |
        es( as es as es as)} es2 | 
        
        \scaleDurations 2/3 { \repeat unfold 2 {g8( bes g bes g bes)}}
        as2 bes4 c |
        g
    }
  >>
  \oneVoice
  <es es,>4 <g g,> <bes bes,> | <c c,>4. <c c,>8 <bes bes,>4 <bes bes,> |
  
  % p 18
  <a a,>4. <a a,>8 <bes bes,>4 <c c,> | <<{\voiceOne bes4 bes d, es |} \new Voice {\voiceTwo bes1 |}>> \oneVoice bes2 <bes bes,>2 | \mark \default <c c,> <c' c,>4 <bes bes,> |
  <a a,>4. <a a,>8 <bes bes,>4 <c c,> | <bes bes,> bes <bes d> <bes es> | <bes f'>2 <bes, bes,> | <c c,>4 <g g,> <as as,>2 | <bes bes,>1 |
  
  % p 19
  es,1~ | es2. r4 | R1*3 | <bes' bes,>1~ |
  <bes bes,>2 <bes bes,> | <as as,> <as as,> | <g g,> <f' f,> | <es es,> <f f,> |
  
  % p 20
  <d d,>1~ | <d d,>2 r | R1*4 | \mark \default <d d,>1 |
  <es es,> | <bes bes,> | <es, es,> | <c' c,>2 <bes bes,>2 | <as as,> <g g,> |
  
  % p 21
  <c c,> <bes bes,> | <d d,> <es es,> | <f f,> <g g,> | <as as,> <g g,> | <c, c,>1~ | <c c,>4 r4 r2 | R1*3 |
  
  <<
    {\voiceTwo es1 | es | es | es |}
    \new Voice {
      \voiceOne
      \scaleDurations 2/3 {
        <bes' g>8( es <bes g> es <bes g> es) <bes g>( es <bes g> es <bes g> es) |
        <c as>( es <c as> es <c as> es) <bes g>( es <bes g> es <c as> es) |
        g,( \repeat unfold 5 { bes g} bes) |
        as( c as c as c g bes g c as c) |
      }
    }
  >>
  \oneVoice
  <bes g es>4 <es, es,> g bes | es <g, es bes> <bes g es> <es bes g> | \clef violin <g es bes> es~ <es g> <es g bes> | <es g bes>2 <es g bes> | <es g bes>1\fermata \bar "|."
}

dKlavierauszug = \new Dynamics {
  \global
  % p 10, 11
  s1\p | \repeat unfold 26 {s1} | 
  
  % p 12
  s1\f | s | 
  
  % p 13
  s | s1\sf | s4 s2.\f | s1\sf | 
  s | s\sf | s | s | 
  
  % p 14
  s | s2. s4\f | s1\sf | s\sf | 
  s4 s2.\sf | s1\f | s |s \sf |
  
  % p 15
  s | s | s | s\sf |
  \repeat unfold 4 {s |}
  
  % p 16
  \repeat unfold 4 {s |}
  s\sf | s | s\sf | s |
  
  % p 17
  s\sf | s\dim | s4 s2.\p | s1 |
  s2 s2\cresc | s1 | s4 s2.\f | s1 |
  
  % p 18
  s1 | s4 s2.\dim | s1 | s2\p s2\cresc |
  s1\f | s | s | s4 s2.\dim | s1 |
  
  % p 19
  s1\p | s1*4 | s1\p |
  s | s\cresc | s | s\< |
  
  % p 20
  s\> | s2 s2\! | s1*4 | s1\f |
  s1*3 | s1\p | s |
  
  % p 21
  s\cresc | s | s\cresc | s | s4\f s2.\> | s1\! | s | s |
  s | s\p | s1*3 |
  s1 | s\< | s\> | s\! | s \bar "|."
}