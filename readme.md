# About 
Simple express setup with dotenv, nodemon and cors. 

Customizable exposed APP_PORT via `.env` file.  

# Quick start guide 

## Prereq 
Node Runtime - This was tested & run using `node v18.2.0`. 

Run 
`npm install` 

Copy `.env.example` to `.env` and customize the variables, if needed. 

Run 
`npm run dev`

! Mind the `package.json` "dev" command for the port exposed for debugging. 
While `vscode` is smart enough to automatically detect the port and attach the debugger, JetBrains' "attach to node" debug configuration is not - so you will need to manually configure that.  