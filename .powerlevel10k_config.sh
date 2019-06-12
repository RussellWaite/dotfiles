# these worked - so we are good to go...
#POWERLEVEL9K_TIME_FOREGROUND='red'
#POWERLEVEL9K_TIME_BACKGROUND='blue'


$echo $POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS  ✔  328  09:08:24 
status root_indicator background_jobs history time
$echo $POWERLEVEL9K_LEFT_PROMPT_ELEMENTS   ✔  329  09:09:58 
context dir vcs


# use like this
# vcs 	            CLEAN, UNTRACKED, MODIFIED
# host 	            LOCAL, REMOTE
# user 	            DEFAULT, SUDO, ROOT
# context 	        DEFAULT, ROOT, SUDO, REMOTE, REMOTE_SUDO
# dir 	            HOME, HOME_SUBFOLDER, DEFAULT, ETC
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_<segment>_<state>_[BACKGROUND|FOREGROUND]=''

# prompt currently look like:
#(context dir vcs)               (status root_indicator background_jobs history time)

POWERLEVEL9K_TIME_FOREGROUND='plum1'
POWERLEVEL9K_TIME_BACKGROUND='grey11'

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='chartreuse1'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='grey15'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='lightcoral'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='navyblue'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='red1'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND='white'

# sudo runs for one operation - prompt doesn't change when typing it in and next prompt is back at my user... what is the point?
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='deeppink1'
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND='grey15'

# if I sudo su up - i lose the customer propmt anyway...
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='lightred'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='grey15'
# change these next!
