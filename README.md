## montagu-dettl

Image for [montagu-imports](https://github.com/vimc/montagu-imports) and [annex-imports](https://github.com/vimc/annex-imports) with [dettl](https://github.com/vimc/dettl).

```
docker pull vimc/montagu-dettl:vimc-3452
```

Then mount your directory into the container, making sure that you set the user permissions correctly:

```
docker run -it --rm \
  -v ${PWD}:/import \
  -u $(id -u ${USER}):$(id -g ${USER}) \
  -w /import \
  vimc/montagu-dettl:vimc-3452 \
  <path>
```

where `<path>` is the path to your import within this directory.  Other options are available (see `--help`)
