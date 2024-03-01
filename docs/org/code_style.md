# Our style

## Style Essence
The essence of our style is to not waste the valuable time of developers. More so it is to bolster and enhance the developers experience. In addition it is important to understand that even the best of developers are falable. This style's objective is to prevent those natural faults from reaching production.

## Strive for Elegance
- elegent = simple
- For software, “simple” means easy to read, understand, and correctly modify.
- Prioritize functional methodology over OOP when possible

## Technical debt

Technical debt is a sneaky and devious demon. It always strikes at the worst of times. To avoid this seaming inevitability it is important to assume debt can be cashed at any looming moment. Our style will take no technical debt as it will acrue to something that could never be paid.

## Safety
- **Fail first fail fast:** It is much better to have something fail in the developers hands than in production. 
- Declare variables at the smallest possible scope, and minimize the number of variables in scope, to reduce the probability that variables are misused.
    - in the case of rust shadowing is the approriate method to keep variable count low and still mutable
- Restrict the length of function bodies to reduce the probability of poorly structured code. We enforce a hard limit of 70 lines per function and a soft limit of 40 lines per function.
    - From soft limit Up to the hard limit meaning acceptable with justification
    - Soft limit is standard for PR
- Else if statements are not allowed, if such a situation arises suplement with a match statement.
- All errors must be handled. An analysis of production failures in distributed data-intensive systems found that the majority of catastrophic failures could have been prevented by simple testing of error handling code. [usenix.org](https://www.usenix.org/system/files/conference/osdi14/osdi14-paper-yuan.pdf)
- Appreciate, from day one, all compiler warnings at the compiler's strictest setting.
- It is not good enough to explain what the code does but one must justify why it exists.
- No unsafe code is to be used this also means no macros or ffi.
- All types and returns should be explicitly defined avoid relying on type assertion
- Mitigate off by one errors with assertions.

## Performance
- Comment complexity in Big O notation for each function.
- Minimize calls when possible.
- User const when possible (fn, variables, impl, etc).
- functions should be [pure](https://en.wikipedia.org/wiki/Pure_function)

## Developer experience
### Style
- Use snake_case for function, variable, and file names. The underscore is the closest thing we have as programmers to a space, and helps to separate words and encourage descriptive names. Keep the convention simple and consistent.
- Names of things should be a verb noun phrase and should not be context dependent.
- For the rest, follow the Rust style guide.
- Comments are sentences, with a space after the slash, with a capital letter and a full stop, or a colon if they relate to something that follows. Comments are well-written prose describing the code, not just scribblings in the margin. Comments after the end of a line can be phrases, with no punctuation.
- Hard limit all line lengths, without exception, to at most 100 columns for a good typographic "measure". 
- tabs are 4 spaces
 
### Version Control
- No small commit messages
- Use [semantic versioning](https://semver.org/)
- Use feature branches and collapse before merging on development
- Please attempt to follow commit standards within feature branches, when merging with the mainline development branch commit standards are enforced and non negotiable

## Dependencies
Our style has a "zero dependencies” policy in production, apart from the rust and nix toolchain. Dependencies, in general, inevitably lead to supply chain attacks, safety and performance risk, and slow install times. For foundational infrastructure in particular, the cost of any dependency is further amplified throughout the rest of the stack.

## Tooling

Similarly, tools have costs. A small standardized toolbox is simpler to operate than an array of specialized instruments each with a dedicated manual. Our primary tool is Rust followed by Nix. It may not be the best for everything, but it's good enough for most  things. We invest into our Rust and Nix tooling to ensure that we can tackle new problems quickly, with a minimum of accidental complexity in our local development environment.

    “The right tool for the job is often the tool you are already using—adding new tools has a higher cost than many people appreciate” — John Carmack

For example, the next time you write a script, instead of scripts/*.sh, write scripts/*.rs.

This not only makes your script cross-platform and portable, but introduces type safety and increases the probability that running your script will succeed for everyone on the team, instead of hitting a Bash/Shell/OS-specific issue.

Standardizing on Rust and Nix for tooling is important to ensure that we reduce dimensionality, as the team, and therefore the range of personal tastes, grows. This may be slower for you in the short term, but makes for more velocity for the team in the long term.

## Closing
These restrictions are not put in place to slow your development of new features, on the contrary they are in place to make managing the same features easier in the future.