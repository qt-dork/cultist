# getstatusself()
## Description
Check to see how much of a certain status a target have. Returns an int. When used on statuses that stack, returns the amount of status you have. When used on statuses that don't stack, returns a 1 if you have it, and a 0 if you don't.

## Usage
`getstatus(STATUSNAME);`

### Self Version
`getstatusself(STATUSNAME);`
> This checks the person using the equipment instead of the opponent.

### Status Name
The name of the status you're checking to see if the you have. Use all caps for existing statuses, and surround it in quotes (tildas in .csv) for custom statuses.