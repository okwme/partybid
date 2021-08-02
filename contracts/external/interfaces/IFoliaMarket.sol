pragma solidity 0.8.5;

interface IFoliaMarket {

    function minBid() external view returns(uint256);
    function nftAddress() external view returns(address);
    function auctions(uint256 tokenId) external view returns(Auction memory);

    struct Auction {
        bool exists;
        bool paused;
        uint256 amount;
        uint256 tokenId;
        uint256 duration;
        uint256 firstBidTime;
        uint256 reservePrice;
        uint256 adminSplit; // percentage of 100
        address creator;
        address payable proceedsRecipient;
        address payable bidder;
    }
    function createBid(uint256 tokenId) external payable;
    function endAuction(uint256 tokenId) external;
}
