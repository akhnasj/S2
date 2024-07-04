# MARKDOWN

In Markdown, which is the format commonly used for README files, you can use various elements to structure and format your text. Here's an overview of some additional syntaxes beyond headers (#) that you can use to make your README more informative and visually appealing:

## 1. Emphasis
- **Bold** : To bold text, wrap it in two asterisks or underscores.
\*\*bold text** or \_\_bold text__ renders as __bold text__.

- *Italic* : To italicize text, wrap it in one asterisk or underscore.
\*italic text* or \_italic text_ renders as _italic text_.

## 2. Lists
- **Unordered list** : Use asterisks, plus signs, or hyphens interchangeably.

    - List item 1
    - List item 2
        - Nested item 2a
        - Nested item 2b

- **Ordered list** : Use numbers followed by a period.
    1. First item
    2. Second item
        1. Nested item 2a
        2. Nested item 2b

## 3. Links and Images
- **Links** : To create a link, wrap the link text in brackets and the URL in parentheses.

    \[OpenAI](https://www.openai.com) renders as [OpenAI](https://www.openai.com).

- **Images** : Similar to links, but start with an exclamation mark.

    \!\[Alt text](image_url) to embed an image.

## 4. Code
- **Inline code**: Wrap the code with backticks.

    \`\`inline code`` or \`inline code' renders as `inline code`.

- **Code blocks** : Use *triple backticks* or *indent with four spaces* for multi-line code blocks.

    \```
    language\
    code block\
    \```

    Renders as:
    ```language
    code block
    ```

    Specify the language for syntax highlighting (e.g., javascript, python).

## 5. Blockquotes
To create a blockquote, start a line with the > character.

\> This is a blockquote.

Renders as:
> This is a blockquote.

## 6. Horizontal Rules
To create a horizontal line (divider), use three or more hyphens, asterisks, or underscores on a new line.
---  or  ***  or  ___

## 7. Tables
Create tables by using hyphens for the header row and pipes | to separate columns. Align text using colons.

\| Header 1 | Header 2 | Header 3 |\
| --------|:--------:| --------:|\
| Cell 1   | Cell 2   | Cell 3   |\
| Cell 4   | Cell 5   | Cell 6   |

## 8. Task Lists
Create task lists by including brackets with a space or an x (for completed tasks).

\- [x] Completed task\
\- [ ] Incomplete task

## 9. Plain Text (Trigger no special Formatting)
In Markdown, if you want to include characters that are normally part of Markdown syntax (like #, *, _, etc.) and have them appear as plain text without triggering their special formatting functions, you can use backslashes `\` to escape these characters. \
This tells Markdown to treat them as regular characters and not part of its formatting syntax.

### Displaying Markdown Code Block
If you're showing examples of Markdown syntax itself or other code snippets, you might prefer using code blocks, which don't require escaping individual characters. Inline code blocks use a single backtick (`) around the text, and multiline code blocks use triple backticks (```) or indenting with four spaces.

**Inline code** : \``This is \*not* formatted\``  
Renders as: ``This is *not* formatted``

**Multiline code block** :
\```
This is a code block
So \*this* is not italic,
and \**this** is not bold.
\``` \
Renders as:
```
This is a code block
So *this* is not italic,
and **this** is not bold.
```

Renders without Markdown formatting.

## General Comment Markers
**INFO** : General information or explanations about the code.

**TODO** : Tasks or items that need to be completed.

**FIXME** : Parts of the code that are broken and need fixing.

**NOTE** : Important notes or caveats to be aware of.

**DEBUG** : 
Debugging statements or temporary code used for troubleshooting.

**HACK** : Workarounds or less-than-ideal solutions that need to be addressed later.

**WARNING** : Potential issues or risky parts of the code.

**OPTIMIZE** : Areas where the code can be improved for better performance or efficiency.