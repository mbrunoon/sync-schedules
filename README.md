# Sync Schedules 

As a user, I can block schedules between one app and sync to another app.
If you mark and block Feb 16 - Feb 19, it should save and block Feb 16 - Feb 19 on the second app.

## Checklist

- Create two rails apps (Alpha and Beta)
- A user can sign up on Alpha and Beta (use devise gem)
- If the same user (same email) access Alpha and marks and blocks dates on Alpha it should sync on Beta
- If the same user (same email) access Beta and marks and blocks dates on Beta it should sync on Alpha
- The calendar of other users should not be affected
- Alpha and Beta should have their own databases
- Alpha and Beta should have their own record of blocked dates

### Database ORM

User
- E-mail
- Password

Schedule: 
- Start Date
- End Date
- User (belongs-to)
