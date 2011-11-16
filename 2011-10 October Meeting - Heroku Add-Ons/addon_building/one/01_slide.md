!SLIDE 
# Add-Ons
## From inception to implementation
![Heroku](logo.png)

!SLIDE 
# Me

* Chris Continanza
* Add-Ons team @ Heroku
* github.com/csquared
* @em_csquared 

!SLIDE 
# Add-Ons

!SLIDE transition=fade
# Cloud Services

!SLIDE 
# Service
### Addressable process that performs work

* Redis
* Email
* Memcached

!SLIDE
# Service
### Addressable process that performs work

* speak via network protocols
* always available

!SLIDE 
# Cloud
### Where the process lives

* hosted by provider
* dynamically (de)provisioned
* specialization

!SLIDE bullets incremental 

#Add-Ons are 
#cloud services that:

* Heroku users can automatically provision.
* providers (you) can automatically create

!SLIDE center
# Cloud Services
![how](how-overview.png)

!SLIDE 
# Standards

"URLs are uniform. Use them to locate your resources."

-Adam Wiggins

!SLIDE 
# URLs

`protocol://user:password@host.tld/path?foo=bar`

!SLIDE 
#URLs
## `protocol://user:password@host.tld/path`

* who   - user & password
* what  - path & params
* where - domain
* how   - protocal
* when - always

!SLIDE 
# Becoming a Provider

!SLIDE bullets incremental
#6,000 ft view:

* Build it
* Publish it
* Use it 

!SLIDE bullets incremental transition=fade
#How it works:

* Step 1 - Build it
* Step 2 - Publish it
* Step 3 - <del>Use it</del> Profit! 

!SLIDE 
#How it works:

* Build - the `kensa` gem
* Publish - `http://addons.heroku.com/provider`
* Use - `heroku addons:add your-addon`

!SLIDE
# Step 1: Build it

!SLIDE bullets incremental
# The Cloud Service Contract

* provision
* deprovison
* plan change
* single sign on

!SLIDE bullets incremental
# `kensa`
## a TDD-style gem for Add-On providers

* init an addon
* push your addon manifest
* test a local version of your addon

!SLIDE code commandline incremental
# `kensa gem`

    $ kensa init
    Initialized new addon manifest in addon-manifest.json

    $ kensa test provision deprovision
    Loaded suite ProvisionTest
    ...

    $ kensa sso 1
    Opening http://localhost:4567/herok..

!SLIDE code commandline incremental
# `kensa init`

    $ kensa init
    Initialized new addon manifest in addon-manifest.json

!SLIDE 
# Addon Manifest
## json

    @@@ javascript
    {
      "id": "myaddon",
      "api": {
        "config_vars": 
          ["MYADDON_URL"],
        "sso_salt": "qjXanewFxksphxRo"
        ...
      }
    }

!SLIDE
#API Authentication

## HTTP Basic over HTTPS

!SLIDE 
#Provision

## `POST /heroku/resources`

!SLIDE 
#Provision Response

## `{id: 1, config: {MYADDON_URL: '...'}`

!SLIDE 
#Provision Response

* ID
* config params (URL)
* loaded in Heroku user config

!SLIDE center
#Provision
![provision1](how-provision1.png)

!SLIDE center
#Provision
![provision2](how-provision2.png)

!SLIDE center
#Provision
![provision3](how-provision3.png)

!SLIDE center
#Provision
![provision1](how-provision4.png)

!SLIDE code commandline incremental
# `kensa test provision`

    $ kensa test provision 
    Loaded suite ProvisionTest
    Started
    [  OK  ] all config url values are valid.
    [  OK  ] all config values are strings.
             .....
    [  OK  ] expects a valid json response.
    [  OK  ] provides app config.
    [  OK  ] working provision call.

    Finished in 0.086334 seconds.

    9 tests, 13 assertions, 0 failures, 0 errors
    loaded suite provisiontest

!SLIDE 
#Deprovision

## `DELETE heroku/resources/:id` 

