# Feature List for 1.0.0.0

For clarity 1.0.0.0 represents full stability of all key features integral to this project.

## Goals

A decentralized, out of git tree secrets manager focused on security, stability, first class interoperability support. Transference goal is to focus on secure memory to memory secret transfer for approved applications via tpm or yubikey.

## Feature list
### General Features
- [ ] DNS for network discovery of servers and clients(Use [Speculator DNS](https://github.com/specCon18/Speculator-DNS/))
- [ ] ZERO external dependencies
### Generation
- [ ] Software Based Secret Generation(use A 100k word list to generate a 12 word pass-phrase that is passed through [PBKDF2](https://github.com/RustCrypto/password-hashes/tree/master/pbkdf2)-[HMAC](https://github.com/RustCrypto/MACs/tree/master/hmac)-[SHA256](https://github.com/RustCrypto/hashes/tree/master/sha2) with 600,000 passes wrapped in [balloon_hash](https://github.com/RustCrypto/password-hashes/tree/master/balloon-hash) making the returned value time and space hard)
- [ ] Secret Lifetimes with autoroll option
- [ ] Secret templating engine

### Automated ERP
- [ ] Active Tamper Detection Alert Emergency Response Protocol (logging, notification, policy enforcement)
- [ ] Leaked Secrets Alert Emergency Response Protocol (If a secret is leaked have the ability to run a command flow to roll it and notify)

### A2(Authentication & Autorization)
- [ ] LDAP
- [ ] TPM and yubikey support
- [ ] Blockchain ACL enforcement
        
### Interfaces
- [ ] Interactability via CLI(Use GO), TUI(Use GO)
- [ ] SDK Provides AppID
- [ ] API shim for aplications that dont have first party support for Transference[See SOPS process env](https://github.com/getsops/sops?tab=readme-ov-file#219passing-secrets-to-other-processes)

## EE Features
### General Features
- [ ] Windows Support

### A2(Authentication & Autorization)
- [ ] SAML, Oauth, SSO, AD/DS

### Hardware
- [ ] Embedded Secret Generator hardware(Source avilable upon purchase with contract)
- [ ] Embedded Secret source of truth hardware(Source avilable upon purchase with contract)

### Automated ERP
- [ ] Secrecy Violation Detection to detect unencypted secrets in source code and on disk

### Interfaces
- [ ] Multi-user authenticated secret generation and deletion
- [ ] Interactability via WebUI using WebAssembly
