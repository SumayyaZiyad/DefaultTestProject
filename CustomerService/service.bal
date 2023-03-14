import ballerina/graphql;

type Customer record {|
    string id;
    record {
        string firstName;
        string lastName;
    } name;
    int age;
|};

@display {
	label: "CustomerService",
	id: "CustomerService-28df60fa-b9c9-49ad-b7fa-6c0ae6b8f728"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
