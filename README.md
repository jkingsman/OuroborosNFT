Each NFT has its own simple generative SVG image and a small note at the bottom asking to open the image in a new tab to view the entire NFT

When you open image, it places the user's NFT up top, a "What is this" section, and a "connect wallet" CTA
    When you connect, you see a big MINT NOW cta, and a gallery of other users' NFTs


Needs:
    X Build graphic
    X NFT generation + storage
        X Random generation
        X Mint cost handling
    X Copyright notice
    X Make Payable for minting
    X Test payment!

    Build interactive page
        <g> together the circles
        Big one as background, desatt'd, then smaller one as centerpiece
        Use cdata to set the number so we can have access to it for titles
        Big "Please connect with metamask to view the marketplace, mint your own, and more!
    OPTIMIZE
    Add comments

    README tweaks
        Mention emphasis on size and perf
        Make list of things to change if you want to run your own
            Note that image and JSON SVG mime type are different
            Update URL + commission link in contract URI
            Make sure licensing is managed well





An entirely on-ethereum-chain self-contained NFT ecosystem. Each NFT is totally on-chain and has a self-contained minting and display interface where you can purchase your own NFT. No IPFS, no side chain storage -- just 100% ethereum-based goodness. Read more at https://github.com/jkingsman/OuroborosNFT.
