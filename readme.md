# Dockerized visual css tester

Simply provide a full functionnal casperJS/phantomJS pre-configured to run visual-css-tester node projects

## HOW TO BUILD : 
```
docker build <<image-name>> .
```

## HOW TO USE : 

On your project directory (follow the project sample as example : [https://github.com/ssavajols/visual-css-tester](https://github.com/ssavajols/visual-css-tester))

```
docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) <<image-name>>
```

Also can be used with the built image form docker hub :

```
docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) ssavajols/visual-css-tester 
docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) ssavajols/visual-css-tester node tester-file.js
```


## Applications :<br /> 
phantomJS@1.8.2<br />
casperJS@1.0.4<br />
nodejs@0.10.25<br />
npm@1.3.10<br />
python@2.7.5<br />
visual-css-tester@1.0.3 // could be overrided by node module app

## CONTRIBUTES :

Open source project
Some pull requests are welcome ;)


## LICENSE MIT :

Copyright (c) 2015 : Savajols Sylvain

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
