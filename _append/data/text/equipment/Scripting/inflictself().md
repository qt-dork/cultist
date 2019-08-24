# inflictself()
## Description
Inflict a status on yourself.

## Usage
`inflictself(STATUSNAME, amount);`
> Note: Use | (pipes) instead of commas in equipment.csv, they automatically convert to commas when loaded.

### STATUSNAME
The name of the status you're inflicting. Use all caps for existing statuses, and surround it in quotes (tildas in .csv) for custom statuses

### Amount
The amount you want to inflict. Not applicable on statuses that don't stack. You can do math using variables and call functions in the amount section.