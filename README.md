eloqua-ruby-request
==================

Eloqua Ruby Request

## Usage

### GET
        require('eloqua-ruby-request')
        request = EloquaRequest.new('site', 'user', 'password')
        response = request.get('/assets/emails?search=Demand*&page=1&count=50&depth=minimal')

### POST
        require('eloqua-ruby-request')
        request = EloquaRequest.new('site', 'user', 'password')
	data = ...
        response = request.post('/assets/email', data)

### PUT
        require('eloqua-ruby-request')
        request = EloquaRequest.new('site', 'user', 'password')
        response = request.put('/assets/email/123', data)

### DELETE
        require('eloqua-ruby-request')
        request = EloquaRequest.new('site', 'user', 'password')
        response = request.delete('/assets/email/123')
        
