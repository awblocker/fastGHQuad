## Test environments
* local OS X install, R 3.5.1
* ubuntu 12.04 (on travis-ci), R 3.5.1
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Reverse dependencies

* I have run R CMD check on the 8 downstream dependencies.
  
* These showed no errors and several warnings, all of which appear unrelated to
  these changes:

Checked irtreliability: 0 errors | 0 warnings | 0 notes
Checked metaplus      : 0 errors | 0 warnings | 0 notes
Checked mixAK         : 0 errors | 1 warning  | 1 note 
Checked MultiGHQuad   : 0 errors | 0 warnings | 0 notes
Checked nlmixr        : 0 errors | 1 warning  | 0 notes
Checked randomLCA     : 0 errors | 1 warning  | 0 notes
Checked robmixglm     : 0 errors | 1 warning  | 0 notes
Checked robustlmm     : 0 errors | 2 warnings | 0 notes

