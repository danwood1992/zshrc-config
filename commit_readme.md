# zshrc-config
My zsh configiguration. 

Commit Type Functions
The commit type functions provide a convenient way to create commit messages with specific prefixes, indicating the type of changes being made. These functions automate the process of adding the current date and time along with the provided quick message to form the commit message.

## Function List

#### fcommit: For commits related to frontend changes.
#### bcommit: For commits related to backend changes.
#### rcommit: For commits related to refactoring. 
#### dcommit: For commits related to documentation changes.
#### tcommit: For commits related to test changes or additions.
#### hcommit: For commits related to hotfixes or critical bug fixes.
#### rmcommit: For commits related to file deletions.

Usage
To use these commit type functions, follow the syntax:

<commit-type-function> "<quick-message>"
Replace <commit-type-function> with the desired function name from the list above, and <quick-message> with a brief description of the changes being made.


``` fcommit "Updated UI styling "``` 

In this example, the fcommit function is used to create a commit message for frontend changes.
The resulting commit message will have the prefix "Frontend:" followed by the current date and time, example below.

"Frontend: 2023-05-13 15:30:45 Updated UI styling".

Customization
Feel free to modify the commit type prefixes, function names, or add more commit type functions to suit your project's needs. You can adjust the existing functions or create new ones based on different commit types relevant to your workflow.
