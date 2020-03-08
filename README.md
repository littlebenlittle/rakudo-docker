# rakudo

Rakudo built from (nxadm)[https://nxadm.github.io/rakudo-pkg/] for debian:10.

## Use

```
docker run -it --rm $(id -u) \
    --workdir /work \
    --volume  $PWD:/work \
    --volume  $HOME/.raku:/home/raku/.raku \
    --volume  $HOME/.zef:/home/raku/.zef \
    --volume  $HOME/.perl6:/home/raku/.perl6 \
    benlittle6/rakudo
```

