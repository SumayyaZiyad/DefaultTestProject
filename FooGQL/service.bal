import ballerina/graphql;

@display {
	label: "FooGQL",
	id: "FooGQL-f243d71b-be39-4273-9108-a6d0fc46b22b"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
