(clack.util:namespace <% @var name %>.view.emb
  (:use :cl)
  (:import-from :<% @var name %>
                :config))

(cl-annot:enable-annot-syntax)

@export
(defun render (file params)
  (caveman.view.emb:render
   (merge-pathnames file
    (merge-pathnames
     (config :template-path)
     (config :application-root)))
   params))
