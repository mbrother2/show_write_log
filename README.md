# show_write_log
Simple sh script to show &amp; write log to file with color

# OS Support
- CentOS
- Debian
- Ubuntu
- Fedora

# How to use
### Options:
`-d` Show date

`-r` Show string with red color

`-g` Show string with green color

`-y` Show string with yellow color

`-w` Show string with white color

### Examples:
```
_main -d -r " 1" -g " 2" -y " 3" -w " 7"
```
![example1](https://image.prntscr.com/image/O0DzZpdcTkacaLJQ2BnfRQ.png)

```
_main -d -w " [" -r REMOVE -w "]" -w " Remove all disk space"
```
![exmaple2](https://image.prntscr.com/image/zM-iZo7HR-ygh2ofEd7ghg.png)

### Remember!!!
- Always use double quote around string
- Change LOG_FILE variable to your log path
