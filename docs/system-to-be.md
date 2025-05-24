## System-to-be

The system to be supposes the final high level architecture of the system.

```mermaid

flowchart LR
    web["Web Client"]
    mbl["Mobile Client"]
    ftr["Future Use Cases"]
    nx["Dram Client Backend"]
    oa["Oauth Provider"]
    bg["Gateway"]
    bo["Orchestrator "]
    ts["AVAX Service"]
    bl["AVAX"];
    ps["Database Service"]
    mg["Mongo DB"]
    s3s["File Storage Service"];
    em["Email Service"]
    ems["Email Server"]
    s3["S3"];
    gh["Graph DB"]
    or["Price Oracle"]
    bl --> or
    bl --> gh
    ts --> gh
    web --> nx
    mbl --> nx
    ftr --> bg
    nx --> bg
    oa --> bg
    bg --> bo
    bo --> ps
    ps --> mg
    bo --> ts
    ts --> bl
    bo --> s3s
    s3s --> s3
    bo --> em
    em --> ems
```

### Components

- Web Client running in the user web browser
- Mobile Client running in the web browser on a phone
- Client Back End responsible for providing the client to the user
- Public Gateway responsible for authenticating the backend and routing requests
- Orchestrator responsible for coordinating transactions
- Database Service responsible for data persistence and maintenance
- File Storage service responsible for writing and maintaining files to a cloud file system
- Email service responsible to sending emails to users
- AVAX service responsible for maintaining NFT and Sale smart contracts
- Graph DB responsible for taking snapshots of the contract state, reducing I/O with AVAX