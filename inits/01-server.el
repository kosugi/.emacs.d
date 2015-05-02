(require 'server)
(if (and window-system (not (server-running-p)))
    (server-start))
