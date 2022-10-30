import { readFileSync, writeFileSync } from 'fs';
import { setFlagsFromString } from 'node:v8';
import { XMLHttpRequest } from 'xmlhttprequest';
import { DOMParser } from '@xmldom/xmldom';
import { createHash } from 'node:crypto';

function generate_random_seed() {
    console.log("Generating random seed...");

    // get the current weather in Québec City from Weather Canada
    var url = "https://weather.gc.ca/rss/city/qc-133_e.xml";
    var request = new XMLHttpRequest();
    request.open("GET", url, false);
    request.send(null);
    var response = request.responseText;

    // parse the XML response
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(response, "text/xml");

    // get the current weather conditions
    var conditions = xmlDoc.getElementsByTagName("summary")[1].childNodes[0].nodeValue;

    var temperature = conditions.match(/(?<=<b>Temperature:<\/b> ).*(?=&deg;C <br\/>)/gm)[0];
    var pressure = conditions.match(/(?<=<b>Pressure \/ Tendency:<\/b> ).*(?= kPa .*<br\/>)/gm)[0];
    var visibility = conditions.match(/(?<=<b>Visibility:<\/b> ).*(?= km<br\/>)/gm)[0];
    var humidity = conditions.match(/(?<=<b>Humidity:<\/b> ).*(?= %<br\/>)/gm)[0];
    var dewpoint = conditions.match(/(?<=<b>Dewpoint:<\/b> ).*(?=&deg;C <br\/>)/gm)[0];
    var wind = conditions.match(/(?<=<b>Wind:<\/b> .{2} ).*(?= km\/h<br\/>)/gm)[0];

    // convert the weather conditions to floats
    temperature = parseFloat(temperature);
    pressure = parseFloat(pressure);
    visibility = parseFloat(visibility);
    humidity = parseFloat(humidity);
    dewpoint = parseFloat(dewpoint);
    wind = parseFloat(wind);

    // multiply all weather conditions together
    var seed = temperature * pressure * visibility * humidity * dewpoint * wind;

    // hash the seed with SHA-256 1 000 000 times to prevent brute force attacks on the weather conditions
    for (var i = 0; i < 1000000; i++) {
        seed = createHash('sha256').update(seed.toString()).digest('hex');
    }

    console.log("Random seed: " + seed);

    // set the random seed
    setFlagsFromString(`--random_seed=${seed}`);
    
    return;
}

function encrypt(message) {
    console.log("Encrypting message...");

    // Generate random seed
    generate_random_seed();

    var encrypted = "";

    // for every 20 characters in the message
    for (var i = 0; i < message.length; i += 20) {
        var block = "";

        // generate a 20 character key
        // example: 0.123456789012345678 becomes 12345678901234567800
        var key = Math.random().toString().substring(2).padEnd(20, '0');

        // handle the last block
        if (i + 20 > message.length) {
            block = message.substring(i);
        } 
        // handle the rest of the blocks
        else {
            block = message.substring(i, i + 20);
        }
        
        // XOR the block with the key
        for (var j = 0; j < block.length; j++) {
            encrypted += String.fromCharCode(block.charCodeAt(j) ^ key.charCodeAt(j));
        }
    }

    // convert the encrypted message to base64
    encrypted = Buffer.from(encrypted).toString('base64');

    return encrypted;
}

// read the message from message.txt
var message = readFileSync("message.txt", "utf8");

// encrypt the message
var encrypted = encrypt(message);

// write the encrypted message to encrypted.txt
writeFileSync("encrypted.txt", encrypted);

// print the message and encrypted message
console.log("Message: " + message);
console.log("Encrypted message: " + encrypted);
