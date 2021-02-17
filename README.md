# Tools for update user and email info for existing commits.

# Pre Requirements:
- git installed
- bash as shell

# Usage:
```
$ cd ~
$ git clone https://github.com/ElasticTunnel/git_tools.git
$ cd ~/your_git_repo/
$ ~/git_tools/scripts/get_authors.sh
```

 Git Member <41993419+gituser@users.noreply.github.com>

 Git Member <git.member@company.com>

```
$ ~/git_tools/scripts/fix_git_email_and_name.sh 41993419+gituser@users.noreply.github.com "Git Member" git.member@company.com "Git Member"
```

 Old name: Git Member

 Old email: 41993419+gituser@users.noreply.github.com

 Correct name: Git Member

 Correct email: git.member@company.com

 Rewrite c164bab6ab6945876ca5e6071405b192c738dd8f (3/5) (1 seconds passed, remaining 0 predicted)

 Ref 'refs/heads/main' was rewritten


```
$ ~/git_tools/scripts/get_authors.sh
```

 Git Member <git.member@company.com>


```
$ ~/git_tools/scripts/force_push.sh
```
