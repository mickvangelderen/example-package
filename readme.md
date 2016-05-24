[![Build Status](https://travis-ci.org/mickvangelderen/example-package.svg)](https://travis-ci.org/mickvangelderen/example-package)

# Installation

This package is written in ES2016 and has been built for multiple platforms. Pick the right version from the following list:

 * [example-package (ES5)](https://www.npmjs.com/package/@mickvangelderen/example-package)
 * [example-package-node4 (Node.js 4.x.x)](https://www.npmjs.com/package/@mickvangelderen/example-package-node4)
 * [example-package-node5 (Node.js 5.x.x)](https://www.npmjs.com/package/@mickvangelderen/example-package-node5)
 * [example-package-node6 (Node.js 6.x.x)](https://www.npmjs.com/package/@mickvangelderen/example-package-node6)

To install this package run:

```bash
npm install @mickvangelderen/example-package
```

# Discussion

Q: Compiling for Node X specifically is not worth it, code is not faster
A: Increased readability of stack traces is worth it to me already

Q: There is no convention for this.
A: Why don't we think of a good one and promote it?

Q: If not everyone follows the convention, it is useless?
A: At the start for *indirect* dependencies, yes. However not everyone needs to implement this at once. The method can be implemented package by package. 

Q: How do you determine the right version of a package?
A: Users manually install the right version. 

Q: What if "foo" depends on "bar" which depends on "baz" - how could "baz" provide something multiplatform?
A: foo-node4 <- bar-node4 <- baz-node4. If any one of the packages does not provide multiplatform builds, the chain breaks. For example if bar doesn't provide multiplatform builds, the tree will look like foo-node4 <- bar <- baz. 

Q: You making this choice forces me, the developer making a package that depends on yours, to either be sloppy (and screw people on different node versions) or to do the same work (which I don't want to do).
A: If a sloppy package becomes popular it can easily be fixed by replacing its depencency on my-package-node4 with my-package. I don't want to do the same work either. If we find an approach we are happy with we can automate most of the work and lower the cost on the developers' side. 

In summary:

 + Stacktraces will be better
 - Performance won't be significantly better
 - Indirect dependencies won't benefit
 - Developers need to provide multiple packages
 - Users need to select the right version
