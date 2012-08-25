eloqua-ruby-request
==================

Eloqua Ruby Request

## Usage

### GET
        require('eloqua-ruby-request')
        eloquaRequest = EloquaRequest.new('site', 'user', 'password')
        $response = eloquaRequest.get('/assets/emails?search=Demand*&page=1&count=50&depth=minimal')
        
