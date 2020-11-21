# _saas

An open source toolset for SaaS operations by Hofstadter.


### Development setup

Have the latest hof (a bit tenuous, so check on chat if you have issues)

Directory layout, if you are working on the modules in tandem.
Check to see if there are any replace directives in `cue.mods`.

```
work/
  _saas/

  # shortened, nested format for hofmods
  mods/    # "hofmod"
    model  # -"suffix
    client
    server
    ...
```

Commands when you change replaced modules:

```
# dev-todo, enable a watch flag / scripting option
# Revendor local modules (you need to do this if you change them)
#   (this will vendor go and cue, you add a language name as an arg to run only that one)
hof mod vendor

# Regenerate project implementation
hof gen
```

Per subcomponent build commands:

tbd...

