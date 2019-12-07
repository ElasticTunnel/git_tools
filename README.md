# Tools for update user and email info for existing commits.

If you have any suggestions you can contact us via our official site:

https://elastictunnel.com/

# Pre Requirements:
- git installed
- bash as shell

# Usage:

$ cd ~
$ git clone https://github.com/ElasticTunnel/git_tools.git
$ cd ~/your_git_repo/

$ ~/git_tools/scripts/get_authors.sh
Vladimir Yavdoshenko <41993419+vyavdoshenko@users.noreply.github.com>
Vladimir Yavdoshenko <v.yavdoshenko@elastictunnel.com>

$ ~/git_tools/scripts/fix_git_email_and_name.sh 41993419+vyavdoshenko@users.noreply.github.com "Vladimir Yavdoshenko" v.yavdoshenko@elastictunnel.com "Vladimir Yavdoshenko"
Old name: 41993419+vyavdoshenko@users.noreply.github.com
Old email: Vladimir Yavdoshenko
Correct name: v.yavdoshenko@elastictunnel.com
Correct email: Vladimir Yavdoshenko
Rewrite c164bab6ab6945876ca5e6071405b192c738dd8f (3/5) (1 seconds passed, remaining 0 predicted)
Ref 'refs/heads/master' was rewritten

$ ~/git_tools/scripts/force_push.sh

Clone your repo again and get list of authors
$ ~/git_tools/scripts/get_authors.sh
Vladimir Yavdoshenko <v.yavdoshenko@elastictunnel.com>

