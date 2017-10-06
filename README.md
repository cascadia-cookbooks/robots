# Robots.txt

`node['cas_robots']['allow']` = (boolean)

`node['cas_robots']['path']` = (string)
`node['cas_robots']['owner']` = (string)
`node['cas_robots']['group']` = (string)
`node['cas_robots']['mode']` = (string)

`node['cas_robots']['user_agents']` = (hash)

`node['cas_robots']['sitemaps']` = (hash)


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
        },
        sitemaps: {
            main: 'https://www.example.com/sitemap.xml',
            blog: 'https://www.example.com/blog/sitemap.xml'
        }
    }
})
```
