# Neo's Journal

My online journal of things I've learnt.
Hopefully you find something on it useful.

## How to run it locally

Well, if for some reason you want to run it
locally, umm... here. The url is at `http://localhost:8000/`
or `http://[::1]:8000/`.

```bash
git clone --depth=1 -b sphinx_journal https://github.com/NeoSahadeo/journal
cd journal
```

You need to install the Python stuff.

```bash
python -m venv .venv
```

Make sure to add some source! This depends
on your operating system. Thankfully you
will only have to do this once.

```bash
source .venv/bin/[find you script]
```

```bash
pip install -r requirements.txt
```

And lastly, run the start script - creatively
named `start`.

```bash
./start.sh
```
