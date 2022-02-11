
To list device: xinput


`xinput | grep stylus`
`xinput | grep stylus | cut -d'=' -f2- | cut -d'[' -f1-1`

To get screen: `xrandr`