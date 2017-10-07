# Robots.txt
Manages robots.txt files

## Supported Platforms
* CentOS 7
* Debian - Jessie 8
* Ubuntu - Xenial 16.04

## Attributes
`node['cas_robots'][(name)]['allow']` = (boolean) Default 'false'

`node['cas_robots'][(name)]['path']` = (string)
`node['cas_robots'][(name)]['owner']` = (string) Default 'root'
`node['cas_robots'][(name)]['group']` = (string) Default 'root'
`node['cas_robots'][(name)]['mode']` = (string) Default '0644'

`node['cas_robots'][(name)]['user_agents']` = (hash)

`node['cas_robots'][(name)]['sitemaps']` = (hash)

## Example

```
override_attributes({
    cas_robots: {
        shop: {
            allow: true,
            path: '/var/www/shop/',
            owner: 'www-data',
            group: 'www-data',
            mode: 0644,
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
                site: 'https://www.example.com/site/sitemap.xml'
            }
        },
        blog: {
            allow: false,
            path: '/var/www/blog/robots.txt',
            owner: 'www-data'
        } 
    }
})
```
