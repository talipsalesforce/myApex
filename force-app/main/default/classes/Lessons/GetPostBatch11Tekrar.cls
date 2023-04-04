public  class GetPostBatch11Tekrar {
    public static void getTodos() {
        Http httpObject = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/todos');
        request.setMethod('GET');
        HttpResponse response = httpObject.send(request);
        String responseBody = response.getBody();
        
        if (response.getStatusCode()==200) {
            System.debug('get todos => ' + responseBody);
            
        }
    }

    public static void postTodos() {
        Http httpObject = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/todos');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'Application/json');
        request.setBody('{"userId": 4, "title": "post item", "completed": false}');

        HttpResponse response = httpObject.send(request);
        String responseBody = response.getBody();
        if (response.getStatusCode()==201) {
            System.debug('post data => ' + responseBody);
            System.debug('isleminiz basarili oldu...');
            
        }
    }
    
}