console.log("Hello, world!");

//start cmd /k "npm start"
const fs = require('fs');
const { exec } = require('child_process');

// Change the current working directory to "xyz"
directoryPath = 'C:\\FxM\\Dev\\Ng\\townpon'; //'C:\FxM\DevJava\dev\spring-boot-angul\ar6-maven-project\spring-boot-angular6-maven-project\tutorial-web\src\main\web';
const npmStart = "npm start";
npmBuild = 'npm run build';
const path = require('path');
// Change the current working directory to "xyz"
process.chdir(directoryPath);

// Execute the command in a new shell window

//exec('start cmd /k "npm start"', (error, stdout, stderr) => {
// exec(`start cmd /k ${npmBuild}`, (error, stdout, stderr) => {
//   if (error) {
//     console.error(`Command execution error: ${error}`);
//   } else {
//     console.log(`Command output:\n${stdout}`);
//     console.error(`Command error output:\n${stderr}`);
//   }
// });
// console.log('\n 1111111111111111111111');

// Start the command and forget about it
// exec(`start cmd /k ${npmBuild}`, { detached: true });

// // Start the command without detaching
// //exec(`start cmd /c ${npmBuild}`);

// console.log('\n 11111111111111111');

// directoryPath = 'C:\\FxM\\Dev\\Ng\\myapp22'; //'C:\FxM\DevJava\dev\spring-boot-angul\ar6-maven-project\spring-boot-angular6-maven-project\tutorial-web\src\main\web';
// process.chdir(directoryPath);
// //exec(`start cmd /c ${npmBuild}`);
// exec(`start cmd /k ${npmBuild} && timeout /t 10`, { detached: true });
// console.log('\n 22222222222222222');



// Function to open a Command Prompt window with a delay
const openWindowWithDelay = (command, delay) => {
  setTimeout(() => {
    exec(`start cmd.exe /k ${command}`);
  }, delay);
};

// Open Command Prompt windows sequentially with delays
openWindowWithDelay('echo Window 1', 0);
openWindowWithDelay('echo Window 2', 10000);
openWindowWithDelay('echo Window 3', 20000);