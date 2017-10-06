# Robots.txt

`node['cas_robots']['allow']` = (boolean)

`node['cas_robots']['path']` = (string)
`node['cas_robots']['owner']` = (string)
`node['cas_robots']['group']` = (string)
`node['cas_robots']['mode']` = (string)

`node['cas_robots']['user_agents']` = (hash)


```
override_attributes({
    cas_robots: {
        allow: true,
        path: '/var/www/website/',
        owner: 'www-data',
        group: 'www-data',
        mode: '644',
        user_agents: {
            'Google': [
                '/cgi-bin/',
                '/tmp/',
                '/secret.html'
            ],
            '*': [
                '/'
            ]
        }
    }
})
```
