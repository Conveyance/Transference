# Feature List for 1.0.0.0

For clarity 1.0.0.0 represents full stability of all key features integral to this project.

## Goals

A decentralized, out of git tree secrets manager focused on security, stability, first class interoperability support. Transference goal is to focus on secure memory to memory secret transfer for approved applications via tpm or yubikey.

## Feature list

- [ ] Quick rolling of secrets if machine is compromised have a one click solution to roll the compromised secrets
- [ ] TPM and yubikey support
- [ ] Blockchain ACL enforcement
- [ ] DNS for network discovery of mesh network
- [ ] Interactability via CLI, TUI
- [ ] Zero external dependencies
- [ ] Active tamper detection ERP (logging, notification, policy enforcement)
- [ ] SDK Provides AppID
- [ ] LDAP
- [ ] Secret Lifetimes with autoroll option
- [ ] software based secret generation
- [ ] Zero knowledge provisioning
- [ ] Secret templating engine
- [ ] ERP Runbook Support
- [ ] Environment variable injection
- [ ] API shim for aplications that dont have first party support for Transference[See SOPS process env](https://github.com/getsops/sops?tab=readme-ov-file#219passing-secrets-to-other-processes)

## EE Features
- [ ] Windows Support
- [ ] SAML, Oauth, SSO, AD/DS
- [ ] Interactability via WebUI using WebAssembly
- [ ] Embedded Secret Generator hardware(Source avilable upon purchase with contract)
- [ ] Embedded Secret source of truth hardware(Source avilable upon purchase with contract)
- [ ] Secrecy Violation Detection to detect unencypted secrets in source code and on disk
- [ ] Multi-user authenticated secret generation and deletion
