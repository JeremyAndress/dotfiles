# Command line extension management

Set the root path for extensions.
```bash
code --extensions-dir <dir>
```

List the installed extensions.

```bash
code --list-extensions
```

Show versions of installed extensions, when using --list-extension.

```bash
code --show-versions
```

Installs an extension.

```bash
code --install-extension (<extension-id> | <extension-vsix-path>)
```

Uninstalls an extension.

```bash
code --uninstall-extension (<extension-id> | <extension-vsix-path>)
```
Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.   
    
```bash 
code --enable-proposed-api (<extension-id>)
```
    