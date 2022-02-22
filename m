Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83D65C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 12:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCmjbfHFzBKG4XzH+yGwkgQ/eVRKNqa4kyuKos5E7gY=; b=s2PKMat+gHNLol
	e42goV3IvpUzn2VdPQ5RXqjd33Sc8yrhAWghRro/4WGBzsRPWS5q7IYpWRbG+wag8XNESzZEd84vJ
	6rHIpTWWQ0cleFbmk1x3/8UzAuNvwKXqNIFKehVMvzLZFjsenBeG5Mg2Ia98zACfZVSLSVavpPnNd
	O7trXz1n2L0sFeMrES0pcPSTWQJ+84bwEb2gjjeJ77bgbW/v6Qd2qAntssSRGCAM+YABHdTQiX20g
	6VMjPOtgefHFJSNKuI8hBXOVOH2WkQ282sfhCKn8OV3m4Qlk5R/bpd/Qy96DfEdC0Cy7Wela3DNmQ
	e8lQYlRcIxfLj9yhvWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMUiD-009bxE-UL; Tue, 22 Feb 2022 12:56:13 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMUiA-009bw7-JB
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 12:56:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 392ECB819B6;
 Tue, 22 Feb 2022 12:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2026AC340E8;
 Tue, 22 Feb 2022 12:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645534567;
 bh=oJ/w9DrjJ8UVUe7wYc1OQHhSMTw8H6h+UWV8CFaeNPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mxayw4Pqw5XPRdaAsVWmuRsbbbCslKZoiBb8FJ2oApvIJFv2jL35xShhlroFOEs2X
 JlyvhbEnkYlsVX1DVTiGtFmjmCtmTJQ0FN1S2fKvb09j99a+mieAjG3KL/gQvyhotn
 UbUbnPE3id7GMKPRIZ2pkuQ08QRucvGUXiSjl1GkmigHeQWN3WewzT+QirTa7Sejdg
 QT+NdZnzL650m9fIShnU8GmzP2rh0op5qBZEePzwT2BM1Bc5/+cBsVxLPT+4r5Oxu4
 HJtrX21OVDYaNvGZxHj9rwx9A+7MWi0FQENZ0eS+xELs9GA+8BVMtHPaqHYRMzoKVY
 uRe3dZbIto9uQ==
Date: Tue, 22 Feb 2022 18:26:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, mparab@cadence.com,
 a-govindraju@ti.com, r-ravikumar@ti.com
Subject: Re: [PATCH 1/4] phy: cadence-torrent: Add function to get PLL to be
 configured for DP
Message-ID: <YhTdY+UfIEtvDBK+@matsya>
References: <20220127142958.23465-1-sjakhade@cadence.com>
 <20220127142958.23465-2-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127142958.23465-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_045610_952547_CFC0275A 
X-CRM114-Status: GOOD (  22.32  )
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

On 27-01-22, 15:29, Swapnil Jakhade wrote:
> Torrent PHY PLL0 or PLL1 is used for DP depending on the single link or
> multilink protocol configuration for which PHY is configured. In multilink
> configurations with other protocols, either PLL0 or PLL1 will be used
> for DP. For single link DP, both PLLs need to be configured at POR.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 30 +++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 7c4b8050485f..0e2839a6c65d 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -38,6 +38,9 @@
>  #define POLL_TIMEOUT_US		5000
>  #define PLL_LOCK_TIMEOUT	100000
>  
> +#define DP_PLL0			BIT(0)
> +#define DP_PLL1			BIT(1)
> +
>  #define TORRENT_COMMON_CDB_OFFSET	0x0
>  
>  #define TORRENT_TX_LANE_CDB_OFFSET(ln, block_offset, reg_offset)	\
> @@ -323,6 +326,7 @@ struct cdns_torrent_phy {
>  	void __iomem *base;	/* DPTX registers base */
>  	void __iomem *sd_base; /* SD0801 registers base */
>  	u32 max_bit_rate; /* Maximum link bit rate to use (in Mbps) */
> +	u32 dp_pll;
>  	struct reset_control *phy_rst;
>  	struct reset_control *apb_rst;
>  	struct device *dev;
> @@ -978,6 +982,30 @@ void cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(struct cdns_torrent_phy *cdns_phy,
>  	}
>  }
>  
> +/* Set PLL used for DP configuration */
> +static int cdns_torrent_dp_get_pll(struct cdns_torrent_phy *cdns_phy,
> +				   enum cdns_torrent_phy_type phy_t2)

why return an error if you are going to ignore it!

> +{
> +	switch (phy_t2) {
> +	case TYPE_PCIE:
> +	case TYPE_USB:
> +		cdns_phy->dp_pll = DP_PLL1;
> +		break;
> +	case TYPE_SGMII:
> +	case TYPE_QSGMII:
> +		cdns_phy->dp_pll = DP_PLL0;
> +		break;
> +	case TYPE_NONE:
> +		cdns_phy->dp_pll = DP_PLL0 | DP_PLL1;
> +		break;
> +	default:
> +		dev_err(cdns_phy->dev, "Unsupported PHY configuration\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /*
>   * Enable or disable PLL for selected lanes.
>   */
> @@ -1640,6 +1668,8 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  		return -EINVAL;
>  	}
>  
> +	cdns_torrent_dp_get_pll(cdns_phy, TYPE_NONE);
> +
>  	cdns_torrent_dp_common_init(cdns_phy, inst);
>  
>  	return cdns_torrent_dp_start(cdns_phy, inst, phy);
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
