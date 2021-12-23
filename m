Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C31E0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 05:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sISwynch0TXu7YdLDjpmTlHwpXtnyaxnq6xvF/D49nY=; b=vgVEXwCIXI968J
	CZmthEKfKDpTl1/Y/S+Kf5jtHZFVlb7THF0b/JsQIxc0WNFk6wHJ5sXS9aOP0kIrYIpdHfmKxJmb1
	5ViBqfnm1EQK7DUi9+XDHtc5tH1ZHcUqYZFQgH2ERPUCvPL51UFckFjUW9jbnmrMEAr3Q2TUhsTDh
	MrVirYnE1OFZPD6yOJJdOAhfkQvjn3zfs0b6aGvkK2KWaizh1BEqB0TBWPEuu2+veTFtjk1yiTvxF
	4smc1JUwG4DHoBB5xUi6v7LS9vN+ID3lt9HXN/Ph1sHfbFl0SuYMKIfg51aPgZvElSPEBOtlrqHVq
	fqNma6bll08pG1nDKlQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0GdD-00Bt3d-Rw; Thu, 23 Dec 2021 05:27:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0GdB-00Bt3C-01
 for linux-phy@lists.infradead.org; Thu, 23 Dec 2021 05:27:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E0D8C61DBD;
 Thu, 23 Dec 2021 05:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3948C36AE9;
 Thu, 23 Dec 2021 05:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640237227;
 bh=Sh6jpk/Rbr2ag37WBYje8V7bPWoR/w5w/sUmeauAzJw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jZow9MqGsJXa294P3rt+I2VYegmI+cNC1fSO2AgctovFOIj03x8vA6pLIcK61aR80
 wzbO+i2Q3HCCcH+uQZeyiyayqsh0TQq8eZUiYImk5jBGny/fjHodzdhv71Ll/GlnjV
 kgpVSfRlLA6bIbOMR4Ff98w8PZpDmlFrTgBs/e0O3wsdn9eeYtUZ8OAUxBq5TpaLkm
 MmEqkxpquCyVc9Ayz0v091tuZSGPfFGQ2qkmXW3R40xOqZoco4fsj1pi9AcpKcQthn
 ncldgfA0UaZ/FNC9/YWEVNg2e/TTswLMW1fDmKytvr6y79ISK6cZmgqCOsWSsM55WK
 lAluvfnkXpYLQ==
Date: Thu, 23 Dec 2021 10:57:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Li Chen <lchen@ambarella.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] Revert "phy: cadence-torrent: Do not configure SERDES if
 it's already configured"
Message-ID: <YcQIp3IJ0eki3hY2@matsya>
References: <CH2PR19MB4024BE31FB249744412071F6A0639@CH2PR19MB4024.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR19MB4024BE31FB249744412071F6A0639@CH2PR19MB4024.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_212709_164293_8D58F74C 
X-CRM114-Status: GOOD (  21.86  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26-11-21, 05:06, Li Chen wrote:
> This reverts commit
> b69d39f68419("phy: cadence-torrent: Do not configure SERDES if it's already configured")

space between commit id and open brace...

> 
> our soc will hang on any regmap field read before reset.

okay, in this case the right fix would be to keep track of reset in SW
and still skip reset if it is already configured?

> 
> Signed-off-by: Li Chen <lchen@ambarella.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 31 +++++++----------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 415ace64adc5c..e57e0b1523aff 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -2031,11 +2031,6 @@ static int cdns_torrent_noop_phy_on(struct phy *phy)
>  	return 0;
>  }
>  
> -static const struct phy_ops noop_ops = {
> -	.power_on	= cdns_torrent_noop_phy_on,
> -	.owner		= THIS_MODULE,
> -};
> -
>  static
>  int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  {
> @@ -2282,7 +2277,6 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  	struct device_node *child;
>  	int ret, subnodes, node = 0, i;
>  	u32 total_num_lanes = 0;
> -	int already_configured;
>  	u8 init_dp_regmap = 0;
>  	u32 phy_type;
>  
> @@ -2321,20 +2315,16 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1, &already_configured);
> -
> -	if (!already_configured) {
> -		ret = cdns_torrent_reset(cdns_phy);
> -		if (ret)
> -			goto clk_cleanup;
> +	ret = cdns_torrent_reset(cdns_phy);
> +	if (ret)
> +		goto clk_cleanup;
>  
> -		ret = cdns_torrent_clk(cdns_phy);
> -		if (ret)
> -			goto clk_cleanup;
> +	ret = cdns_torrent_clk(cdns_phy);
> +	if (ret)
> +		goto clk_cleanup;
>  
>  		/* Enable APB */
> -		reset_control_deassert(cdns_phy->apb_rst);
> -	}
> +	reset_control_deassert(cdns_phy->apb_rst);
>  
>  	for_each_available_child_of_node(dev->of_node, child) {
>  		struct phy *gphy;
> @@ -2404,10 +2394,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  		of_property_read_u32(child, "cdns,ssc-mode",
>  				     &cdns_phy->phys[node].ssc_mode);
>  
> -		if (!already_configured)
> -			gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
> -		else
> -			gphy = devm_phy_create(dev, child, &noop_ops);
> +		gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
>  		if (IS_ERR(gphy)) {
>  			ret = PTR_ERR(gphy);
>  			goto put_child;
> @@ -2490,7 +2477,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  		goto put_lnk_rst;
>  	}
>  
> -	if (cdns_phy->nsubnodes > 1 && !already_configured) {
> +	if (cdns_phy->nsubnodes > 1) {
>  		ret = cdns_torrent_phy_configure_multilink(cdns_phy);
>  		if (ret)
>  			goto put_lnk_rst;
> -- 
> 2.33.1
>  
> 
> **********************************************************************
> This email and attachments contain Ambarella Proprietary and/or Confidential Information and is intended solely for the use of the individual(s) to whom it is addressed. Any unauthorized review, use, disclosure, distribute, copy, or print is prohibited. If you are not an intended recipient, please contact the sender by reply email and destroy all copies of the original message. Thank you.

Aha!!!

Okay destroyed this now!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
