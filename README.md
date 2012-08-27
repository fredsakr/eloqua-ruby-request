eloqua-ruby-request
==================

Eloqua Ruby Request

## Usage

### GET
        require('eloqua-ruby-request')
        elqRequest = EloquaRequest.new('site', 'user', 'password')
        response = elqRequest.get('/assets/emails?search=Demand*&page=1&count=50&depth=minimal')
        
