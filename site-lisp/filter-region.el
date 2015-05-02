;; replace specified region with output of 
;; a shell command against the content of the regon
(defun filter-region (start end command)
  (interactive 
   (let (string)
     (unless (mark)
       (error "The mark is not set now, so there is no region"))
     ;; Do this before calling region-beginning
     ;; and region-end, in case subprocess output
     ;; relocates them while we are in the minibuffer.
     (setq string (read-from-minibuffer "Shell command on region: "
					nil nil nil
					'shell-command-history))
     ;; call-interactively recognizes region-beginning and
     ;; region-end specially, leaving them in the history.
     (list (region-beginning) (region-end)  string)))
  (let (exit-status)
    ;; Replace specified region with output from command.
    (let ((swap (< start end)))
      (goto-char start)
      (push-mark (point) 'nomsg)
      (setq exit-status
	    ;; see describe-function
	    ;; error output is marged into standard output
	    (call-process-region start end shell-file-name t
				 (list t t)
				 nil shell-command-switch command))
      ;; swap the point and mark if necessary
      (and swap (exchange-point-and-mark)))
    exit-status))
