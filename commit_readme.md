# zshrc-config
My zsh configiguration. 

Commit Type Functions
The commit type functions provide a convenient way to create commit messages with specific prefixes, indicating the type of changes being made. These functions automate the process of adding the current date and time along with the provided quick message to form the commit message.

## Function List

#### fcom(type): For commits related to frontend changes.
#### bcom(type): For commits related to backend changes.
#### dcom: For commits related to documentation changes.

Usage
To use these commit type functions, follow the syntax:

<commit-type-function"(<type>)">  "<quick-message>."
Replace <commit-type-function> with the desired function name from the list above, and <quick-message> with a brief description of the changes being made. And  type with commit t


``` fcommit "styles" "Updated UI styling "``` 

In this example, the fcommit function is used to create a commit message for frontend changes.
The resulting commit message will have the prefix "frontend:" followed by the current date and time, example below.

"frontend(styles):  "Updated UI".

Customization
Feel free to modify the commit type prefixes, function names, or add more commit type functions to suit your project's needs. You can adjust the existing functions or create new ones based on different commit types relevant to your workflow.
