# BDA - Buffer Delete All

This Vim plugin provides a simple command to reset the buffer list while preserving your window layout. It saves and then deletes all buffers except for a single no-name buffer. This ensures that your workspace remains unchanged.

## Features

- **Reset the buffer list**: Deletes all buffers except the current no-name buffer.
- **Preserve window layout**: Keeps your current window setup intact.
- **Single-command operation**: Use the `:Bda` command to perform the entire operation.

## Installation

To install this plugin, I suggest using a plugin manager like [vim-plug](https://github.com/junegunn/vim-plug), [Vundle](https://github.com/VundleVim/Vundle.vim), or [Pathogen](https://github.com/tpope/vim-pathogen).

### Using vim-plug:

```vim
Plug 'alexandermckay/bda'
```

## Commands

### `:Bda`

This is the only public command in the plugin. Running this command will:

1. Create a new no-name buffer.
2. Switch all windows to the no-name buffer.
3. Delete all other buffers that are currently listed.

### `:bda`

You can abbreviate the `:Bda` command to `:bda` (case-insensitive) to execute the same action.

## Private Functions

The following functions are internal to the plugin and use the `s:` convention to mark them as private. These are not meant to be called directly by the user.

- `s:CreateNoNameBuffer()`: Creates a new empty buffer.
- `s:StoreNoNameBufferNumber()`: Returns the buffer number of the current no-name buffer.
- `s:SwitchWindowsToNoNameBuffer(no_name_buffer_number)`: Switches all windows to the specified no-name buffer.
- `s:DeleteNamedBuffers(no_name_buffer_number)`: Deletes all listed buffers except for the specified no-name buffer.

## Example Usage

1. Open multiple files in Vim.
2. Run `:bda` to reset the buffer list while keeping your window layout intact.

## License

This plugin is licensed under the MIT License.
