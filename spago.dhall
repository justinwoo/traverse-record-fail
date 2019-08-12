{ name =
    "my-project"
, dependencies =
    [ "console", "effect", "foldable-traversable", "psci-support", "record" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
