# set-env-action

Set environment name based on Git branch.

Returns `prod` if branch is `refs/heads/master`, otherwise a generated name based on the branch name.

## Inputs

N/A

## Outputs

### `env`

The environment name, which is a sanitized version of the current branch name.

The following operations are applied to branch names to get the environment name:

1. Make all characters lower case
1. Replace slashes (`/`) with dashes (`-`)
1. Replace underscores (`_`) with dashes (`-`)

## Example usage

### Set
```
- name: Set environment
  id: set_env
  uses: mechtron/github-actions-set-env@2.0.0
```

### Get
```
- name: Use environment
  run: echo ENV is $ENV
  env:
    ENV: ${{ steps.set_env.outputs.env }}
```
