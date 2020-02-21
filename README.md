## montagu-dettl

Image for [montagu-imports](https://github.com/vimc/montagu-imports) and [annex-imports](https://github.com/vimc/annex-imports) with [dettl](https://github.com/vimc/dettl).

```
docker pull vimc/montagu-dettl:master
```

Then mount your directory into the container, making sure that you set the user permissions correctly:

```
docker run --rm \
  -v ${PWD}:/import \
  -u $(id -u ${USER}):$(id -g ${USER}) \
  -w /import \
  vimc/montagu-dettl:master \
  <path>
```

where `<path>` is the path to your import within this directory.  Other options are available (see `--help`)

```
docker run --rm vimc/montagu-dettl:master --help
```
```
Usage:
  dettl [options] <path>

Options:
  --db-name=NAME     Name of the database to use
  --comment=COMMENT  Comment to add with the import
  --dry-run          Do the dry run only
  --force            Allow dirty git
  --root=PATH        Path to dettl root
```

(note that here `PATH` is the path in the container).
