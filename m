Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A5AC433B4
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:13:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34F41611AE
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:13:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34F41611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOS+y01/Og/6MdvbYsIVOAEuNnIWL5+XnhBPHJJ8aEI=; b=osuLNZ/41h344X8e+bGYdheDa
	Sv7Ms5dHSNFV0Pm9Y6uuUHHA4SfzQuqouxcpcMB0ALy8sRlQLUWspN1SsMpEpJ9eS350p5QUqKICK
	6qLKOodBdWhkQ+3eDiqeBawNiNe8nVeG/waCWmpew4+hIr/adblpTKrBPgJjboVF+acbU8dRt4KjI
	0h/li+XUaY0h1Y4NZXGoszfalB81fr4u7ibMh0qZJ6YO1FZRtDILHgAVXpJkWAHLeOnM7GbxHh4AK
	DCHe4QBNSEvMSYFQ7dICZp1oNyD5aX5BaWg89mZMR74PUY+dNg1Z5RRmiiFMX3Enk54NImWiVf1G5
	8pN7uZVNg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh5Wv-004yfA-BP; Thu, 13 May 2021 07:13:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh5Wt-004yen-4K
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 07:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=8Emt8yaug9sAwfbGHDn+bykKf7UdgXDvn5LNTYk4u0s=; b=KJN4hzrSmSipelvlVnpA7ESrMr
 04imQvFrD6Xmyb134qDHu5/WvuFgNt7hfopc/z15zbZK12aLn5liZQbZYM+n2kH8+SgFNwmBQ+Lpp
 VXYFW08aagaoJ0whrchRP7AwJNAiER3DSINeKUlW9gvAkj6aPDqbHUzkflrbczshHSvrSMxi9VLaR
 fw46OJAlRTRcfEFjx+sy0bNQdlQbF/CqfBrcuiNo3SYdS7dGXM+Bgav+5v7mrNibJ6aYCEemDrkDq
 39q5/OmMOXBOl07QLs/wM/YIsFiiF27ljrm38P7C2A2WOjP94EUz9u9bPzuDrN9CJZpu2AsUDJvvT
 0nNfp4Eg==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh5Wq-00B4LZ-ED
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 07:13:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D7D16h104495;
 Thu, 13 May 2021 02:13:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620889981;
 bh=8Emt8yaug9sAwfbGHDn+bykKf7UdgXDvn5LNTYk4u0s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YkG9Xwu8I6V0rTb+5trfVZCZW2vmh4af0PUi5A6e0gPw3FKTNyLbL80kwi64IWFkQ
 IwbOs9YK/8AyEI0eNCrhp4iN8I67ke/7HezJUFd1vYmyICC3M2/FiNFGffv4/CCGZX
 falugY4VqN84mB86nrQhDCF8STRwGIvhizb4vRhY=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D7D15K073394
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 02:13:01 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 02:13:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 02:13:01 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D7CuxJ098766;
 Thu, 13 May 2021 02:12:57 -0500
Subject: Re: [PATCH 10/14] phy: cadence-torrent: Add function to get PLL to be
 configured for DP
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-11-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <b5e1cf48-7a19-4f5e-8530-e28e98a16e6a@ti.com>
Date: Thu, 13 May 2021 12:42:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-11-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_001304_597204_C9CBD9CC 
X-CRM114-Status: GOOD (  21.28  )
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

Hi Swapnil,

On 09/04/21 11:04 am, Swapnil Jakhade wrote:
> Torrent PHY PLL0 or PLL1 is used for DP depending on the single link or
> multilink protocol configuration for which PHY is configured. In multilink
> configurations with other protocols, either PLL0 or PLL1 will be used
> for DP. For single link DP, both PLLs need to be configured at POR.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 32 +++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index e4dd8d1711a6..44e28ea8ffa7 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -288,6 +288,11 @@ enum cdns_torrent_ssc_mode {
>  	INTERNAL_SSC
>  };
>  
> +enum cdns_torrent_dp_pll {
> +	DP_PLL0 = 0x1,
> +	DP_PLL1 = 0x2

Using BIT() macro might be better since you are using this as bitfield.
> +};
> +
>  struct cdns_torrent_inst {
>  	struct phy *phy;
>  	u32 mlane;
> @@ -301,6 +306,7 @@ struct cdns_torrent_phy {
>  	void __iomem *base;	/* DPTX registers base */
>  	void __iomem *sd_base; /* SD0801 registers base */
>  	u32 max_bit_rate; /* Maximum link bit rate to use (in Mbps) */
> +	u32 dp_pll;

enum cdns_torrent_dp_pll?

Thanks
Kishon

>  	struct reset_control *phy_rst;
>  	struct reset_control *apb_rst;
>  	struct device *dev;
> @@ -900,6 +906,30 @@ void cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(struct cdns_torrent_phy *cdns_phy,
>  	}
>  }
>  
> +/* Set PLL used for DP configuration */
> +static int cdns_torrent_dp_get_pll(struct cdns_torrent_phy *cdns_phy,
> +				   enum cdns_torrent_phy_type phy_t2)
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
> @@ -1554,6 +1584,8 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  		return -EINVAL;
>  	}
>  
> +	cdns_torrent_dp_get_pll(cdns_phy, TYPE_NONE);
> +
>  	cdns_torrent_dp_common_init(cdns_phy, inst);
>  
>  	return cdns_torrent_dp_start(cdns_phy, inst, phy);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
