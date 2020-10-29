# set-env-action

Set environment name based on Git branch.

Returns `prod` if branch is `refs/heads/master` else `test`.

## Inputs

N/A

## Outputs

### `env`

The computed environment name

## Example usage

### Set
```
- name: Set environment
  id: set_env
  uses: mechtron/github-actions-set-env@1.0.0
```

### Get
```
- name: Use environment
  run: echo ENV is $ENV
  env:
    ENV: ${{ steps.set_env.outputs.env }}
```
