use clap::{App, Arg};
use colored::*;
use serde::Deserialize;
use serde_xml_rs::from_reader;
use std::fs::File;
use std::process::Command;

#[derive(Debug, Deserialize)]
struct Tools {
    tool: Vec<String>,
}

fn main() {
    let matches = App::new("Tool Checker")
        .version("1.0")
        .author("Your Name <email@example.com>")
        .about("Checks if specific tools exist on the system based on an XML file")
        .arg(
            Arg::with_name("check")
                .long("check")
                .takes_value(false)
                .help("Checks the tools listed in the tools.xml file"),
        )
        .get_matches();

    if matches.is_present("check") {
        let file = File::open("config.xml").expect("Failed to open XML file");
        let tools: Tools = from_reader(file).expect("Failed to parse XML");

        for tool in tools.tool {
            check_if_tool_exists(&tool);
        }
    } else {
        println!("Usage: tool_checker --check");
        println!("Provide the --check flag to verify the existence of tools listed in tools.xml.");
    }
}

fn check_if_tool_exists(tool_name: &str) {
    let output = Command::new("which")
        .arg(tool_name)
        .output()
        .expect("Failed to execute command");

    if output.status.success() {
        println!("{} ==> {}", tool_name, "OK".green());
    } else {
        println!("{} ==> {}", tool_name, "KO".red());
    }
}
