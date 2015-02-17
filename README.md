# NodeTranscoder
A lightweight, five-line (don't take this too seriously...) video transcoder service to be run as Docker container!

## How to run
First, build it using `docker build -t transcoder .`

Then, run it by using ``docker run -i -t --rm -p 8080:8080 -v `pwd`:/transcode transcoder``

##License

```
Copyright 2015 RWTH Aachen University

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
