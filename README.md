# ta-lib-install

This sample app shows how to install [TA-lib](https://github.com/mrjbq7/ta-lib) within Deephaven.

## Components

- [`Dockerfile`](Dockerfile) - The Deephaven Dockerfile that extends `ghcr.io/deephaven/server` and installs the TA-lib dependencies.
- [`docker-compose.yml`](docker-compose.yml) - The Deephaven docker-compose file that uses the custom Docker image.
- [`setup.sh`](setup.sh) - A helper script that installs the TA-lib dependencies.
- [`start.sh`](start.sh) - A helper script that launches the application.

## Launch

To launch, simply run the following

```
sh start.sh
```

## Example TA-lib code

Once launched, you can go to [`localhost:10000`](localhost:10000) and run Python code that uses TA-lib.

```python
import numpy
import talib

close = numpy.random.random(100)

output = talib.SMA(close)
print(output)
```