!SLIDE commandline incremental
# `kensa test deprovision`

    $ kensa test deprovision 1
    Loaded suite DeprovisionTest
    Started
    [  OK  ] detects missing auth.
    [  OK  ] working deprovision call.

    Finished in 0.01207 seconds.

    2 tests, 4 assertions, 0 failures, 0 errors

!SLIDE 
#Plan Change

## guess...

!SLIDE transition=fade
#Plan Change

## `PUT /heroku/resources/:id`

!SLIDE commandline incremental 
# Plan Change

    $ kensa test planchange 1 basic
    Loaded suite PlanChangeTest
    Started
    [  OK  ] detects missing auth.
    [  OK  ] working plan change call.

    Finished in 0.015544 seconds.

    2 tests, 4 assertions, 0 failures, 0 errors

!SLIDE
#Single Sign On

## Y(our) Dashboard

!SLIDE center
#Single Sign On

![cloud_counter](sso1.png)

!SLIDE center
#Single Sign On

![cloud_counter](sso2.png)

!SLIDE center
#Single Sign On

![cloud_counter](sso4.png)

!SLIDE
#Single Sign On

## guess

!SLIDE transition=fade
# Single Sign On

## `GET /heroku/resources/:id`

!SLIDE bullets incremental 
# Single Sign On
### `GET /heroku/resources/:id`

* shared secret
* auth token
* id
* timestamp
* nav header

!SLIDE commandline=incremental
# `kensa test sso`

    $ kensa test sso 1
    Loaded suite SsoTest
    Started
    [ERROR!] creates the Heroku nav data cookie.
    [ERROR!] displays the Heroku layout.
    [ERROR!] logs in.
    [  OK  ] validates timestamp.
    [  OK  ] validates token.

    Finished in 0.093279 seconds.
    5 tests, 3 assertions, 0 failures, 3 errors

!SLIDE commandline=incremental
# `kensa sso 1`

    $ kensa sso 1
    Opening http://localhost:5000/heroku/resources/1?
      token=43603b6bad2798ef644b2df0669c4b816688ccd5&
      timestamp=1318810398&
      nav-data=oibXlhcHAiLCJhZ....GRvbnMi&
      user=username@example.com

!SLIDE commandline incremental
# `kensa create`

    $ gem install kensa --pre

    $ kensa create my_app --template sinatra

!SLIDE 
# Step 2: Publish It

!SLIDE bullets incremental
# The Provider Portal

* signup at Heroku
* `kensa push`


!SLIDE bullets incremental
# Stages of an Add-On

* Alpha
* Beta (Private and Public)
* GA (Generally Available)

!SLIDE
# Alpha

* Finish Documentation
* Upload Icons & Copy
* Invite alpha users

!SLIDE
# Beta

* First business contact
* Flesh out Billing Plans
* Open to Heroku Beta users

!SLIDE
# GA 

* Consumed by all Heroku users

!SLIDE
# Step 3: Profit

## This IS the App Store for Cloud Services

!SLIDE center
# Consuming an Add-On
![consuming1](how-consume1.png)

!SLIDE center
# Consuming an Add-On
![consuming2](how-consume2.png)

!SLIDE center
# Consuming an Add-On
![consuming3](how-consume3.png)


!SLIDE
# Step 1: Build it
# Step 2: Publish it 
# Step 3: Profit

!SLIDE transition=fade
# Thank You

<br/><br/>
### Also:
### Adam Wiggins, Glenn Gillen, Blake Mizerany, Pedro Belo, 
### Matt Thompson, Austin.rb

![Heroku](logo.png)

!SLIDE 
# Appendix A: SmartEnv

## Make ENV vars easier to use 
## (especially URLs)

!SLIDE
# Appendix A: SmartEnv

    @@@ ruby
    require 'smart_env'

    ENV.use(SmartEnv::UriProxy)

    ENV['SERVICE'] = 
    'http://user:pass@example.com:3000/'

!SLIDE
# Appendix A: SmartEnv

    @@@ ruby
    ENV['SERVICE'].base_uri  
      #=> 'http://example.com:3000'

    ENV['SERVICE'].user     
       #=> 'user'

    ENV['SERVICE'].password 
       #=> 'pass'
