
# Sync Schedules 
As a user, I can block schedules between one app and sync to another app.
If you mark and block Feb 16 - Feb 19, it should save and block Feb 16 - Feb 19 on the second app.

## Checklist

:white_check_mark: Create two rails apps (Alpha and Beta) 

:white_check_mark: A user can sign up on Alpha and Beta (use devise gem)

:white_check_mark: If the same user (same email) access Alpha and marks and blocks dates on Alpha it should sync on Beta

:white_check_mark: If the same user (same email) access Beta and marks and blocks dates on Beta it should sync on Alpha

:white_check_mark: The calendar of other users should not be affected

:white_check_mark: Alpha and Beta should have their own databases

:white_check_mark: Alpha and Beta should have their own record of blocked dates

**Bonus**:

:white_check_mark:  The application can be synchronized between N servers (all independent, each with its own database)

:white_check_mark: Automated tests by RSpec

:white_check_mark: Helper showing the distance time in words of schedules

## Demo
Deployments were performed on free Heroku servers so the first access to them may take a few seconds.

:link: [**Server 00**: syncschedules-0-mbon.herokuapp.com](https://syncschedules-0-mbon.herokuapp.com/)
:link: [**Server 01**: syncschedules-1-mbon.herokuapp.com](https://syncschedules-1-mbon.herokuapp.com/)


