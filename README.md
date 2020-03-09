# rakudo

Rakudo built from [nxadm](https://nxadm.github.io/rakudo-pkg/) for debian:10, with some added love like `gcc`, `make`, `git`, and `curl`, which `zef` needs.

## Use

Make sure your `$HOME/*` directories already exist, otherwise docker will create them with root-only permissions.

```
docker run -it --rm $(id -u) \
    --workdir /work \
    --volume  $PWD:/work \
    --volume  $HOME/.raku:/home/raku/.raku \
    --volume  $HOME/.zef:/home/raku/.zef \
    --volume  $HOME/.perl6:/home/raku/.perl6 \
    benlittle6/rakudo
```

