use std::collections::HashMap;

trait table {
    fn insert(ins : String);
    fn set(key : String, field : String, val : String);
    fn delete(key : String);
    fn selectm(keys : Vec<String>) -> String;
    fn selects(key : String) -> String;
    fn matchf(field : String, matcher : String) -> String;
    fn get_key() -> i32;
}

trait model {
    fn rebuild(&mut self, filename : String);
    fn create(self, kv : String);
    fn get(field : String) -> String;
    fn set(&mut self, field : String, value : String);
    fn get_json() -> String;
}

struct user_model {
    username : String,

}

struct user_table {
    map : HashMap<i32, user_model>
}