mailboxes +bearden.io/INBOX

set from = "me@bearden.io"
set mbox = "+bearden.io/archive"
set postponed = "+bearden.io/drafts"
set spoolfile = "+bearden.io/INBOX"

set sendmail="/usr/local/bin/msmtp -a bearden.io"

set header_cache="~/.mail/cache/bearden.io/header"
set message_cachedir="~/.mail/cache/bearden.io/message"

macro index ga "<change-folder>=bearden.io/archive<enter>" "Go to all mail"
macro index gd "<change-folder>=bearden.io/drafts<enter>" "Go to drafts"
macro index gi "<change-folder>=bearden.io/INBOX<enter>" "Go to inbox"
macro index gs "<change-folder>=bearden.io/[Gmail].Starred<enter>" "Go to starred"
macro index gt "<change-folder>=bearden.io/trash<enter>" "Go to trash"
macro index,pager e "<save-message>=bearden.io/archive<enter>" "Archive"
macro index,pager d "<save-message>=bearden.io/trash<enter>" "Trash"