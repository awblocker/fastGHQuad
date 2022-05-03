## Test environments
* local OS X install, R 4.1.3
* Ubuntu 16.04.7 LTS (on travis-ci), R 4.0.2 and dev 2022-02-09 r81690
* win-builder (devel and release)

## R CMD check results

Status: OK

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

