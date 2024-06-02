\version "2.22.1"

tMiserK = \lyricmode { mi -- se -- ri -- cor -- di -- as Do -- mi -- ni, }
tMiser = \lyricmode { mi -- se -- ri -- cor -- di -- as Do -- mi -- ni }
tInAeK = \lyricmode { in ae -- ter -- num can -- ta -- bo, }
tInAeP = \lyricmode { in ae -- ter -- num can -- ta -- bo. }


tTutti = \lyricmode {
  Mi -- se -- ri -- cor -- di -- as Do -- mi -- ni, \tag #'aI \tag #'aII { \tMiserK }
  
  \tMiser
  
  \tInAeK \tInAeK \tag #'bI \tag #'bII { can -- ta -- bo, }
  
  \tag #'sI \tag #'aI \tag #'sII \tag #'aII \tag #'tII \tag #'bII {\tInAeK} \tag #'tI {\repeat unfold 2 {\tInAeK}} \tInAeP
  
  Mi -- se -- ri -- cor -- di -- as Do -- mi -- ni \tag #'sI \tag #'sII \tag #'tII {\repeat unfold 2 {\tInAeK} in ae -- ter -- num, } \tag #'aI \tag #'bI \tag #'aII \tag #'bII {\tInAeK in ae -- ter -- num, } \tag #'tI {\repeat unfold 2 {\tInAeK}}
  
  \repeat unfold 2 {\tInAeK} can -- ta -- bo.
}