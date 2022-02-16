\version "2.22.1"

tCrucifixus = \lyricmode { Cru -- ci -- fi -- xus, }
tcrucifixus = \lyricmode { cru -- ci -- fi -- xus, }
tEtiamProNobisK = \lyricmode { cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, }
tEtiamProNobis = \lyricmode { cru -- ci -- fi -- xus e -- ti -- am pro no -- bis }
tSubPontio = \lyricmode { sub Pon -- ti -- o Pi -- la -- to }
tSubPontioK = \lyricmode { sub Pon -- ti -- o Pi -- la -- to, }
tPassusK = \lyricmode { pas -- sus et se -- pul -- tus est, }
tPassusP = \lyricmode { pas -- sus et se -- pul -- tus, et se -- pul -- tus est. }


tSopranI = \lyricmode {
  %
  \tCrucifixus
  
  \tEtiamProNobisK \tEtiamProNobis
  \tSubPontio
  
  pas --
  sus, \tPassusK
  
  \tPassusP
  %
}

tSopranII = \lyricmode {
  %
  \tCrucifixus
  
  \tEtiamProNobisK \tEtiamProNobisK pro
  no -- bis pas --
  
  sus, \tSubPontio
  pas -- sus, \tPassusK
  
  \tPassusP
  %
}

tAltI = \lyricmode {
  %
  \tCrucifixus \tcrucifixus
  
  \tEtiamProNobisK e -- ti -- am pro
  no -- bis \tSubPontio
  
  pas -- sus, \tSubPontio
  \tPassusK
  
  \tPassusP
  %
}

tAltII = \lyricmode {
  \tCrucifixus
  \tcrucifixus
  
  \tEtiamProNobisK e -- ti -- am pro
  no -- bis \tSubPontioK \tSubPontio
  
  pas -- sus, \tSubPontio
  \tPassusK
  
  \tPassusP
  %
}

tTenorI = \lyricmode {
  \tCrucifixus
  \tcrucifixus
  
  \tEtiamProNobisK \tEtiamProNobis
  \tSubPontioK \tSubPontioK
  
  \tSubPontioK \tSubPontioK \tSubPontio
  \tPassusK
  
   pas -- sus et se -- pul -- tus, et se -- pul --
   tus, et se -- pul -- tus est.
}

tTenorII = \lyricmode {
  \tCrucifixus
  __ \tcrucifixus
  
  \tEtiamProNobisK \tEtiamProNobis
  \tSubPontioK \tSubPontioK
  
  \tSubPontioK \tSubPontioK
  \tSubPontio \tPassusK
  
  \tPassusP
  %
}

tBassI = \lyricmode {
  \tCrucifixus __
  \tcrucifixus \tcrucifixus
  
  \tEtiamProNobisK \tEtiamProNobis
  \tSubPontioK \tSubPontioK
  
  \tSubPontio pas --
  sus, \tSubPontioK \tSubPontio \tPassusK
  
  \tPassusP
  %
}

tBassII = \lyricmode {
  \tCrucifixus
  \tcrucifixus
  
  \tEtiamProNobisK cru -- ci -- fi -- xus, \tEtiamProNobis
  \tSubPontioK
  
  \tSubPontioK \tSubPontio
  pas -- sus, \tPassusK
  
  \tPassusP
  %
}