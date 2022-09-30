# bb.crimsontome.com

> very lightweight site built with [bashblog](https://github.com/cfenollosa/bashblog/) and containerised with Docker

## System requirements

- Bash shell

## Development

steps here

## Building

### Bash

```
❯ ./bb.sh
BashBlog v2.10
Usage: ./bb.sh command [filename]

Commands:
    post [-html] [filename] insert a new blog post, or the filename of a draft to continue editing it
                            it tries to use markdown by default, and falls back to HTML if it's not available.
                            use '-html' to override it and edit the post as HTML even when markdown is available
    edit [-n|-f] [filename] edit an already published .html or .md file. **NEVER** edit manually a published .html file,
                            always use this function as it keeps internal data and rebuilds the blog
                            use '-n' to give the file a new name, if title was changed
                            use '-f' to edit full html file, instead of just text part (also preserves name)
    delete [filename]       deletes the post and rebuilds the blog
    rebuild                 regenerates all the pages and posts, preserving the content of the entries
    reset                   deletes everything except this script. Use with a lot of caution and back up first!
    list                    list all posts
    tags [-n]               list all tags in alphabetical order
                            use '-n' to sort list by number of posts

For more information please open ./bb.sh in a code editor and read the header and comments

```

- run `./bb.sh rebuild after making a post or change`

### Docker

`sudo docker build -t bb .`

Dockerfile

```dockerfile
FROM nginx:alpine
COPY . .

COPY ./ /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
```

## Contributing

Add contributing guidelines

## License and Credits

bb.crimsontome.com is licensed under the Apache 2.0. The full license text is included in the [LICENSE](LICENSE.md) file in this repository. Tldr legal have a [great summary](https://tldrlegal.com/license/apache-license-2.0-(apache-2.0)) of the license if you're interested.

bashblog was created by [cfenollosa](https://cfenollosa.com/blog/index.html), the repo is [here](https://github.com/cfenollosa/bashblog/)
