import 'package:http/http.dart' as http;


void get() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    // make http get request
    var response = await http.get(url);
    // check the status code for the result  
    if (response.statusCode == 200) {
        print(response.body);
    } else {
        print('Request failed with status: ${response.statusCode}.');
    }
}

void post() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    // make http post request
    var response = await http.post(url, body: {'title': 'foo', 'body': 'bar', 'userId': '1'});
    // check the status code for the result  
    if (response.statusCode == 201) {
        print(response.body);
    } else {
        print('Request failed with status: ${response.statusCode}.');
    }  
}

void put() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    // make http put request
    var response = await http.put(url, body: {'title': 'foo', 'body': 'bar', 'userId': '1'});
    // check the status code for the result  
    if (response.statusCode == 200) {
        print(response.body);
    } else {
        print('Request failed with status: ${response.statusCode}.');
    }  
}

void patch() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    // make http patch request
    var response = await http.patch(url, body: {'title': 'foo'});
    // check the status code for the result  
    if (response.statusCode == 200) {
        print(response.body);
    } else {
        print('Request failed with status: ${response.statusCode}.');
    }
}

void delete() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    // make http delete request
    var response = await http.delete(url);
    // check the status code for the result  
    if (response.statusCode == 200) {
        print(response.body);
    } else {
        print('Request failed with status: ${response.statusCode}.');
    }
}

void main() {
    get();
    post();
    put();
    patch();
    delete();
}