;; yDiff - a language-aware tool for comparing programs
;; Copyright (C) 2011 Yin Wang (yinwang0@gmail.com)

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.



(load "parse-scheme.ss")
(load "diff.ss")


(define *move-ratio* 0)
(define *move-size* 3)
(define *move-depth* 1000)
(define *move-iteration* 1000)
(define *min-frame-depth* 10000)
(define *min-frame-size* 3)
(define *max-string-len* 200)


(define *keywords*
  '(define defun lambda cond if else let let* let-values let*-values
     while for define-syntax syntax-rules))

(define *keyword-exchange* '())

(define *defs*
  '(define defun define-syntax))



;-----------------------------------------
(define diff-scheme
  (lambda (file1 file2)
    (diff file1 file2 parse-scheme)))



; (diff-scheme "diff-js.ss" "diff-cpp.ss")

